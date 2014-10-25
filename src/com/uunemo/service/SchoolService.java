package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.School;
import com.uunemo.beans.SchoolScore;
import com.uunemo.daos.SchoolDao;
import com.uunemo.daos.ScoreDao;

@Service("SchoolService")
public class SchoolService {
	
	@Resource
	public SchoolDao schoolDao;
	
	@Resource
	public ScoreDao scoreDao; 
	
	//新建或更新school并将school人数+1
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor = Exception.class)
	public int updateSchoolByName(String name){
		School school = schoolDao.getSchoolByName(name);
		if(school!=null){
			school.setTotalPerson(school.getTotalPerson()+1);
			return school.getSchoolId();
		}else{
			school = new School();
			school.setschoolName(name);
			school.setTotalPerson(1);
			schoolDao.save(school);
			school = schoolDao.getSchoolByName(name);
			return school.getSchoolId();
		}
	}


}
