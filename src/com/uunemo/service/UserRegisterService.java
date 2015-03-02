package com.uunemo.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.*;
import com.uunemo.daos.*;


@Service("UserRegisterService")
public class UserRegisterService {

	@Resource
	private SchoolDao schoolDao;

	@Resource(name="RegisterQuestionDAO")
	private RegisterQuestionDAO registerQuestionDao;

	@Resource(name="UserDao")
	private UserDao userDao;
	
	@Resource(name="RoleDao")
	private RoleDao roleDao;
	
	@Resource
    private CompanyService companyService;
	
	@Resource
	private SchoolService schoolService;
	
	@Resource
	private PasswordHelper passwordHelper;
	
	public RegisterQuestion getRegisterQuestion(){
		Random rand = new Random();
		long questionCount = registerQuestionDao.getQuestionNum();
		int id = (int)(questionCount*Math.random());
		return registerQuestionDao.getQuestionById(id);		
	}
	
	
	public List fetchAllSchool(){
		List<School> list_school = schoolDao.getAllSchool();
		List<String> list_schoolName = new ArrayList<String>();
		for(School school: list_school){
			list_schoolName.add(school.getschoolName());
		}		
		return list_schoolName;
	}

	
	public boolean checkUserName(String username) {
		// TODO Auto-generated method stub
		if(userDao.findByName(username)!=null){
			return true;
		}
		return false;
	}	
	
	public boolean checkEmail(String email){
		if(userDao.findByEmail(email).getEmail()== ""){
			return true;
		}
		return false;
	}

	@Transactional(propagation=Propagation.REQUIRED,rollbackFor = Exception.class)
	public void createDefaultUser(User user,String school,String company) {
		// TODO Auto-generated method stub
		//加入默认权限
		int schoolId = schoolService.updateSchoolByName(school);
		user.setSchoolId(schoolId);
		if(company != null){
			int companyId = companyService.updateCompanyByName(company);
			user.setCompanyId(companyId);	
		}
		
		Role defaultRole = roleDao.getRoleByName("user");
		user.getRoles().add(defaultRole);
		passwordHelper.encryptPassword(user);
		
		userDao.save(user);
	}
	
	
	
}
