package cn.sendto.hotel.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.services.OrderListService;

/**
 * Servlet implementation class FindEditOrder
 */
@WebServlet("/FindDoneList")
public class FindDoneList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindDoneList() {
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
         String id=request.getParameter("id");
         Float discount=Float.parseFloat("1");
         
          OrderListService listService=new OrderListService();
          try {
			List<OrderListModel> listModel=listService.findListById(Integer.parseInt(id));
			Float zhehoujia =listModel.get(0).getPrice();
			if(listModel.get(0).getIdType().equals("新客")){
				 discount=(Float.parseFloat("1"));
				 zhehoujia =listModel.get(0).getPrice()*discount;
			}else if(listModel.get(0).getIdType().equals("会员")){
				 discount=(Float.parseFloat("0.9"));
				 zhehoujia =listModel.get(0).getPrice()*discount;
			}else if(listModel.get(0).getIdType().equals("超级会员")){
			     discount=(Float.parseFloat("0.8"));
			     zhehoujia =listModel.get(0).getPrice()*discount;
			}
			Float lastFee=listModel.get(0).getExpectCost()-((listModel.get(0).getDays()+listModel.get(0).getRegDays())*listModel.get(0).getPrice()*discount);
			if(listModel.size()>0){
				request.setAttribute("lastFee", lastFee);
				request.setAttribute("items", listModel.get(0));
				request.getRequestDispatcher("doneList.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
