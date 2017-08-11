package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.UserService;

/**
 * Servlet implementation class AdminOffState
 */
@WebServlet("/AdminOffState")
public class AdminOffState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOffState() {
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
		String id = request.getParameter("id");
		UserService service =new UserService();
		List<UserModel> model;
		try {
			model = service.findById(Integer.parseInt(id));
			model.get(0).setState(0);
			service.update(model.get(0));
			request.getRequestDispatcher("/AdminFindUser").forward(request, response);
		} catch ( Exception e) {
			e.printStackTrace();
		}
		
	}

}
