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

import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.RoomTypeService;
import cn.sendto.hotel.services.RoomsService;
import cn.sendto.hotel.view.RoomsRoomtype;
/**
 * Servlet implementation class AdminFindRooms
 */
@WebServlet("/AdminFindRooms")
public class AdminFindRooms extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询所有客房信息
		RoomsService roomsService = new RoomsService();
		List<RoomsRoomtype> roomsRoomtype;
		try {
			roomsRoomtype = roomsService.findAllRoomsInfo();
			
			
			// 对查询的客房结果进行判断
			if (roomsRoomtype != null && roomsRoomtype.size() > 0) {
				request.setAttribute("items", roomsRoomtype);
				request.getRequestDispatcher("adminFindRooms.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("adminAddRooms.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
