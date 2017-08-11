package cn.sendto.hotel.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoomTypeModel;
import cn.sendto.hotel.services.RoomTypeService;

/**
 * Servlet implementation class AdminEditRoomType
 */
@WebServlet("/AdminEditRoomType")
public class AdminEditRoomType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditRoomType() {
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
		String typeName=request.getParameter("typeName");
		String areas=request.getParameter("areas");
		String beds=request.getParameter("beds");
		String price=request.getParameter("price");
		
		RoomTypeModel model=new RoomTypeModel();
		
		model.setAreas(Float.parseFloat(areas));
		model.setBeds(Integer.parseInt(beds));
		model.setId(Integer.parseInt(id));
		model.setPrice(Float.parseFloat(price));
		model.setTypeName(typeName);
		RoomTypeService roomTypeService=new RoomTypeService();
		try {
			int i=roomTypeService.update(model);
			if(i>0){
				request.getRequestDispatcher("AdminFindRoomType").forward(request, response);
			}else{
				request.setAttribute("Msg", "修改失败！");
				request.getRequestDispatcher("adminEditRoomType.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
