package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.Company;
import com.uunemo.beans.School;

@Repository("CompanyDao")
public class CompanyDao {
	
	private static final Logger log = LoggerFactory.getLogger(CompanyDao.class);
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void save(Company transientInstance) {
		log.debug("save company");
  		try {
			getHibernateTemplate().save(transientInstance);
		} catch (RuntimeException re) {
			log.error("save company failed");
			throw re;
		}
	}
	
	
	public Company getCompanyByName(String name){
		String hql = "from Company company where company.companyName = ?";
		List companyList = null;
		try {	
			companyList =  getHibernateTemplate().find(hql,name);
		} catch (RuntimeException re) {
			log.error("save company by name failed");
			throw re;
		}
		if(companyList.size()!=0){
			return (Company)companyList.get(0);
		}else{
			return new Company();
		}
		
	}

	
	
}
