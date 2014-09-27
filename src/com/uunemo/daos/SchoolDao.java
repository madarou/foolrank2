package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.School;

@Repository("SchoolDao")
public class SchoolDao {
	
	private static final Logger log = LoggerFactory.getLogger(SchoolDao.class);
	
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

	public void save(School transientInstance) {
		log.debug("save school");
  		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			throw re;
		}
	}
	
	public List getAllSchool(){
		String queryAll ="from School";
		try {	
			return getHibernateTemplate().find(queryAll);
		} catch (RuntimeException re) {
			throw re;
		}
	}
	
	public School getSchoolByName(String name){
		String hql = "from School school where school.schoolName = ?";
		List schoolList = null;
		try {	
			 schoolList =  getHibernateTemplate().find(hql,name);
		} catch (RuntimeException re) {
			
			throw re;
		}
		if(schoolList.size()!=0){
			return (School)schoolList.get(0);
		}else{
			return null;
		}
		
	}

	
	
}
