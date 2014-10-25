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
	private ScoreDao scoreDao;
	
	@Resource
	private UserService userService;
	
	@Resource
	private SchoolDao schoolDao;
	
	@Resource
	private CompanyDao companyDao;
	
	
	//更新用户分数，返回本试题的得分
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public int updateScore(int userId,int quizId,int questScore){
		
		User user = userService.getUserById(userId);
		int schoolId = user.getSchoolId();
		int companyId = user.getCompanyId();
		//更新userscore
        UserQuizScore userQuizScore = scoreDao.getQuizScoreById(userId, quizId);
        int latestScore= userQuizScore.getScore()+questScore;
        userQuizScore.setScore(latestScore);
        //更新schoolscore
        School school = schoolDao.getSchoolById(schoolId);
        school.setTotalScore(school.getTotalScore()+questScore);
        
        //更新companyscore
        Company company = companyDao.getCompanyById(companyId);
        company.setTotalScore(company.getTotalScore()+questScore);
     
        saveAllScore(userQuizScore,school,company);      
        
        return latestScore;        
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveAllScore(UserQuizScore userQuizScore,School school,Company company){
		schoolDao.save(school);
		companyDao.save(company);
		scoreDao.saveUserQuizScore(userQuizScore);
	}
	
}
