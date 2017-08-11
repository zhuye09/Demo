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

import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.RoomsService;

/**
 * Servlet implementation class AdminADDRooms
 */
@WebServlet("/AdminAddRooms")
public class AdminAddRooms extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddRooms() {
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
		String typeId=request.getParameter("typeId");
		String positions=request.getParameter("positions");
		
		RoomsService service1=new RoomsService();
		try {
			List<RoomsModel> models=(List<RoomsModel>) service1.findByRoomsId(id);
		if (models.size()>0) {
			request.setAttribute("Msg", "该房间已存在！");
			request.getRequestDispatcher("adminAddRooms.jsp").forward(request, response);
		}else{
			
		
		
		RoomsModel roomsModel = new RoomsModel();
		roomsModel.setId(id);
		roomsModel.setTypeId(Integer.parseInt(typeId));
	    roomsModel.setPositions(positions);
	    roomsModel.setState(1);
	    
		RoomsService roomsService = new RoomsService();
		
		int i=0;
		
			i=roomsService.add(roomsModel);
			if(i>0){
				request.getRequestDispatcher("AdminFindRooms").forward(request, response);
			}else{
				
				request.getRequestDispatcher("adminAddRooms.jsp").forward(request, response);
			}
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
