package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.UserService;

/**
 * Servlet implementation class AdminSuperMen
 */
@WebServlet("/AdminSuperMen")
public class AdminSuperMen extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		UserService service = new UserService();
		List<UserModel> model=new ArrayList<UserModel>();
		model=service.findByRoleId();
		if(model.size()>0){
			request.setAttribute("items", model);
			request.getRequestDispatcher("adminIndex.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
