package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.CompanyScore;
import com.uunemo.beans.SchoolScore;
import com.uunemo.beans.User;
import com.uunemo.beans.UserQuizScore;


@Repository(value="ScoreDao")
public class ScoreDao {
	
	
	private static final Logger log = LoggerFactory.getLogger(ScoreDao.class);

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	@Resource
	private UserQuizScore userQuizScore;
	
	
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveUserQuizScore(UserQuizScore transientInstance) {
		log.debug("saving UserQuizScore instance");
		try {
			hibernateTemplate.saveOrUpdate(transientInstance);
		} catch (RuntimeException re) {
			log.error("save userQuizScore failed", re);
			throw re;
		}
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveSchoolScore(SchoolScore transientInstance) {
		log.debug("saving SchoolScore instance");
		try {
			hibernateTemplate.saveOrUpdate(transientInstance);
		} catch (RuntimeException re) {
			log.error("save SchoolScore failed", re);
			throw re;
		}
	}
	
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveCompanyScore(CompanyScore transientInstance) {
		log.debug("saving SchoolScore instance");
		try {
			hibernateTemplate.saveOrUpdate(transientInstance);
		} catch (RuntimeException re) {
			log.error("save CompanyScore failed", re);
			throw re;
		}
	}
	
	
	public UserQuizScore getQuizScoreById(int userId, int quizId){
		Integer[] params ={userId,quizId};
		String hql ="from UserQuizScore score where score.userId =? and score.quizId = ?";
		List<UserQuizScore> userQuizScores=null;
		log.debug("getQuizscore by userId and quizId");
		try {
			userQuizScores = hibernateTemplate.find(hql,params);
		} catch (RuntimeException re) {
			log.error("getQuizscore by userId and quizId failed", re);
			throw re;
		}
		if(userQuizScores.size() !=0){
			return userQuizScores.get(0);
		}else{
			return new UserQuizScore();
		}
				
	}
	
	public SchoolScore getSchoolScoreById(int schoolId) {
		// TODO Auto-generated method stub
		SchoolScore schoolScore=new SchoolScore();
		try {
			schoolScore =  hibernateTemplate.get(SchoolScore.class,  schoolId);
		} catch (RuntimeException re) {
			// TODO: handle exception
			log.error("get school score failed", re);
			throw re;
		}
		return schoolScore;
	}
	
	public CompanyScore getCompanyScoreById(int companyId){
		CompanyScore companyScore = new CompanyScore();
		try {
			companyScore =  hibernateTemplate.get(CompanyScore.class,  companyId);
		} catch (RuntimeException re) {
			// TODO: handle exception
			log.error("get school score failed", re);
			throw re;
		}
		return companyScore;
	}
	

}
