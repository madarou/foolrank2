package com.uunemo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uunemo.beans.Option;
import com.uunemo.beans.Question;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.Score;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;
import com.uunemo.util.QuizUtil;

@Controller
//@SessionAttributes("questionSet")
public class QuizControl {
	
    private String quizPage="quiz";
	
   
    
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
	
	/**
	 * @param quizId
	 * @param session
	 * @return 
	 * 取一道试题
	 */
	@RequestMapping(value="/takequiz",method=RequestMethod.POST)
	public @ResponseBody 
	Question takeNextQuestion(
			@RequestParam Integer quizId,
			HttpSession session
			){
		//questions用于保存用户的题目
		List<Question> questions = (List) session.getAttribute("questions");
		if(questions==null){
			 questions = quizService.takeQuestions(quizId);
		}
		//随机取一道题并在list中删除，保证用户题目不重复
		Random random = new Random();
		int num = questions.size();
		Question question= questions.get(random.nextInt(num));
		questions.remove(question);
		Integer point = question.getPoint();
	    session.setAttribute("questions", questions);
	    session.setAttribute("point", point); //设置题目分数
	    
		//realanswer用于保存正确答案
		StringBuffer realanswer = (StringBuffer)session.getAttribute("realanswer");
		if(realanswer==null){  
			realanswer=new StringBuffer();
		}
		//清空realanswer，并赋值后重新加入到session
		realanswer.delete(0, realanswer.length());
	    for(Option op:question.getoptions()){
	    	if(op.getRightFlag()!=0){
	    		realanswer.append("1");
	    		op.setRightFlag(0); //将正确答案置空，防止用户通过debug查看到正确答案
	    	}
	    	else{
	    		realanswer.append("0");
	    	}  	
	    }
	    session.setAttribute("realanswer", realanswer);
		return question;
	}
	
	
	/**
	 * @param quizId
	 * @param session
	 * @return 正确答案和本测试的得分
	 * 用户答题，判断正误，并更新分数
	 */
	@RequestMapping(value="/takequiz",method=RequestMethod.POST)
	public @ResponseBody 
	Map takeQuiz(
			@RequestParam(required = true) Integer quizId,
			@RequestParam(required = true) String answer ,
			HttpSession session){
		
		StringBuffer realanswer = (StringBuffer)session.getAttribute("realanswer");
		Integer point = (Integer)session.getAttribute("point");
		//判断问题对错,并对累计分数
		Integer userQuizScore =0;
		if(session.getAttribute("userId")!=null){
			Integer userId = (Integer)session.getAttribute("userId");
			userQuizScore = quizService.mark(userId,quizId,answer,realanswer,point);
		}
		
		//将用户分数和正确答案返回
	    Map map = new HashMap<String, Object>();
		map.put("realanswer", realanswer);
		map.put("score",userQuizScore);
		
	    return map;
	}
	
	
	@RequestMapping(value="/viewquiz",method=RequestMethod.GET)
	/*@RequiresRoles("user")*/
	public String viewQuiz(
			@RequestParam int quizId,
			Model model){
		Quiz quiz = quizService.getQuizInfo(quizId);
		model.addAttribute("quiz",quiz);
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
