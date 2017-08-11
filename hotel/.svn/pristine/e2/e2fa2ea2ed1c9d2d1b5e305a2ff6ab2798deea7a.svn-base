package cn.sendto.hotel.filter;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter("/EncodingFilter")
public class EncodingFilter implements Filter {
	String encoding="utf-8";
    /**
     * Default constructor. 
     */
    public EncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		if(request.getMethod().equalsIgnoreCase("GET")){
			
			Map map=request.getParameterMap();
			Set entryset = map.entrySet();
			for(Object object:entryset){
				Map.Entry entry=(Map.Entry)object;
				String[] value=(String[])entry.getValue();
				for(int i=0;i<value.length;i++){
					value[i]=new String(value[i].getBytes("iso8859-1"),encoding);
				}
				
			}
		}else{
			request.setCharacterEncoding(encoding);
		}
		//chain.doFilter表示访问下一个过滤器，如果没有下一个过滤器，就访问目标路径。
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig config) throws ServletException {
		if(config.getInitParameter("encoding")!=null && config.getInitParameter("encoding").length()>0){
			encoding = config.getInitParameter("encoding");
		}
	
	}
	}


