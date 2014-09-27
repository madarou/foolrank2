package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.UserScore;


@Repository(value="UserScoreDao")
public class UserScoreDao {
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	private static final Logger log = LoggerFactory.getLogger(UserScoreDao.class);

	public List<UserScore> getUserScoreBySetId(int setId,int userId) {
		// TODO Auto-generated method stub
	 String hql ="select userscore.* from Quiz quiz, UserScore userscore where quiz.quizId=userscore.quizId " +
	 		" and quiz.quizSetId=? and userScore.userId=?";
	 Integer[] paramInt={setId,userId};
	
	 List<UserScore> list_userScore =null;
	 try {
		 list_userScore = hibernateTemplate.find(hql,paramInt);	
	} catch (RuntimeException re) {
		// TODO: handle exception
		log.error("get userscore failed"+re.toString());
	}
	
	return list_userScore;
	
	 
	 
	 
		
	}
	
	

}
