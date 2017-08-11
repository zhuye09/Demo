package cn.sendto.hotel.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sendto.hotel.services.UserService;
import cn.sendto.hotel.util.DateTime;
import cn.sendto.hotel.view.OrderUserCountVO;

/**
 * Servlet implementation class WorkerCountServlet
 */
@WebServlet("/WorkerCountServlet")
public class WorkerCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkerCountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取数据
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String month = request.getParameter("month");
		//获取的是查询本周的区分条件，避免与其他条件冲突
		String week = request.getParameter("week");
		
		//创建业务对象
		UserService service = new UserService();
		//没有获取到数据时系统自动赋默认值
		DateTime g = new DateTime();
		List<OrderUserCountVO> list = new ArrayList<OrderUserCountVO>();
		//根据月份查询
		if(month != null && month.length() > 0){
			startDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			String str1 = startDate.substring(0, 5);//result = 2016-
			String str3 = "";
			int i = Integer.parseInt(month);
			if(i < 10){
				i++;
				str3 = "0"+i;
			}else if(i < 13){
				i++;
				str3 = i+"";
			}
			String str2 = "-01";
			SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date d = g.getFrontDay(sd.parse(str1+str3+str2));
				endDate = sd.format(d);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			startDate = str1+month+str2;
			list = service.findWorkerSum(startDate, endDate);
		}else if(startDate == null && endDate == null){//默认当天时间
			startDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			list = service.findWorkerSumDay(startDate);
		}else if(week != null && week.length() > 0){
			startDate = new SimpleDateFormat("yyyy-MM-dd").format(g.getFrontDay(new Date(), Integer.parseInt(week)));
			endDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			list = service.findWorkerSum(startDate, endDate);
		}else{
			//根据时间模糊查询
			list = service.findWorkerSum(startDate, endDate);
		}
		request.setAttribute("moon", month);
		request.setAttribute("start", startDate);
		request.setAttribute("end", endDate);
		request.setAttribute("items", list);
		request.getRequestDispatcher("LeaderIncomeCount.jsp").forward(request, response);
	}

}
