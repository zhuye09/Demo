package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import org.apache.log4j.Logger;

import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.UserRoleServices;

/**
 * Servlet implementation class DelRoleServlet
 */
@WebServlet("/DelRoleServlet")
public class DelRoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelRoleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		try {
			//创建业务对象
			UserRoleServices service = new UserRoleServices();
			//将业务对象调用findAll方法查询的结果指向实体对象
			UserRoleModel list =  service.findById(Integer.parseInt(id));
			if(list != null){
				request.setAttribute("Msg", "您现在要删除的角色下存在用户，不能删除该角色！");
				request.getRequestDispatcher("FindRoleServlet").forward(request, response);
			}else{
				//创建角色业务对象
				RoleService service1 = new RoleService();
				//查询出原始数据
				List<RoleModel> model1 = service1.findById(Integer.parseInt(id));
				//赋新值
				model1.get(0).setDropState(0);
				int i = service1.update(model1.get(0));
				if(i > 0){
					request.setAttribute("Msg", "删除成功！");
					request.getRequestDispatcher("FindRoleServlet").forward(request, response);
				}else{
					request.getRequestDispatcher("FindRoleServlet").forward(request, response);
				}
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
