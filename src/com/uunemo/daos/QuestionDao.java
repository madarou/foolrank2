package com.uunemo.daos;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.Question;
import com.uunemo.util.QuizUtil;

@Repository(value="QuestionDao")
public class QuestionDao {

	private static final Logger log = LoggerFactory.getLogger(TagDao.class);
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	public long countQuestionNum(int quizId){
		String sql = "select count(*) from Question qest where qest.quizId=?";
		return (Long)hibernateTemplate.find(sql, quizId).listIterator().next();
	}
	
	public Question fetchQuestion(int quizId, int num){
		Integer [] param={quizId,num};
		String sql = "from Question q where q.quizId=? and q.questionNum=?";  
		List<Question> list_question =  hibernateTemplate.find(sql,param);
		if(list_question.size()!=0){
			return list_question.get(0);
		}
		else{
			return null;
		}
	}

	public void save(Question question) {
		// TODO Auto-generated method stub
		try {
			hibernateTemplate.save(question);
			log.debug("save question successful");
		} catch (RuntimeException re) {
			log.error("save question failed", re);
			throw re;
		}
	}

	public List getAllQuestion(int pageNum) {
		// TODO Auto-generated method stub
		String hql = "from Question";
		return getListForPage(pageNum, hql);
	}
	
	
	public List getQuestionAs(String searchText, int pageNum) {
		// TODO Auto-generated method stub
		String hql = "from Question question where question.questionContent like "+"'%"+searchText+"%'";
		return getListForPage(pageNum, hql);				
	}
	
	
	 public List getListForPage(final int pageNum, final String hql) {
			List l_element = hibernateTemplate.executeFind(new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
					query.setFirstResult((pageNum-1)*QuizUtil.MAX_PAGE);
					query.setMaxResults(QuizUtil.MAX_PAGE);
					List list = query.list();
					return list;
				}
			});
			return l_element;
		}

	
	 
	 public int countRecord(String searchText){
	    String hql = "select count(*) from Question question";
  	    if(searchText.equals("")==false){
  	    	hql+=" where question.questionContent like "+"'%"+searchText+"%'";
  	    }
  	    Long record = (Long) hibernateTemplate.find(hql)
				.listIterator().next();
  	  
  	    
  	    return record.intValue();
	 }

	
	 
	 
	public void delQuestion(int questionId) {
		// TODO Auto-generated method stub
		Question questinon = getQuestionById(questionId);
		hibernateTemplate.delete(questinon);
	}

	public Question getQuestionById(int questionId) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Question.class, questionId);
	}

	public Question getQuestionbyContent(String questionContent) {
		// TODO Auto-generated method stub
		String hql = "from Question question where question.questionContent = ?";
		List<Question> listQuestion = null;
		log.debug("get question by content");
		try {
			listQuestion = hibernateTemplate.find(hql,questionContent);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
		if(listQuestion.size()!=0){
			return listQuestion.get(0);
		}else{
			return null;
		}
	}
}
