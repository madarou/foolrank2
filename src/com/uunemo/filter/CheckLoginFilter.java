package com.uunemo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;

public class CheckLoginFilter implements Filter {
	
	private  final String EXCUDE_STR ="resources";

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest )req;
		String currentURL = request.getRequestURI(); 
		System.out.println("currentURL:"+currentURL);
		
		String targetURL = currentURL.substring(currentURL.indexOf("/", 1));
		
		System.out.println("targetURL:"+targetURL);
    //if login and resources then just goto next step
		if("/login".equals(targetURL)|| targetURL.contains(EXCUDE_STR)){
			chain.doFilter(req,resp);
			return;
		}
		 
		 HttpSession session = request.getSession();
		 if( null == session){
			((HttpServletResponse)resp).sendRedirect(request.getContextPath()+"/login");
			return;
		 }
		 else{
			 String username = (String)session.getAttribute("username");
			 if( null == username){
				 String requsername = req.getParameter("username");
				 if(null == requsername){
						((HttpServletResponse)resp).sendRedirect(request.getContextPath()+"/login");
						return;
				 }
				 else{
					 chain.doFilter(req, resp);
					 return;
				 }
			 }
			 //if user have already and the url is uunemo.com then go to home page
			 else{
				 if("/".equals(targetURL)){
					 ((HttpServletResponse)resp).sendRedirect(request.getContextPath()+"/home");
					return;
				 }
				 chain.doFilter(req, resp);
				 return;
			 }
		 }
		
		
//begin the logic has error, rewrite it		
//		// if not login and not resource then check if the url contain username session
//		//2012.12.02 add contain to exclude /resources URL      
//				if(!"/login".equals(targetURL)&& !targetURL.contains(EXCUDE_STR)){ 
//		  HttpSession session = request.getSession();
//		  String username = (String)session.getAttribute("username");
//		  
//		  
//		  //if user not login then goto login page
//		  if(session==null||username == null){
//			((HttpServletResponse)resp).sendRedirect(request.getContextPath()+"/login");
//		  } 
//		 //if user have already login then go to home page
//		  else if("/".equals(targetURL)){
//			((HttpServletResponse)resp).sendRedirect(request.getContextPath()+"/home");
//		  }
//		 //else goto the user special page
//		  else{
//		     chain.doFilter(req,resp);
//		  }
//	  }
//		else{
//		  chain.doFilter(req,resp);
//		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
