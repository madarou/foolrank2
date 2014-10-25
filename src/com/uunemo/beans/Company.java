package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "company")
public class Company {
	
	private int companyId =0;
	private String companyName="";
	private int totalScore;
	private int totalPerson;
	
	@Id
	@GeneratedValue
	@Column(name="company_id",length=8,unique=true)
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	@Column(name="company_name")
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	@Column(name="total_score")
	public int getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}
	
	@Column(name="total_person")
	public int getTotalPerson() {
		return totalPerson;
	}
	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}	

}
