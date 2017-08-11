package cn.sendto.hotel.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class ApplicationListener
 *
 */
@WebListener
public class ApplicationListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sec) {
		//当application销毁时调用该方法，将在线人数设置为0 
				sec.getServletContext().removeAttribute("onlieNums");
				System.out.println("application销毁");
			}
	@Override
	public void contextInitialized(ServletContextEvent sec) {
	//application创建时调用此方法，在线人数设置为0，在线人数在application中存储
			ServletContext application = sec.getServletContext();
			//设置在线人数为0
			application.setAttribute("onlieNums", 0);
			//在控制台输出application创建成功的信息
			System.out.println("application创建成功！");
		}
}
