package com.uunemo.daos;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.SchoolScore;

@Repository(value="SchoolScoreDao")
public class SchoolScoreDao {

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	private static final Logger log = LoggerFactory.getLogger(UserScoreDao.class);

	public SchoolScore getSScoreBySchoolId(int schoolId) {
		// TODO Auto-generated method stub
		SchoolScore schoolScore=null;
		try {
			schoolScore =  hibernateTemplate.get(SchoolScore.class,  schoolId);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return schoolScore;
	}
}
