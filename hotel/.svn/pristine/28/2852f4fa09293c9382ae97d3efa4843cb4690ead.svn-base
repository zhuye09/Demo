package cn.sendto.hotel.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.OrderListService;

@WebServlet("/AddList")
public class AddList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 订单列表业务类
	OrderListService orderListService = new OrderListService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// 其他顾客信息录入到customer表中(封装到cusList中)
			List<CustModel> cusList = new ArrayList<CustModel>();
			// 得到总记录条数(w)
			int w = 0;
			for (;; w++) {
				if (request.getParameterValues(w + "customer") != null) {
					continue;
				}
				break;
			}
			// 遍历封装
			for (int k = 0; k < w; k++) {
				String[] ucsInfo = request.getParameterValues(k + "customer");
				CustModel cModel = new CustModel();
				cModel.setTrueName(ucsInfo[0]);
				cModel.setIdCard(ucsInfo[1]);
				cModel.setGender(ucsInfo[2]);
				cModel.setIdType("新客");
				cusList.add(cModel);
			}

			// 订单中添加顾客信息，从表单中获取如下,订单中客户信息总记录条数为（num）expectCost期望付费
			int num = Integer.parseInt(request.getParameter("count"));
			String[] idType = new String[num];
			String[] gender = new String[num];

			for (int i = 1; i <= num; i++) {
				String str1 = i + "idType";
				String str2 = i + "gender";
				idType[i - 1] = request.getParameter(str1);
				gender[i - 1] = request.getParameter(str2);
			}

			String[] cusName = request.getParameterValues("cusName");
			String[] idCard = request.getParameterValues("idCard");
			String[] tel = request.getParameterValues("tel");

			// 订单中添加订单信息表单数据
			String[] days = request.getParameterValues("days");
			String[] expectCost = request.getParameterValues("expectCost");
			String[] roomId = request.getParameterValues("roomId");
			String[] typeName = request.getParameterValues("typeName");
			String[] yuanjia = request.getParameterValues("yuanjia");

			// 封装订单信息
			List<OrderListModel> orderList = new ArrayList<OrderListModel>();
			List<RoomsModel> roomsList = new ArrayList<RoomsModel>();
			for (int i = 0; i < num; i++) {
				CustModel custModel = new CustModel();
				OrderListModel orderModel = new OrderListModel();
				RoomsModel roomsModel = new RoomsModel();
				// 封装房间号信息
				roomsModel.setId(roomId[i]);
				roomsModel.setState(2);
				if ("标间".equals(typeName[i])) {
					roomsModel.setTypeId(1);
				} else if ("双人间".equals(typeName[i])) {
					roomsModel.setTypeId(2);
				} else if ("单间".equals(typeName[i])) {
					roomsModel.setTypeId(3);
				} else if ("豪华间".equals(typeName[i])) {
					roomsModel.setTypeId(4);
				}

				// 封装到CustModel
				custModel.setTrueName(cusName[i]);
				custModel.setIdCard(idCard[i]);
				custModel.setGender(gender[i]);
				custModel.setTel(tel[i]);
				custModel.setIdType(idType[i]);
				custModel.setRoomid(roomId[i]);
				// 封装到OrderListModel
				UserModel um = (UserModel) request.getSession().getAttribute("user");
				int userId = um.getId();
				orderModel.setUserId(userId);
				orderModel.setCusName(cusName[i]);
				orderModel.setDiscount(Float.parseFloat(expectCost[i]) / Float.parseFloat(yuanjia[i]));
				orderModel.setDays(Integer.parseInt(days[i]));
				orderModel.setStaste(2);
				orderModel.setExpectCost(Float.parseFloat(expectCost[i]));
				// 将日期转换为String
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String liveDate = sdf.format(new Date());
				orderModel.setLiveDate(liveDate);
				// 计算预计离店时间
				Date d = null;
				String expectCheckoutDate = null;
				d = sdf.parse(liveDate);
				expectCheckoutDate = sdf
						.format(new Date(d.getTime() + Integer.parseInt(days[i]) * 24 * 60 * 60 * 1000));
				orderModel.setExpectCheckoutDate(expectCheckoutDate);

				// 添加到list
				cusList.add(custModel);
				orderList.add(orderModel);
				roomsList.add(roomsModel);
			}
			int result = orderListService.addOrder(cusList, orderList, roomsList);
			if(result == 0){
			// 添加成功
			request.setAttribute("Msg", "添加成功！");
			request.getRequestDispatcher("FindAllRoomsInfoServlet").forward(request,response);
			 
			} else {
				throw new RuntimeException("订单操作异常");
			}
		} catch (Exception e) {
			// 错误页
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}

	}
}
