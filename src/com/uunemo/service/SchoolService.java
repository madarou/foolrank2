package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.School;
import com.uunemo.daos.SchoolDao;

@Service("SchoolService")
public class SchoolService {
	
	@Resource
	public SchoolDao schoolDao;
	
	public int updateSchoolById(String name){
		School school = schoolDao.getSchoolByName(name);
		if(school!=null){
			return school.getSchool_id();
		}else{
			school = new School();
			school.setschoolName(name);
			schoolDao.save(school);
			school = schoolDao.getSchoolByName(name);
			return school.getSchool_id();
		}
	}

}
