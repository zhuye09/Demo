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
import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.services.RoleService;
import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class ViewRoomsType
 */
@WebServlet("/ViewRoomsType")
public class ViewRoomsType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewRoomsType() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			RoomTypeService roomTypeService =new RoomTypeService();
             List<RoomTypeModel> list=roomTypeService.findAll();
             if(list.size()>0){
             request.setAttribute("roomType",list);
			request.getRequestDispatcher("adminAddRooms.jsp").forward(request, response);
             }else{
            	 request.getRequestDispatcher("error.jsp").forward(request, response); 
             }
		}  catch (Exception e) {
			e.printStackTrace();
		}
	}
	}

