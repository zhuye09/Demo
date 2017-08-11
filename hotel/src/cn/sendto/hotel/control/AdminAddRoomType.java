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
import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class AdminAddRoomType
 */
@WebServlet("/AdminAddRoomType")
public class AdminAddRoomType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddRoomType() {
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
		// TODO Auto-generated method stub
		String typeName=request.getParameter("typeName");
		String areas= request.getParameter("areas");
		String beds=request.getParameter("beds");
		String price= request.getParameter("price");
		
		List<RoomTypeModel> roomTypeModel1 = new ArrayList<RoomTypeModel>();
		RoomTypeService typeService1 = new RoomTypeService();
		roomTypeModel1=typeService1.findByTypeName(typeName);
			if(roomTypeModel1.size()>0){
				request.setAttribute("Msg", "该房间类型已经存在！");
				request.getRequestDispatcher("adminAddRoomType.jsp").forward(request, response);
			}else{
				
		RoomTypeModel roomTypeModel = new RoomTypeModel();
		roomTypeModel.setTypeName(typeName);
		roomTypeModel.setBeds(Integer.parseInt(beds));
		roomTypeModel.setPrice(Float.parseFloat(price));
		roomTypeModel.setAreas(Float.parseFloat(areas));
		RoomTypeService typeService = new RoomTypeService();
		int i=0;
			i=typeService.add(roomTypeModel);
			if(i>0){
				response.sendRedirect("AdminFindRoomType");
			}else{
				response.sendRedirect("adminAddRoomType.jsp");
			}
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
