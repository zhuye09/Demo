package cn.sendto.hotel.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class DeleteRoomType
 */
@WebServlet("/DeleteRoomType")
public class DeleteRoomType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRoomType() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String id=request.getParameter("id");
		RoomTypeService roomTypeService=new RoomTypeService();
		
			try {
				int i=roomTypeService.delete(Integer.parseInt(id));
				if(i>0){
					request.setAttribute("Msg", "删除成功！");
					request.getRequestDispatcher("AdminFindRoomType").forward(request, response);
				}else{
					request.setAttribute("Msg", "删除失败！");
					request.getRequestDispatcher("AdminFindRoomType").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}

}
