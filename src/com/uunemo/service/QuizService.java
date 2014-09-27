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
	
	public Question takeQuiz(int quizId,Set<Integer> questionSet,StringBuffer realanswer){
		Question quest=new Question();
		if(0==questionnum){
			countQuestionNum(quizId);
		}
		if(questionSet.size()==questionnum){ //问题已取完
			quest.setQuestionContent("end");
		}
        else { //取问题，确保不重复，最后一题则提示，跳转
			int i;
			Random random = new Random();
			i = random.nextInt(questionnum);
			while (questionSet.contains(i)) {
				i = random.nextInt(questionnum);
			}
			questionSet.add(i);
			quest = questionDao.fetchQuestion(quizId, i);
			//将问题是否正确去掉，并将正确答案保存为一个字符串
			realanswer.delete(0, realanswer.length());
		    for(Option op:quest.getoptions()){
		    	if(op.getRightFlag()!=0){
		    		realanswer.append("1");
		    	}
		    	else{
		    		realanswer.append("0");
		    	}  	
		    }
		}
		return quest;
	}

	public String getQuizInfo(int quizId) {
		// TODO Auto-generated method stub
		Quiz quiz = quizDao.getQuizById(quizId);
		return quiz.getQuizInfo();
	}

	public Score mark(int userId,int quizId,String answer, StringBuffer realanswer,StringBuffer point) {
		// TODO Auto-generated method stub
		Quiz quiz = quizDao.getQuizById(quizId);
		
		Score score = new Score();
		
		if(realanswer.toString().equals(answer)){
			//加分
			System.out.println("right");
			int questScore =Integer.parseInt(point.toString());
		    score=scoreService.updateUserScore(userId, quizId, questScore);
		}
		else{
			//减分，分数无变化
			System.out.println("wrong");
		}
		
		return score;
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
	
	
	
	
	
}
