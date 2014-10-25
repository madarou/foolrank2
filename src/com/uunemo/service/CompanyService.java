package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.Company;
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
			company.setTotalPerson(company.getTotalPerson()+1);
			return company.getCompanyId();
		}else{
			company = new Company();
			company.setTotalPerson(1);
			company.setCompanyName(name);
			companyDao.save(company);
			company = companyDao.getCompanyByName(name);
			return company.getCompanyId();
		}
	}
}
