package com.uunemo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.QuizSet;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;

@Controller
public class QuizSetControl {
	
	@Resource
	QuizSetService quizSetService;
	
	@Resource
	QuizService quizService;
	
	
	//查询所有的quizset
	@RequestMapping(value="/quizsetmanage")
//	@RequiresRoles("admin")
	public  String qryAllSet(Model model){
		
		if( quizService.getAllQuizSet()!=null){
			model.addAttribute("list_element",quizService.getAllQuizSet());
		}
		
		return "quizsetmanage";
	}
	
	
	//添加quizset
	@RequestMapping(value="/createquizset")
//	@RequiresRoles("admin")
	public  String createQuizSet(Model model){
		return "editquizset";
	}
	
	
	//为试卷集删除试卷
	@RequestMapping(value="/modifysetdelquiz")
	public @ResponseBody
	String delQuiz(
			@RequestParam int setId,
			@RequestParam String quizes
			){
		quizSetService.delQuiz(setId,quizes);
		return "sucess";
	}
		
	
	
//	@RequestMapping(value="/qryquizsetexactname")
//	public @ResponseBody
//	QuizSet qrySetExactName(
//			@RequestParam String setName
//			){
//		return quizSetService.findQuizExactName(setName);
//	}
//	
//	
	 
	
	//修改quizset
	@RequestMapping(value="/savequizset",method=RequestMethod.POST)
//	@RequiresRoles("admin")
    public @ResponseBody
    String saveOrUpdateQuizSet(
    		  @RequestParam String setName,
			  @RequestParam String remark,
			  @RequestParam int setScore ,
			  @RequestParam List<Integer> quizIdList){
		QuizSet quizSet = quizSetService.findSetByExactName(setName);
		
		if(quizSet==null){
			quizSet = new QuizSet();
		}		
		quizSet.setSetName(setName);
		quizSet.setRemark(remark);
		quizSet.setSetScoreCriterion(setScore);

		quizSetService.saveQuizSet(quizSet,quizIdList);
		return "sucess";
	}
	
	@RequestMapping(value="/qryQuizById",method=RequestMethod.POST)
	public @ResponseBody
	List qryQuizBySetId(@RequestParam int setId){
		return quizService.getQuizBySetId(setId);
	}

}
