package com.uunemo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.QuizSet;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;

/**
 * @author Administrator
 * 管理控制器，对set,quiz,question进行管理
 */

@Controller
public class AdminControl {

	@Resource
	private QuizService quizService;
	
	@Resource
	private QuizSetService quizSetService;
	
	//adminhome页面
	@RequestMapping(value="/adminhome")
//	@RequiresRoles("admin")
	public String adminHome(){
		return "adminhome";
	}
	
				
}
