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
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.services.UserRoleServices;
import cn.sendto.hotel.services.UserService;
import cn.sendto.hotel.util.PageUtil;

/**
 * Servlet implementation class AdminFindUser
 */
@WebServlet("/AdminFindUser")
public class AdminFindUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFindUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   try {
			   PageUtil<UserModel> page = new PageUtil<UserModel>();
			   UserService service = new UserService();
			   page.setRecordCount(service.findAllCount());
			   String sPageIndex = request.getParameter("pageIndex");
			   
			   //赋值为要跳转的页面sPageIndex
			   if(sPageIndex != null && sPageIndex.length() > 0){
				   page.setPageIndex(Integer.parseInt(sPageIndex));
			   }
			   
			   //判断
				if(page.getPageIndex()<0){
					page.setPageIndex(1);
					
				}
				if(page.getPageIndex()>page.getPageCount()){
					page.setPageIndex(page.getPageCount());
				}
				//
				List<UserModel> list;
					list = service.findAll(page.getPageIndex(),page.getPageSize());
					page.setList(list);
					
				page.setPageNums(5);
				//
				request.setAttribute("items", page);
				//
				request.getRequestDispatcher("adminUsers.jsp").forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
			}

		
	
}
