package cn.sendto.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import cn.sendto.hotel.services.RoomsService;
import cn.sendto.hotel.view.RoomsRoomtype;

@WebServlet("/FindAllRoomsInfoServlet")
public class FindAllRoomsInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	RoomsService roomsService = new RoomsService();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取数据
		String str = request.getParameter("str");
		
		//查询所有客房信息
		List<RoomsRoomtype> roomsModel;
		try {
			roomsModel = roomsService.findAllRoomsInfo();
			int weizhuNum = 0;
			int yizhuNum = 0;
			int yudingNum = 0;
			// 对查询的客房信结果进行判断
			if (roomsModel != null && roomsModel.size() > 0) {
				
				for (int i = 0; i < roomsModel.size(); i++) {
					if(roomsModel.get(i).getState() ==1){
						weizhuNum++;
					}
					if(roomsModel.get(i).getState() ==2){
						yizhuNum++;
					}
					if(roomsModel.get(i).getState() ==3){
						yudingNum++;
					}
				}
				request.setAttribute("weizhuNum", weizhuNum);
				request.setAttribute("yizhuNum", yizhuNum);
				request.setAttribute("yudingNum", yudingNum);
				request.setAttribute("items", roomsModel);
			} else {
				throw new RuntimeException("查询客房信息失败！");
			}
			
			if("leader".equals(str)){
				request.getRequestDispatcher("LeaderroomState.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
