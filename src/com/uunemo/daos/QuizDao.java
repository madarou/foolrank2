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

import com.uunemo.daos.UserDao;
import com.uunemo.util.QuizUtil;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.User;

@Repository(value="QuizDao")
public class QuizDao {
	
	private static final Logger log = LoggerFactory.getLogger(QuizDao.class);

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	//根据测试名进行精确查询
	public Quiz getQuizByExactName(String name){
		String hql = "from Quiz quiz where quiz.quizName=?";
		List<Quiz> quizes = null;
		try {
			quizes = hibernateTemplate.find(hql, name);
		} catch (RuntimeException re) {
			log.error("get quiz failed", re);
			throw re;
		}
		if(quizes.size()!=0){
			return quizes.get(0);
		}else{
			return null;
		}
	}
	
	//保存试题
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void save(User transientInstance) {
		log.debug("saving quiz instance");
		try {	
			hibernateTemplate.saveOrUpdate(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	//根据试卷名模糊查询试卷，分页
	public List getQuizByName(String quizName, int pageNum){
		List<Quiz> list_quiz;
		String hql = "from Quiz q where 1=1 ";
		if(quizName.equals("")==false&& quizName !=null){
			hql+="and quizName like '%?%'";
		}
		list_quiz = getListForPage(pageNum, hql);
        return list_quiz;        		 
	}
	
	//根据试卷名模糊查询，无分页
	public List<Quiz> qryQuizByNameNoPage(String quizName) {
		// TODO Auto-generated method stub
		List<Quiz> list_quiz;
		String hql = "from Quiz q where 1=1 ";
		if(quizName.equals("")==false&& quizName !=null){
			hql+="and quizName like '%?%'";
			list_quiz = hibernateTemplate.find(hql,quizName);
		}
		else{
			list_quiz = hibernateTemplate.find(hql);
		}
        return list_quiz;  
	}

	public Quiz getQuizById(int quizId) {
		log.debug("getting quiz with id: " + quizId);
		try {
			return (Quiz)hibernateTemplate.get("com.uunemo.beans.Quiz", quizId);
		} catch (RuntimeException re) {
			log.error("get quiz failed", re);
			throw re;
		}
			
	}
	
	public List getQuizBySetId(int setId){
		String hql = "from Quiz quiz where quiz.setId =?";
		List<Quiz> quizList;
		log.debug("get quiz by setid");
		try {
			quizList = hibernateTemplate.find(hql,setId);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
		return quizList;		
	}
	
	
	 public List getListForPage(final int pagenum, final String hql) {
			List l_element = hibernateTemplate.executeFind(new HibernateCallback() {
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

	public List<Quiz> getQuizByAttr(String attr) {
		// TODO Auto-generated method stub
		String hql = "from Quiz quiz where quiz.quizAttr=?";
		List<Quiz> quizList;
		log.debug("get quiz by attr");
		try {
			quizList = hibernateTemplate.find(hql,attr);
			log.debug("get quiz by attr successful");
		} catch (RuntimeException re) {
			log.error("get quiz by attr failed", re);
			throw re;
		}
		return quizList;	
	}

	
	
	
}
