package com.uunemo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.uunemo.beans.Option;
import com.uunemo.beans.Question;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.User;
import com.uunemo.daos.QuizDao;
import com.uunemo.service.QuizService;
import com.uunemo.service.QuizSetService;
import com.uunemo.util.QuizConstant;
import com.uunemo.util.QuizUtil;


@Controller
//@SessionAttributes("questionSet")
public class QuizControl {
	private static final Logger log = LoggerFactory.getLogger(QuizControl.class);
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
	@RequestMapping(value="/takeNextQuestion",method=RequestMethod.POST)
	public @ResponseBody 
	Question takeNextQuestion(
			@RequestParam String quizName,
			HttpSession session
			){
		//判断quiz及用户权限
		User user = null;
		if(session.getAttribute("user")!=null){
			user = (User)session.getAttribute("user");	
		}
		String errormsg = quizService.judge(quizName,user);
		if(errormsg.equals("sucess")==false){
			Question question = new Question();
			question.setQuestionType("error");
			question.setQuestionContent(errormsg);
			return question;
		}
		
		//questions用于保存用户的题目
//		List<Question> questions = (List) session.getAttribute("questions");
//		if(questions==null){
//			 questions = quizService.takeQuestions(quizName);
//		}else if(questions.size() ==0){
//			//题目已取完，返回空值
//			 Question question = new Question();
//			 question.setQuestionContent("end");
//			 return question;
//		}
		
		//quizQuestions用于保存用户的试题-题目map，使得用户在同一个session中不会做到同一道题
		Map<String, ArrayList<Question>> quizQuestions = null;
		ArrayList<Question> questions = new ArrayList<Question>();
		//没有，新建
		if(session.getAttribute("quizQuestions")==null){
			quizQuestions = new HashMap<String,ArrayList<Question>>();
		}else{
			quizQuestions = (Map)session.getAttribute("quizQuestions");
		}
		//而后判断map中有无该quiz的试题信息
		if(quizQuestions.containsKey(quizName) == false){
			List<Question> tempList = quizService.takeQuestions(quizName);
			for(Question question:tempList){
				questions.add(question);
			}
			quizQuestions.put(quizName, questions);
		}else{
		    questions = quizQuestions.get(quizName);	
		    if(questions.size()==0){
		//    	题目已取完，返回空值
				 Question question = new Question();
				 question.setQuestionContent("end");
				 return question;
		    }
		}
		
		
		//随机取一道题并在list中删除，保证用户题目不重复
		Random random = new Random();
		int num = questions.size();
//		int rndNum =0;
//		if(num != 1){
//			rndNum = random.nextInt(num);
//		}
//		log.debug(".....................num:"+num+" rndnum:"+rndNum);
		
		Question question= questions.get(random.nextInt(num));
		questions.remove(question);
		Integer point = question.getPoint();
	    session.setAttribute("quizQuestions", quizQuestions);
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
	    question.setQuiz(null);
	    
		return question;
	}
	
	/**
	 * @param quizAttr
	 * @return 根据试题属性取试题
	 * 根据试题属性取试题
	 */
		@RequestMapping(value="/getquizbyattr",method=RequestMethod.POST)
		public @ResponseBody 
		List getQuizByAttr(
				 @RequestParam String attr
				){
		  return quizService.getQuizByAttr(attr);
		 
		}
	
	
	/**
	 * @param quizId
	 * @return 正确答案和本测试的得分
	 * 试题批量导入
	 */
	@RequestMapping(value="/batchimport",method=RequestMethod.POST)
	public @ResponseBody 
	String batchImport(
			 @RequestParam MultipartFile[] file,
			HttpSession session){
	    if(file[0].getSize()>Integer.MAX_VALUE){//文件长度  
			 return "上传文件过大";
	    }  
	    
	    try {
			quizService.batchImport(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
	/**
	 * @param quizId
	 * @param session
	 * @return 正确答案和本测试的得分
	 * 用户答题，判断正误，并更新分数
	 */
	@RequestMapping(value="/answerquestion",method=RequestMethod.POST)
	public @ResponseBody 
	Map answerQuestion(
			@RequestParam(required = true) String quizName,
			@RequestParam(required = true) String answer ,
			@RequestParam(required = true) Integer questionId,
			HttpSession session){
		
		//判断quiz及用户权限
		User user = null;
		if(session.getAttribute("user")!=null){
			user = (User)session.getAttribute("user");	
		}
		String errormsg = quizService.judge(quizName, user);
		if(errormsg.equals("sucess")==false){
		    Map map = new HashMap<String,String>();
		    map.put("error", errormsg);
		    return map;
		}
		
		
		//questionId相同，重复提交，测试环境先注释
//		if(session.getAttribute("questionId")!=null){
//			Integer lastQuestionId = (Integer)session.getAttribute("questionId");	
//		    if (questionId == lastQuestionId){
//		    	return null;
//		    }
//		}
			
		StringBuffer realanswer = (StringBuffer)session.getAttribute("realanswer");
		Integer point = (Integer)session.getAttribute("point");
		//判断问题对错,并对累计分数
		Integer userQuizScore =0;
		if(session.getAttribute("userId")!=null){
			Integer userId = (Integer)session.getAttribute("userId");
			userQuizScore = quizService.mark(userId,quizName,answer,realanswer,point);
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
			@RequestParam String quizName,
			HttpSession session,
			Model model){
		User user = null;
		if(session.getAttribute("user")!=null){
			user = (User)session.getAttribute("user");	
		}
		String errormsg = quizService.judge(quizName,user);
		if(errormsg.equals("sucess")==false){
		   model.addAttribute("errormsg",errormsg);
		   return QuizConstant.ERROR;
		}
		Quiz quiz = quizService.getQuizInfo(quizName);
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
	 
//	@RequiresRoles(value={QuizConstant.ROLE_OPERATOR,QuizConstant.ROLE_ADMIN},logical=Logical.OR) 
//    @RequestMapping(value="/batchImport",method=RequestMethod.POST)
//	@ResponseBody
//	public 	String batchImport(
//	   @RequestParam String excelData	
//			){
//		return null;
//	} 
//	
	
}
