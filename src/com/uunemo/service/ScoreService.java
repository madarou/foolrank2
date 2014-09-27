package com.uunemo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.*;
import com.uunemo.daos.*;

@Service("ScoreService")
public class ScoreService {
   
	@Resource
	private QuizDao quizDao;
	
	@Resource
	private QuizSetDao quizSetDao;
	
	@Resource
	private UserScoreDao userScoreDao;
	
	@Resource
	private SchoolScoreDao schoolScoreDao;
	
	@Resource
	private UserService userService;
	
	@Resource
	private Score score;
	
	//userid,schoolId 存入session中
	public Score updateUserScore(int userId,int quizId,int questScore){
		
		int currScore =0;
		int quizScore =0;
		
		User user = userService.getUserById(userId);
		
		
		int schoolId = user.getSchoolId();
		//更新userscore
		Quiz quiz = quizDao.getQuizById(quizId);
		quizScore = quiz.getQuizScore();
		
        QuizSet quizSet = quiz.getQuizSet();
        
        int setScoreCriterion = quizSet.getSetScoreCriterion();
        
        List<UserScore> list_uerScore = userScoreDao.getUserScoreBySetId(quizSet.getSetId(),userId);
        //累加usrscore 判断setscore是否已达标，若达标则开启新的set模块
        int setTotalScore=0;
        
        //将quiz所属set内的quiz全部查出，并累加所有quiz的值,判断这个set
        for(UserScore userScore : list_uerScore){
          	if(userScore.getQuizId()==quizId){
          		currScore = userScore.getScore();
          		userScore.setScore(currScore+questScore);
          	}
          	setTotalScore+=userScore.getScore();
        }
        
        if(setTotalScore>setScoreCriterion){
        	System.out.println("该级别已达到");
        }
        
        //对schoolscore的处理，可能并发写很多
        SchoolScore schoolScore = schoolScoreDao.getSScoreBySchoolId(schoolId);
        schoolScore.setTotalScore(schoolScore.getTotalScore()+questScore);
        
        score.setUserScore(currScore);
        score.setQuizScore(quizScore);
        
        return score;        
	}
}
