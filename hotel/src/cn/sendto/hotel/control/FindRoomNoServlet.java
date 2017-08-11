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
 * 处理客房选择页面
 * @author Administrator
 *
 */
@WebServlet("/FindRoomNoServlet")
public class FindRoomNoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String[] id = request.getParameterValues("roomId");
			List<RoomsModel> list =new ArrayList<RoomsModel>();

			for (int i = 0; i < id.length; i++) {
				RoomsService roomsService=new RoomsService();
				if(roomsService.findByRoomsId(id[i])!=null){				
					list.add(roomsService.findByRoomsId(id[i]));
				}else{
					throw new RuntimeException("添加客房失败！");
				}
			}
			
			
			if (list.size()>0) {
				
				request.setAttribute("items", list);
				request.getRequestDispatcher("addList.jsp").forward(request, response);
			} else {
				throw new RuntimeException("客房选择异常！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
