package cn.sendto.hotel.listener;

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
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		//Session创建时调用该方法，将在线人数+1
		int count = (int)se.getSession().getServletContext().getAttribute("onlieNums");
		count++;
		se.getSession().getServletContext().setAttribute("onlieNums", count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		//session销毁时调用该方法将在线人数-1
		int count = (int)se.getSession().getServletContext().getAttribute("onlieNums");
		count--;
		se.getSession().getServletContext().setAttribute("onlieNums", count);
	}

}
