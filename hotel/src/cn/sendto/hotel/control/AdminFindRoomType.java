package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class AdminFindRoomType
 */
@WebServlet("/AdminFindRoomType")
public class AdminFindRoomType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFindRoomType() {
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
		 RoomTypeService roomTypeService =new RoomTypeService();
		 try {
			List<RoomTypeModel> list = roomTypeService.findAll();
			request.setAttribute("items", list);
			request.getRequestDispatcher("adminFindRoomType.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
