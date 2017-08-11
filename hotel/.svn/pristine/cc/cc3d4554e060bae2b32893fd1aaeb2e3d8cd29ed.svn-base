package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.services.UserService;

/**
 * Servlet implementation class indexuserServlet
 */
@WebServlet("/LeaderuserServlet")
public class LeaderUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaderUserServlet() {
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
		 String trueName=request.getParameter("trueName");
		 String tel=request.getParameter("tel");
		 String gender=request.getParameter("gender");
		UserModel model=(UserModel) request.getSession().getAttribute("user");
		model.setTrueName(trueName);
		model.setTel(tel);
		model.setGender(gender);
		 UserService userService=new UserService();
		 try {
			int i=userService.update(model);
			if(i>0){
				request.getRequestDispatcher("/CountIncome").forward(request, response);
			}else{
				request.setAttribute("Msg", "修改失败！");
				request.getRequestDispatcher("user.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
