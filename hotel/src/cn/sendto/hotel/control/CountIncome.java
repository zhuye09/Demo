package cn.sendto.hotel.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.CountIncomeVO;
import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.OrderListService;
import cn.sendto.hotel.services.RoomsService;
import cn.sendto.hotel.util.DateTime;

@WebServlet("/CountIncome")
public class CountIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取数据
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		//工具包中自定义时间后推几天，这里为一天
		DateTime d = new DateTime();
		//创建客房业务对象
		OrderListService service = new OrderListService();
		//当没有条件的时候默认系统时间查询当天
		if(startDate == null || "".equals(startDate) || endDate == null || "".equals(endDate)){
			startDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		}
		List<OrderListModel> oList = service.findCost(startDate,endDate);
		float expectCost = 0;
		if(oList !=null && oList.size() > 0){
			for(int i = 0;i < oList.size(); i++){
				expectCost +=oList.get(0).getExpectCost();
			}
		}
		
		request.setAttribute("start", startDate);
		request.setAttribute("end", endDate);
		request.setAttribute("items", expectCost);
		request.getRequestDispatcher("LeaderIncome.jsp").forward(request, response);				
		
	}

}
