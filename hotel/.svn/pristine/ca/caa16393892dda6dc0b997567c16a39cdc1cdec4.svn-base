package cn.sendto.hotel.control;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.OrderListService;
import cn.sendto.hotel.services.RoomsService;
import cn.sendto.hotel.util.DateTime;

/**
 * Servlet implementation class EditList
 */
@WebServlet("/DoneList")
public class DoneList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoneList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String id=request.getParameter("id");
		String roomid=request.getParameter("roomid");
		String expectCost=request.getParameter("expectCost");
		String lastFee =request.getParameter("lastFee");
		Float countCoat=Float.parseFloat(expectCost)-Float.parseFloat(lastFee);
		
		OrderListService listService1=new OrderListService();
		List<OrderListModel> listModel=new ArrayList<OrderListModel>();
		listModel=listService1.findListById(Integer.parseInt(id));
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		 DateTime time=new DateTime();
		  Date data=time.getFrontDay(sdf.parse(listModel.get(0).getLiveDate()),listModel.get(0).getDays() );
		  Date data1=time.getFrontDay(data, listModel.get(0).getRegDays());
		  sdf.format(data1);
		listModel.get(0).setReallyCheckoutDate(sdf.format(data1));
		listModel.get(0).setId(Integer.parseInt(id));
		listModel.get(0).setExpectCost(countCoat);
		//订单已完成
		listModel.get(0).setStaste(1);
		RoomsModel model=new RoomsModel();
		RoomsService roomsService=new RoomsService();
		model=roomsService.findByRoomsId(roomid);
		//设置房间状态为可用
		model.setState(1);
		
		OrderListService listService=new OrderListService();
			int i=listService.updateOrderRoom(listModel.get(0), model);
			if(i>0){
				request.getRequestDispatcher("ShowOrderServlet").forward(request, response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
