package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.OrderListService;
import cn.sendto.hotel.services.UserService;

/**
 * Servlet implementation class DelUser
 */
@WebServlet("/DelUser")
public class DelUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelUser() {
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
		UserService service=new UserService();
		List<UserModel> model=new ArrayList<UserModel>();
		try {
			model=service.findById(Integer.parseInt(id));
			model.get(0).setDropState(0);
			int i=service.update(model.get(0));
			if (i>0) {
				request.getRequestDispatcher("/AdminFindUser").forward(request, response);
			}else{
				request.setAttribute("Msg", "删除失败！");
				request.getRequestDispatcher("/AdminFindUser").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
