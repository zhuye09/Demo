package cn.sendto.hotel.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.services.RoleService;

/**
 * Servlet implementation class ViewRoleServlet
 */
@WebServlet("/ViewRoleServlet")
public class ViewRoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewRoleServlet() {
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
			RoleService service = new RoleService();
			List<RoleModel> list = (List<RoleModel>)service.findAll();
			request.setAttribute("role",list);
			request.getRequestDispatcher("adminUser.jsp").forward(request, response);
			
		}  catch (Exception e) {
			e.printStackTrace();
		}
	}

}
