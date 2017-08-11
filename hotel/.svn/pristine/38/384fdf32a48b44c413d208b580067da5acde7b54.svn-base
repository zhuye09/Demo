package cn.sendto.hotel.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.UserService;

@WebServlet("/AdminEditUser")
public class AdminEditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String id=request.getParameter("id");
		String userName = request.getParameter("userName");
		String trueName=request.getParameter("trueName");
		String gender=request.getParameter("gender");
		String tel=request.getParameter("tel");
		String enrollDate=request.getParameter("enrollDate");
		String role_id=request.getParameter("roleId");
		UserModel model=new UserModel();
		model.setUserName(userName);
		model.setId(Integer.parseInt(id));
		model.setTrueName(trueName);
		model.setTel(tel);
		model.setGender(gender);
		model.setEnrollDate(new SimpleDateFormat("yyyy-MM-dd").parse(enrollDate));
		model.setRole_id(Integer.parseInt(role_id));
		UserService service=new UserService();
		int i=service.Editupdate(model);
		if(i>0){
			request.getRequestDispatcher("AdminFindUser").forward(request, response);
		}else{
			request.getRequestDispatcher("adminEditUser.jsp?id="+id).forward(request, response);
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
