package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.services.OrderListService;
import cn.sendto.hotel.util.PageUtil;
import cn.sendto.hotel.view.OrderUserModel;

@WebServlet("/ShowOrderServlet")
public class ShowOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取数据
		String str = request.getParameter("str");
		String id = request.getParameter("id");
		String staste = request.getParameter("staste");
		String roomId = request.getParameter("roomId");
		String liveDate = request.getParameter("liveDate");
		
		//创建一个订单业务对象
		OrderListService olService = new OrderListService();
		if("abc".equals(str)){
			try {
				OrderUserModel oum = olService.findAllOrderUser(Integer.parseInt(id));
				if(oum != null){
					request.setAttribute("items", oum);
					request.getRequestDispatcher("showOrderDetai.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return;
		}
		
		// 初始化回显实体类对象
		OrderListModel olm = new OrderListModel();
		
		String where = "true";
		String queryStr = "";
		
		if (staste != null && staste.length() > 0) {
			olm.setStaste(Integer.parseInt(staste));
			where +=  " and staste='" + staste + "'";
			
		}

		if (liveDate != null && liveDate.length() > 0) {
			olm.setLiveDate(liveDate);
			where +=  " and liveDate='" + liveDate + "'";
			
		}
		if (roomId != null && roomId.length() > 0) {
			olm.setRoomid(roomId);
			where +=  " and c.roomid='" + roomId + "'";
			
		}
	
		
		// 将条件回显信息放到请求范围内
		request.setAttribute("info", olm);
		
		// 定义分页对象
		PageUtil<OrderListModel> page = new PageUtil<>();
		
		// 封装查询条件(将用户选择的条件拼接成SQL语句作为参数传到DAO的实现中作为查询条件)
		page.setWhere(where);
		
		try {
			
			// 获取总记录数
			if ("true".equals(page.getWhere())) {
				// 不带条件查找总记录条数
				page.setRecordCount(olService.findAllOrderListCount());
			} else {
				// 根据条件获取总记录数
				page.setRecordCount(olService.findAllOrderListCount(page.getWhere()));
			}
			
			// 获取当前页码
			String sPageIndex = request.getParameter("pageIndex");
			if (sPageIndex != null && sPageIndex.length() > 0) {
				page.setPageIndex(Integer.parseInt(sPageIndex));
			}
			
			// 验证页码是否越界
			if (page.getPageIndex() <= 0) {
				page.setPageIndex(1);
			}
			if (page.getPageIndex() > page.getPageCount()) {
				page.setPageIndex(page.getPageCount());
			}
			
			// 获取当前页数据
			List<OrderListModel> list = olService.findAllOrderList1(page.getPageIndex(), page.getPageSize(), page.getWhere());
			//System.out.println(list.get(1).getId()+"()()()()");
			if (list == null && list.size() <= 0) {
				throw new RuntimeException("带条件的分页订单信息查询失败！");
				//TODO 跳转到错误页面
			}
			
			page.setList(list);
		
			// 设置分页信息（设置pageNums数组，和前缀，后缀）
			page.setPageNums(5);
			
			page.setWhere(queryStr);
			
			// 将分页信息保存到请求范围中
			request.setAttribute("items", page);
			request.getRequestDispatcher("showOrders.jsp").forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
