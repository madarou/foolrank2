package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.User;


/**
 * A data access object (DAO) providing persistence and search support for User
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.uunemo.beans.User
 * @author MyEclipse Persistence Tools
 */
@Repository(value="UserDao")
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class UserDao  {
	private static final Logger log = LoggerFactory.getLogger(UserDao.class);
	
	@Resource
	private HibernateTemplate hibernateTemplate;
		
	
	protected void initDao() {
		// do nothing	
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void save(User transientInstance) {
		log.debug("saving User instance");
		try {
			getHibernateTemplate().saveOrUpdate(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public void update(User user){
		log.debug("saving User instance");
		try {
			getHibernateTemplate().update(user);
			log.debug("update successful");
			System.out.println("update sucess");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	

	public void delete(User persistentInstance) {
		log.debug("deleting User instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

//用户名唯一
	public User findByName(String username){
		log.debug("getting User instance with username: " + username);
		try {
			//user find to found User
		    List<User> list_user = getHibernateTemplate().find("from User as us where us.username = ?", username);
			if(list_user.size()==0){
				log.info("can not found username");
				return null;
			}else{
                return list_user.get(0);				
			}
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
	
	public User findByEmail(String email){
		log.debug("getting User instance with email: " + email);
		List<User> list_email;
		try {
			 list_email =  getHibernateTemplate().find("from User as us where us.email = ?", email);			
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
		if(list_email.size()!=0){
			return list_email.get(0);
		}else{
			return new User();
		}
		
	}
	
	
	

	public User findById(java.lang.Integer id) {
		log.debug("getting User instance with id: " + id);
		try {
			User instance = (User) getHibernateTemplate().get("com.uunemo.beans.User", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}


	public List findAll() {
		log.debug("finding all User instances");
		try {
			String queryString = "from User";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
}