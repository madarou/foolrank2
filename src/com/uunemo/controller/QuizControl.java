package com.uunemo.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.Question;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.QuizSet;
import com.uunemo.beans.Score;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;
import com.uunemo.util.QuizUtil;

@Controller
//@SessionAttributes("questionSet")
public class QuizControl {
	
    private String quizPage="quiz";
    Set<Integer> questionSet = new HashSet<Integer>();
	
   
    
	@Resource(name="QuizService")
	QuizService quizService;
	
	@Resource(name="QuizSetService")
	QuizSetService quizSetService;
	
	
	@RequestMapping(value="/quizmanage")
	public String quizManage(){
		return "quizmanage";
	}
	
	
	@RequestMapping(value="/editquiz")
	public String editQuiz(){
		return "editquiz";
	}
	
	
	@RequestMapping(value="/takequiz",method=RequestMethod.POST)
	public @ResponseBody 
	List takeQuiz(
			@RequestParam Integer quizId,
			@RequestParam String answer,
			HttpSession session){
		Set questionSet = (Set) session.getAttribute("questionset");
		StringBuffer realanswer = (StringBuffer)session.getAttribute("realanswer");
		StringBuffer point = (StringBuffer)session.getAttribute("point");
		
		if(questionSet==null){
			 questionSet = new HashSet<Integer>();
			 session.setAttribute("questionset", questionSet);
		 }
		//使用StringBuffer防止string函数传递值传递方式
		if(realanswer==null){  
			realanswer=new StringBuffer();
		    session.setAttribute("realanswer", realanswer);
		}
		//使用StringBuffer防止string函数传递值传递方式
		if(point == null){
			point = new StringBuffer();
			session.setAttribute("point", point);
		}
		Integer userId = (Integer)session.getAttribute("userId");
		//判断问题对错,并对分数进行处理
	    Score score = quizService.mark(userId,quizId,answer,realanswer,point);
		//返回下一道题
		Question quest =  quizService.takeQuiz(quizId,questionSet,realanswer);
		List list = new ArrayList<Object>();
		list.add(score);
		list.add(quest);
	    return list;
	}
	
	
	@RequestMapping(value="/viewquiz",method=RequestMethod.GET)
	/*@RequiresRoles("user")*/
	public String viewQuiz(
			@RequestParam int quizId,
			Model model){
		String quizInfo = quizService.getQuizInfo(quizId);
		model.addAttribute("quizinfo",quizInfo);
	    return quizPage;
	}
	
	
	//查询系统中所有quizset中未包含的quiz,包含分页
	 @RequestMapping(value="/qryextraquiz")
	 @ResponseBody
	 public List<Quiz> qryExtraQuiz(
	   @RequestParam int quizSetId,
	   @RequestParam String quizName,
	   @RequestParam int pageNum   //分页
	){
		 
		List<Quiz> listQuiz = quizService.qryExtraQuiz(quizSetId,quizName);
		List<Quiz> rtQuiz = new ArrayList<Quiz>();
		
		//分页
		for(int i=pageNum*QuizUtil.MAX_PAGE;i<listQuiz.size()&&i<(pageNum+1)*QuizUtil.MAX_PAGE;i++){
			rtQuiz.add(listQuiz.get(i));
		}
		return rtQuiz;
	}
	
	
}
