package com.uunemo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.uunemo.beans.User;
import com.uunemo.daos.UserDao;
import com.uunemo.service.UserLoginService;
import com.uunemo.service.UserService;

@Controller
//@RequestMapping("/page")
//@SessionAttributes("username")
public class UserLoginController {
	private static final Logger log = LoggerFactory.getLogger(UserLoginController.class);
	
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
	   /*ServletContext servletContext=req.getSession().getServletContext();	   
       String bulletin = (String)servletContext.getAttribute("bulletion");	
       if( null == bulletin){
		 bulletin = userLoginService.firstLogin();
		 servletContext.setAttribute("bulletin", bulletin);
       }*/
	   return "/checkuser";
	}

	@RequestMapping(value="/logout",method=RequestMethod.POST)
	public @ResponseBody
	String logOut(Model model){
		SecurityUtils.getSubject().logout();
		return "redirect:"+home;
	}
	
	
   //2013.02.21 must use ajax 
/*	@RequestMapping(value = "/checkuser",method= RequestMethod.POST)
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
	}	*/
	
	@RequestMapping(value = "/checkuser",method= RequestMethod.POST)
 	public @ResponseBody
	User login(
			@RequestParam(value="email",required = true) String email,
			@RequestParam(value="password",required = true) String password,
			@RequestParam(value="rememberMe",required = false) boolean rememberMe,
			HttpServletRequest request
			)
	{      
		Map<String, Object> result = new HashMap<String, Object>();  
        result.put("msg", "用户名或者密码错误!");  
        result.put("success", "true");  
        result.put("status", false);  
  
        String host = request.getRemoteHost();  
 
        //构造登陆令牌环  
        UsernamePasswordToken token = new UsernamePasswordToken(email,password);
        token.setRememberMe(rememberMe);
        
        User user = new User();
        user.setUsername("nobody");
        try{  
            //发出登陆请求  
            SecurityUtils.getSubject().login(token);  
            //登陆成功  
            HttpSession session = request.getSession(true);  
            try {  
                user = userService.getUserByEmail(email);  
                if (user.getEmail()==null || "".equals(user.getEmail())) {  
                    user.setUsername("nobody");
                }else{
                	 //根据输入的用户名和密码确实查到了用户信息   
                    session.setAttribute("user", user);  
                    result.put("msg", "登录成功!");  
                    result.put("status", true);
                    }
            } catch (Exception e) {  
                log.error(e.getMessage(), e);  
            }  
           // return  user;  
        }catch (UnknownAccountException e){  
            result.put("msg", "账号不存在!");  
        }catch (IncorrectCredentialsException e){  
            result.put("msg", "用户名/密码错误!");  
        }catch (ExcessiveAttemptsException e) {  
            result.put("msg", "账户错误次数过多,暂时禁止登录!");  
        }catch (Exception e){  
            result.put("msg", "未知错误!");  
        }  
        return user; 
	}	
	
	@RequestMapping(value = "/rememberMeCheck",method =RequestMethod.POST)
 	public @ResponseBody
	User rememberMeLogin(HttpServletRequest request)
	{   
        User user = new User();
        user.setUsername("nobody");
  
        try{  
            HttpSession session = request.getSession();  
            try {  
                user = userService.getUserByEmail((String)(session.getAttribute("email")));  
                if (user.getEmail()==null || "".equals(user.getEmail())) {  
                    user.setUsername("nobody");
                }else{
                    session.setAttribute("user", user);  
                    }
            } catch (Exception e) {  
                log.error(e.getMessage(), e);  
            }  
        }catch (Exception e){  
            e.printStackTrace();
        }  
        return user; 
	}
	
}
