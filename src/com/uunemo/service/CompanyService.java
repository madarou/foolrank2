package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.Company;
import com.uunemo.beans.CompanyScore;
import com.uunemo.daos.CompanyDao;
import com.uunemo.daos.ScoreDao;

@Service("CompanyService")
public class CompanyService {
	
	@Resource
	public CompanyDao companyDao;
	
	@Resource
	public ScoreDao scoreDao;
	
	public int updateCompanyByName(String name){
		Company company = companyDao.getCompanyByName(name);
		if(company!=null){
			return company.getCompanyId();
		}else{
			company = new Company();
			company.setCompanyName(name);
			companyDao.save(company);
			company = companyDao.getCompanyByName(name);
			return company.getCompanyId();
		}
	}
	
	public void updateCompanyTotalPerson(int companyId){
		CompanyScore companyScore = scoreDao.getCompanyScoreById(companyId);
		companyScore.setTotalPerson(companyScore.getTotalPerson()+1);
		scoreDao.saveCompanyScore(companyScore);
	}

}
