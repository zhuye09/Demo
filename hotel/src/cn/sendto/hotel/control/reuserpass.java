package cn.sendto.hotel.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.UserService;
import cn.sendto.hotel.util.MD5;
/**
 * Servlet implementation class repassword
 */
@WebServlet("/reuserpass")
public class reuserpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		UserModel userModel=(UserModel) request.getSession().getAttribute("user");
		String password = request.getParameter("password");
		String newpassword = request.getParameter("newpassword");
		String renewpassword = request.getParameter("renewpassword");
		password=MD5.createPassword(password);
		newpassword=MD5.createPassword(newpassword);
		renewpassword=MD5.createPassword(renewpassword);
		//验证
		if (!password.equals(userModel.getUserPass())) {
			request.setAttribute("message", "原密码输入错误，请输入正确的密码！");
			request.getRequestDispatcher("reuserPass.jsp").forward(request, response);
			return;
		}
		//封装
		UserService userService=new UserService();
		String oldPass=userModel.getUserPass();
		userModel.setUserPass(newpassword);
		int result;
		try {
			result = userService.update(userModel);
		if (result>0) {
			request.setAttribute("message", "密码修改成功");
		}else{
			request.setAttribute("message", "密码修改失败");
			userModel.setUserPass(oldPass);
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("reuserpass.jsp").forward(request, response);
	}

}
