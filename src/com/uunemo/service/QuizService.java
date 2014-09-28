package com.uunemo.service;



import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.Option;
import com.uunemo.beans.Question;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.QuizSet;
import com.uunemo.beans.Score;
import com.uunemo.daos.QuestionDao;
import com.uunemo.daos.QuizDao;
import com.uunemo.daos.QuizSetDao;

@Service("QuizService")
public class QuizService {
	
	int questionnum =0;
    
    @Resource(name="QuestionDao")
	QuestionDao questionDao;
	
    @Resource(name="QuizDao")
    QuizDao quizDao;
    
    @Resource
    QuizSetDao quizSetDao;
    
    @Resource
    private ScoreService scoreService;
    
    
    
  
	HashSet<Integer> mySet = new HashSet<Integer>();
	
	public void countQuestionNum(int quizId){
		questionnum= (int) questionDao.countQuestionNum(quizId);
	}
	
	

	public Quiz getQuizInfo(int quizId) {
		// TODO Auto-generated method stub
		return quizDao.getQuizById(quizId);
	}

	public int mark(int userId,int quizId,String answer, StringBuffer realanswer,Integer point) {
		// TODO Auto-generated method stub
		int userQuizScore =0;
		
		if(realanswer.toString().equals(answer)){
			//加分
			int questScore =Integer.parseInt(point.toString());
			userQuizScore=scoreService.updateScore(userId, quizId, questScore);
		}
		else{
			//减分，分数无变化
			System.out.println("wrong");
		}
		
		return userQuizScore;
	}
	
	public List getAllQuizSet(){
		return quizSetDao.getAllSet();
	}
	
	

	public List getQuizBygetQuizByNameName(String quizName,int pageNum) {
		return quizDao.getQuizByName(quizName,pageNum);
	}

	public  List getQuizBySetId(int setId) {
		// TODO Auto-generated method stub
		return quizDao.getQuizBySetId(setId);
	}

	public List<Quiz> qryExtraQuiz(int quizSetId, String quizName) {
		// TODO Auto-generated method stub
		List<Quiz> listQuiz=null;
		
		
		//根据输入条件模糊查询试卷，无分页
		listQuiz = quizDao.qryQuizByNameNoPage(quizName);
		
		QuizSet quizSet = quizSetDao.findQuizSetById(quizSetId);	
		
		if(quizSet!=null){
			Set<Quiz> exListQuiz = quizSet.getQuizes();
			Iterator<Quiz> iter = listQuiz.iterator();
			
			while(iter.hasNext()){
				Quiz quiz = iter.next();
				if(exListQuiz.contains(quiz)){
					iter.remove();  
				}
			}
		}
		
		
		return listQuiz;
	}

	public List<Question> takeQuestions(Integer quizId) {
		// TODO Auto-generated method stub
		Quiz quiz = quizDao.getQuizById(quizId);
		return quiz.getQuestions();
		
	}
	
	
	
	
	
}
