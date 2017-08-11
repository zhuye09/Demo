package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.UserService;

/**
 * Servlet implementation class AdminFindById
 */
@WebServlet("/AdminFindById")
public class AdminFindById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFindById() {
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
		List<RoleModel> list= (List<RoleModel>)service.findAll();
		String id=request.getParameter("id");
		UserService service1 =new UserService();
		List<UserModel> model= service1.findById(Integer.parseInt(id));
		if (model!=null && model.size()>0) {
			request.setAttribute("role", list);
			request.setAttribute("items", model);
			request.getRequestDispatcher("/adminEditUser.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		} catch ( Exception e) {
			e.printStackTrace();

		}
	
		
	}

}
