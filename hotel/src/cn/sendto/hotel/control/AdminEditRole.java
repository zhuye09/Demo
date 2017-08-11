package cn.sendto.hotel.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.UserService;

@WebServlet("/AdminEditRole")
public class AdminEditRole extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String id=request.getParameter("id");
		String roleName = request.getParameter("roleName");
		String roleDesc=request.getParameter("roleDesc");
		String dropState=request.getParameter("dropState");
		RoleModel model=new RoleModel();
		model.setId(Integer.parseInt(id));
		model.setRoleName(roleName);
		model.setRoleDesc(roleDesc);
		model.setDropState(Integer.parseInt(dropState));
		RoleService service=new RoleService();
		int i=service.update(model);
		if(i>0){
			request.getRequestDispatcher("FindRoleServlet").forward(request, response);
		}else{
			request.getRequestDispatcher("adminEditRole.jsp?id="+id).forward(request, response);
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
