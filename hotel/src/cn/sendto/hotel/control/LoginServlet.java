package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.set.CompositeSet.SetMutator;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.services.RoomsService;
import cn.sendto.hotel.services.UserRoleServices;
import cn.sendto.hotel.services.UserService;
import cn.sendto.hotel.util.MD5;
import cn.sendto.hotel.view.RoomsRoomtype;

/**
 * 对用户相关的操作控制
 * @author Administrator
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	//定义日志对象
	private static final long serialVersionUID = 1L;
	
	UserService userService = new UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//new一个session对象，用来获取验证码
		HttpSession session = request.getSession();
		//获取随机生成的验证码，作为验证
		String checkcode = (String)session.getAttribute("CheckCode");
		// 接收表单提交的参数
		String userName = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		//从login页面获取过来的验证码
		String code = request.getParameter("checkcode");
		//验证码的判断
		if(code.equalsIgnoreCase(checkcode)){
			// 封装到实体类中
			if ("".equals(userName.trim()) || userName ==null || "".equals(userPass.trim()) || userPass == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			UserModel model = new UserModel();
			model.setUserName(userName);
			model.setUserPass(MD5.createPassword(userPass));
			// 调用业务方法进行查询
			try {
				// 对结果进行相应的处理
				List<UserModel> list = userService.findUser(model);
				//将数据放到session中
				if (list != null && list.size() > 0) {
					request.getSession().setAttribute("user", list.get(0)); 
					UserRoleServices services =new UserRoleServices();
					
					List<RoleModel> item = new ArrayList<RoleModel>();
					
					item = services.findRoleById(list.get(0).getId());
					
					if (item != null && item.size() > 0) {
						//判断输入的用户名的角色，根据角色跳转到相应的主界面----sjh
						switch(item.get(0).getId()){
						case 1:
							response.sendRedirect("FindAllRoomsInfoServlet");//跳转到柜员
							return;
						case 2:	
							response.sendRedirect("AdminSuperMen");//跳转到管理员
							return;
						case 3:
							response.sendRedirect("CountIncome");//跳转到领导
							return;
						case 4:
							response.sendRedirect("#");//跳转到经理
							return;
						case 5:
							response.sendRedirect("AdminSuperMen");//跳转到前台
							return;
						case 6:
							response.sendRedirect("#");//跳转到大厅经理
							return;
						default:
							request.setAttribute("Msg", "此用户无权限进入！");
						}
					}
				} else {
					request.getRequestDispatcher("login.jsp").forward(request, response);
					throw new RuntimeException("登录失败！");
				}
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			request.setAttribute("Msg", "验证码输入错误！");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
