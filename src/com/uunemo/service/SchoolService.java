package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
	
	public int updateSchoolByName(String name){
		School school = schoolDao.getSchoolByName(name);
		if(school!=null){
			return school.getSchoolId();
		}else{
			school = new School();
			school.setschoolName(name);
			schoolDao.save(school);
			school = schoolDao.getSchoolByName(name);
			return school.getSchoolId();
		}
	}
	
	public void updateSchoolTotalPerson(int schoolId){
		SchoolScore schoolScore = scoreDao.getSchoolScoreById(schoolId);
		schoolScore.setTotalPerson(schoolScore.getTotalPerson()+1);
		scoreDao.saveSchoolScore(schoolScore);
	}

}
