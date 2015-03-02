package com.uunemo.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.Question;
import com.uunemo.service.QuestionService;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;

@Controller
public class QuestionControl {
	
	@Resource
	QuizSetService quizSetService;
	
	@Resource
	QuizService quizService;
	
	@Resource
	QuestionService questionService;
	
	//
	@RequestMapping(value="/questionmanage")
//		@RequiresRoles("admin")
	public  String questionManage(Model model){
		model.addAttribute("pageNum",1);
		model.addAttribute("maxpageNum",1);
		return "questionmanage";
	}
	
	@RequestMapping(value="/editthequestion",method=RequestMethod.POST)
//	@RequiresRoles("admin")
	@ResponseBody
public  Question edittheQuestion(@RequestParam int questionId){
	Question question = questionService.getQuestionById(questionId);	
	return question;
}
	
	
	
	@RequestMapping(value="/editquestion")
//	@RequiresRoles("admin")
public  String editQuestion(){
	
	return "editquestion";
}
	
	
	@RequestMapping(value="/savequestion",method=RequestMethod.POST)
//	@RequiresRoles("admin")
	@ResponseBody
public  String saveQuestion(
			@RequestParam String questionContent,
			@RequestParam int point,
			@RequestParam String options
		){		
		System.out.println(questionContent);
	questionService.saveQuestion(questionContent,point,options);	
	return "sucess";
}
	
	
	@RequestMapping(value="/searchquestion",method=RequestMethod.POST)
//	@RequiresRoles("admin")
	@ResponseBody
public  List searchQuestion(
			@RequestParam String searchText,
			@RequestParam int pageNum
		){		
		
	return questionService.searchQuestion(searchText,pageNum);
}
	
	@RequestMapping(value="/delquestions",method=RequestMethod.POST)
//	@RequiresRoles("admin")
	@ResponseBody
public  String delQuestion(
			@RequestParam String questions
		){		
		
	 questionService.delQuestion(questions);
	 return "sucess";
}	
	

	@RequestMapping(value="/codetest")
public String codetest(
		){
		return "codetest";
		}
	
	
	
//生成文件，并调用java编译，调用javac运行	
	@RequestMapping(value="/submitcode")
	@ResponseBody
public String submitcode(
		@RequestParam String content
		){
//存文件
		FileOutputStream fos=null;
		try {
			 fos=new FileOutputStream("e:\\Test.java");
			 fos.write(content.getBytes());
			 fos.flush();
			 
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
//调用javac编译,若出现错误，则返回错误信息		
		Runtime runtime=Runtime.getRuntime();
		String[] commandArgs={"javac.exe","e:\\Test.java"};
		try {
			runtime.exec(commandArgs);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//调用java运行 吗 ，并返回结果		
		
		System.out.println(content);
		
		String[] commandArgs2={"java.exe","e:\\Test.class"};
		try {
			runtime.exec(commandArgs2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return content;
		}
	}
