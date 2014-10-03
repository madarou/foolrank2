package com.uunemo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.uunemo.beans.User;
import com.uunemo.service.UserLoginService;
import com.uunemo.service.UserService;

@Controller
//@RequestMapping("/page")
//@SessionAttributes("username")
public class UserLoginController {
	
	
	private String sucess="sucess"; //sucess page
	private String home="home"; //home page
	private String createuser="createusers";
	
	@Resource(name="UserLoginService")
	private UserLoginService userLoginService;
	
	@Resource(name="UserService")
	private UserService userService;
	
	//fetch bulletin when enter the login page
	//2013.02.07 check whether use had already login
	@RequestMapping("/home")
	public String loginInit(HttpServletRequest req,Model model){		
	   ServletContext servletContext=req.getSession().getServletContext();	   
       String bulletin = (String)servletContext.getAttribute("bulletion");	
       if( null == bulletin){
		 bulletin = userLoginService.firstLogin();
		 servletContext.setAttribute("bulletin", bulletin);
       }
	   return home;
	}

	@RequestMapping(value="/logout",method=RequestMethod.POST)
	public @ResponseBody
	String logOut(Model model){
		SecurityUtils.getSubject().logout();
		return home;
	}
	
	
   //2013.02.21 must use ajax 
	@RequestMapping(value = "/checkuser",method= RequestMethod.POST)
 	public @ResponseBody
	User login(
			@RequestParam(value="email",required = true) String email,
			@RequestParam(value="password",required = true) String password,
			HttpSession session
			)
	{      
		User user = new User();
		String name = userLoginService.validataUser(email, password);	
		if(name.equals("nobody")==false){
			user = userService.getUserByEmail(name);
			session.setAttribute("user", user);
			return user;
		}else{
			user.setUsername("nobody");
			return user;
		}
	}	
	
}
