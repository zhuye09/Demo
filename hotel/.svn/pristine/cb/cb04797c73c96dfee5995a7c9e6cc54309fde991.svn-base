package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class AdminRoomType
 */
@WebServlet("/AdminRoomType")
public class AdminRoomType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRoomType() {
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
		String id=request.getParameter("id");
		 RoomTypeService roomTypeService=new RoomTypeService();
		 try {
			List<RoomTypeModel> list=roomTypeService.findById(Integer.parseInt(id));
			 request.setAttribute("items",list);
			 request.getRequestDispatcher("adminEditRoomType.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
	}

}
