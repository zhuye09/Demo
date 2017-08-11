package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.UserService;
import cn.sendto.hotel.util.MD5;


/**
 * Servlet implementation class AdminAddUser
 */
@WebServlet("/AdminAddUser")
public class AdminAddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Logger logger = Logger.getLogger(AdminAddUser.class);
    public AdminAddUser() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取数据
		String userName=request.getParameter("userName");
		String trueName=request.getParameter("trueName");
		String gender=request.getParameter("gender");
		String tel=request.getParameter("tel");
		String roleId=request.getParameter("roleId");
		String headerimage="userdefault.gif";
		
		try {
		UserService service1 = new UserService();
			int i=service1.findByName(userName);
		if (i>0) {
			request.setAttribute("Msg", "用户名已存在");
			request.getRequestDispatcher("ViewRoleServlet").forward(request, response);
		}else{
		//封装数据
			UserModel model=new UserModel();
				model.setGender(gender);
				model.setTel(tel);
				model.setUserPass(MD5.createPassword("111111"));
				model.setState(1);
				model.setDropState(1);
				model.setTrueName(trueName);
				model.setUserName(userName);
				model.setEnrollDate(new Date());
				model.setDropState(1);
				model.setHeaderimage(headerimage);
				
				UserRoleModel m2=new UserRoleModel();
				m2.setRole_id(Integer.parseInt(roleId));
				UserService service = new UserService();
				int j;
					j = service.addByTrans(model, m2);
					request.setAttribute("items", j);
					if(j>1){
						response.sendRedirect("AdminFindUser");
					}else{
						response.sendRedirect("adminUser.jsp");
					}
				}
		}catch (Exception e) {
					
					e.printStackTrace();
		}
	}
	
}
