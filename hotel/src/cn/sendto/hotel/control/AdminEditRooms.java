package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.RoomTypeService;
import cn.sendto.hotel.services.RoomsService;

/**
 * Servlet implementation class AdminEditRooms
 */
@WebServlet("/AdminEditRooms")
public class AdminEditRooms extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoomTypeService roomTypeService =new RoomTypeService();
        List<RoomTypeModel> list;
		try {
		list = (List<RoomTypeModel>)roomTypeService.findAll();
        request.setAttribute("roomType",list);
		String id=request.getParameter("id");
		RoomsService service=new RoomsService();
		RoomsModel  model=service.findByRoomsId(id);
		 request.setAttribute("items",model);
		 request.getRequestDispatcher("admineditRooms.jsp").forward(request, response);
		} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
