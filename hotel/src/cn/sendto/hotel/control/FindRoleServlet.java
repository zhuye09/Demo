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

import cn.sendto.hotel.dao.UserRoleDao;
import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.UserRoleServices;

/**
 * Servlet implementation class FindRoleServlet
 */
@WebServlet("/FindRoleServlet")
public class FindRoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindRoleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//创建业务对象
			RoleService service = new RoleService();
			//业务对象调用的findAll方法查询出所有角色信息指向实体对象
			List<RoleModel> list = (List<RoleModel>)service.findAll();
			
			//将查到的数据存放到请求空间
			request.setAttribute("items",list);
			//请求转发
			request.getRequestDispatcher("findRoles.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		this.doGet(request, response);
	}
}
	

