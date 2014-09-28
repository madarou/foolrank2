/* reference page： https://sourceforge.net/p/uunemo/wiki/register.jsp/
 * register control by fw
 * dispatch the action from the web
 * */
package com.uunemo.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.RegisterQuestion;
import com.uunemo.beans.User;
import com.uunemo.daos.CompanyDao;
import com.uunemo.daos.SchoolDao;
import com.uunemo.service.CompanyService;
import com.uunemo.service.SchoolService;
import com.uunemo.service.UserLoginService;
import com.uunemo.service.UserRegisterService;
import com.uunemo.service.UserService;


@Controller
//@SessionAttributes("username")  //put username to session
public class UserRegisterControl {
	
	private String strHome = "home";
	private String register = "register";
	private String resetPassword="resetpassword";
	
	@Resource(name="UserRegisterService")
	private UserRegisterService userRegisterService;
	@Resource(name="UserLoginService")
	private UserLoginService userLoginService;
	@Resource
	private SchoolService schoolService;
	@Resource
	private UserService userService;
	@Resource
	private CompanyService companyService;

	// fetch the validate question
	@RequestMapping(value= "/register/fetchinfo",method=RequestMethod.POST)  
	public @ResponseBody Map Register(){
		RegisterQuestion registerQuestion = userRegisterService.getRegisterQuestion();
		String validateQuestion = registerQuestion.getRegquestionContent();
		String validateAnswer = registerQuestion.getRegquestionAnswer();
		Map<String, String> rtMap = new HashMap<String,String>();
		rtMap.put("validateQuestion", validateQuestion);
		rtMap.put("validateAnswer", validateAnswer);
	
		return rtMap;	
	}
	
	//fetch all school name
	@RequestMapping(value="/register/fetchschool",method =  RequestMethod.POST) 
	public List fetchAllSchool(){
		return userRegisterService.fetchAllSchool();
	}
	
	//validate username
	@RequestMapping(value="/register/validatename",method =  RequestMethod.POST)
	public @ResponseBody
	String validateusername(
			@RequestParam(value ="name",required = true) String name,Model model){
		String rtuser = "S";
		if( userRegisterService.checkUserName(name)){
			rtuser= "N";  //can found the name in database
		}
		return rtuser;
	}
	
	//validate email
	@RequestMapping(value="/register/validateemail",method =  RequestMethod.POST)
	public @ResponseBody
	String validateEmail(
		@RequestParam(value = "email", required = true) String email,Model model){
		String rtemail = "S";
		if( userRegisterService.checkEmail(email)){
		   rtemail = "N";	
		}
		return rtemail;
	}
	
	//now finally we submit
	@RequestMapping(value="/register/createuser",method=RequestMethod.POST)
	public @ResponseBody 
	String createUser(
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "school", required = true) String school,
			@RequestParam(value = "company", required = false) String company,
			@RequestParam(value = "password", required = true) String password,
			HttpSession session){
		User user = new User();
		user.setEmail(email);
		int schoolId = schoolService.updateSchoolByName(school);
		user.setSchoolId(schoolId);
		if(company != null){
			int companyId = companyService.updateCompanyByName(company);
			user.setCompanyId(companyId);	
		}
		user.setPassword(password);
//		create default user, have role as "user" and permission as "read"
		userRegisterService.createDefaultUser(user);
		
		//if sucess then login, 
		String emailName = userLoginService.validataUser(email, password);	
		if(emailName.equals("nobody")==false){
			User tempUser = userService.getUserByEmail(emailName);
			session.setAttribute("user", tempUser);
		}
		return emailName;
	}
	
	
	@RequestMapping("/resetpassword")
	public String resetPassword(){
		return resetPassword;
	}	
	
	
	
	

}
