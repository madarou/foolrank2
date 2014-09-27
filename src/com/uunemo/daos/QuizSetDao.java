package com.uunemo.daos;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.Quiz;
import com.uunemo.beans.QuizSet;
import com.uunemo.util.QuizUtil;

@Repository(value="QuizSetDao")
public class QuizSetDao {

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	private static final Logger log = LoggerFactory.getLogger(QuizSetDao.class);

	public QuizSet getSetById(Integer quizSetId) {
		// TODO Auto-generated method stub
		QuizSet quizSet = null;
		try {
	         quizSet = hibernateTemplate.get(QuizSet.class,quizSetId);
		} catch (RuntimeException re) {
			// TODO: handle exception
			log.error("error, get quizSet by setId failed");
		}
        
        
		return quizSet;
	}
	
	public List getAllSet(){
		List<QuizSet> listQuizSet= hibernateTemplate.loadAll(QuizSet.class);
		if(listQuizSet!=null){
			return listQuizSet;
		}else{
			return null;
		}
		
	}
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void saveQuizSet(QuizSet quizSet) {
		// TODO Auto-generated method stub
		log.debug("saving quizSet instance");
		try {
			hibernateTemplate.save(quizSet);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
		
	}
	
	
	//根据set名做精确匹配
	public QuizSet findSetByExactName(String setName){
		String hql = "from QuizSet quizset where quizset.setName = ?";	
		List<QuizSet> listSet;
		// TODO Auto-generated method stub
			log.debug("find set by exact name");
			try {
				listSet = hibernateTemplate.find(hql,setName);
				log.debug("qry successful");
			} catch (RuntimeException re) {
				log.error("qry failed", re);
				throw re;
			}
		if(listSet.size()== 0){
			return null;
		}	
		else {
			return listSet.get(0);
		}	
	}
	
	

	//根据set名做模糊匹配并分页
	public List findQuizSetByName(String setName,int pageNum) {
		// TODO Auto-generated method stub
		String hql = "from QuizSet quizset where quizset.setName like %"+setName+"%";
		return getListForPage(pageNum, hql);
	}
	
	
	
	
	 public List getListForPage(final int pagenum, final String hql) {
			List l_element = getHibernateTemplate().executeFind(new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
					query.setFirstResult((pagenum-1)*QuizUtil.MAX_PAGE);
					query.setMaxResults(QuizUtil.MAX_PAGE);
					List list = query.list();
					return list;
				}
			});
			return l_element;
		}

	public QuizSet findQuizSetById(int quizSetId) {
		// TODO Auto-generated method stub
		QuizSet quizSet = null;
		log.debug("find set by id");
		try {
			quizSet = hibernateTemplate.get(QuizSet.class,quizSetId);
			log.debug("qry successful");
		} catch (RuntimeException re) {
			log.error("qry failed", re);
			throw re;
		}
		return quizSet;
	}
	
}
