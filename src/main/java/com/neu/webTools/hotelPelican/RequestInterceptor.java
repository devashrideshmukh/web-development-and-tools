package com.neu.webTools.hotelPelican;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.neu.webTools.hotelPelican.model.User;

public class RequestInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
//		HttpSession session=request.getSession();
//		User user=(User)session.getAttribute("user");
//		String uri=request.getRequestURI();
//		if(!uri.endsWith("home"))	
//			if(session.getAttribute("checkLogIn")==null) { 
//				session.invalidate();
//				response.sendRedirect("home");
//				return false;
//			}
//			
//			return true;
		
		String uri = request.getRequestURI();
	
		  if(!uri.endsWith("home") && !uri.endsWith("logout.do"))
		
		  {
		
		   User userData = (User) request.getSession().getAttribute("user");
		
		   if(userData == null)
		
		   {
		
		    response.sendRedirect("home");
		
		    return false;
		
		   }  
		
		  }
		
		  return true;
		
		 }
		
		

	

}
