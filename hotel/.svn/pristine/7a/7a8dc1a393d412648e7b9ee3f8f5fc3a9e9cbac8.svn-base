package cn.sendto.hotel.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.services.RoomsService;

/**
 * Servlet implementation class AdminEditRoom
 */
@WebServlet("/AdminEditRoom")
public class AdminEditRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditRoom() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String id=request.getParameter("id");
		String typeId=request.getParameter("typeId");
		String positions=request.getParameter("positions");
		String state=request.getParameter("state");
		//封装
		RoomsModel model=new RoomsModel();
		model.setId(id);
		model.setPositions(positions);
		model.setTypeId(Integer.parseInt(typeId));
		model.setState(Integer.parseInt(state));
		RoomsService roomsService=new RoomsService();
			int i=roomsService.update(model);
			if(i>0){
				//修改成功后，跳转到查询页面
				request.getRequestDispatcher("AdminFindRooms").forward(request, response);
			}else{
				request.setAttribute("Msg", "修改失败！");
				request.getRequestDispatcher("admineditRooms.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
