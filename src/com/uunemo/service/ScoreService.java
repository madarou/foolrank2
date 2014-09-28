package com.uunemo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.*;
import com.uunemo.daos.*;

@Service("ScoreService")
public class ScoreService {
   
	@Resource
	private QuizDao quizDao;
	
	@Resource
	private QuizSetDao quizSetDao;
	
	@Resource
	private ScoreDao ScoreDao;
	
	@Resource
	private ScoreDao scoreDao;
	
	@Resource
	private UserService userService;
	
	
	//更新用户分数，返回本试题的得分
	public int updateScore(int userId,int quizId,int questScore){
		
		User user = userService.getUserById(userId);
		int schoolId = user.getSchoolId();
		int companyId = user.getCompanyId();
		//更新userscore
        UserQuizScore userQuizScore = scoreDao.getQuizScoreById(userId, quizId);
        int latestScore= userQuizScore.getScore()+questScore;
        userQuizScore.setScore(latestScore);
        //更新schoolscore
        SchoolScore schoolScore = scoreDao.getSchoolScoreById(schoolId);
        schoolScore.setTotalScore(schoolScore.getTotalScore()+questScore);
        //更新companyscore
        CompanyScore companyScore = scoreDao.getCompanyScoreById(companyId);
        companyScore.setTotalScore(companyScore.getTotalScore()+questScore);
        saveAllScore(userQuizScore,schoolScore,companyScore);      
        
        return latestScore;        
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveAllScore(UserQuizScore userQuizScore,SchoolScore schoolScore,CompanyScore companyScore){
		scoreDao.saveCompanyScore(companyScore);
		scoreDao.saveSchoolScore(schoolScore);
		scoreDao.saveUserQuizScore(userQuizScore);
	}
	
}
