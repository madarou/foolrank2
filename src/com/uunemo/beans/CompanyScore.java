package com.uunemo.beans;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name="company_score")
public class CompanyScore {

	// Fields
	private int companyId;
	private String companyName;
	private int totalScore;
	private int totalPerson;
	
	@Id
	@Column(name="company_id")
	@GeneratedValue
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	@Column(name="company_name")
	public String getcompanyName() {
		return companyName;
	}
	public void setcompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	@Column(name="total_score")
	public int getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(int totalScore) {
		totalScore = totalScore;
	}
	
	@Column(name="total_person")
	public int getTotalPerson() {
		return totalPerson;
	}
	public void setTotalPerson(int totalPerson) {
		totalPerson = totalPerson;
	}
	


	
	

}