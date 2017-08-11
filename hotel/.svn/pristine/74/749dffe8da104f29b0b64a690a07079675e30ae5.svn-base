package cn.sendto.hotel.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.services.OrderListService;

/**
 * Servlet implementation class EditList
 */
@WebServlet("/EditList")
public class EditList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditList() {
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
		String regDays=request.getParameter("regDays");
		String expectCost=request.getParameter("expectCost");
		String inCost=request.getParameter("inCost");
		Float countCoat=Float.parseFloat(expectCost)+Float.parseFloat(inCost);
		
		OrderListService listService1=new OrderListService();
		List<OrderListModel> listModel=new ArrayList<OrderListModel>();
		listModel=listService1.findListById(Integer.parseInt(id));
		listModel.get(0).getDays();
		listModel.get(0).setId(Integer.parseInt(id));
		listModel.get(0).setRegDays(Integer.parseInt(regDays));
		listModel.get(0).setExpectCost(countCoat);
		listModel.get(0).setDays(listModel.get(0).getDays()+Integer.parseInt(regDays));
		OrderListService listService=new OrderListService();
		
			int i=listService.update(listModel.get(0));
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
