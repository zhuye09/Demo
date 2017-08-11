package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class AdminAddRole
 */
@WebServlet("/AdminAddRole")
public class AdminAddRole extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddRole() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //获取数据
		 String roleName = request.getParameter("roleName");
		 String roleDesc = request.getParameter("roleDesc");
		 String company = request.getParameter("company");
		 RoleService service=new RoleService();
		 List<RoleModel> model = new ArrayList<RoleModel>();
		 try{
			 model=service.findByRoleName(roleName);
			 if(model.size()>0 ){
				 if(model.get(0).getDropState()==0){
					 request.setAttribute("message", "该角色名存在已激活！");
					 RoleService service1 = new RoleService();
					//查询出原始数据
					 int id=model.get(0).getId();
					List<RoleModel> model1 = service1.findById(id);
					
					//赋新值
					model1.get(0).setDropState(1);
					int i = service1.update(model1.get(0));
					}else{
						request.setAttribute("message", "该角色名已存在！");
					}
				 request.getRequestDispatcher("adminAddRole.jsp").forward(request, response);
				 return;
			 }else{
			 //更新数据
				 RoleModel model2=new RoleModel();
				 model2.setRoleName(roleName);
				 model2.setRoleDesc(roleDesc);
				 model2.setDropState(1);
				 model2.setCompany(company);
			 
			 int result=service.add(model2);
			 if(result>0){
				 request.setAttribute("message", "添加成功！");
				 request.getRequestDispatcher("adminAddRole.jsp").forward(request, response);
				 return;
			 }else{
				 request.setAttribute("message", "添加失败！");
				 request.getRequestDispatcher("adminAddRole.jsp").forward(request, response);
			 }
			 }
		 }catch(Exception e){
			 e.printStackTrace();
		 }
	}

}
