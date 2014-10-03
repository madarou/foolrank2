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
@Table(name="schoolscore")
public class SchoolScore {

   
	private int schoolId;
	private String shcoolName;
	private int totalScore;
	private int totalPerson;
	
	@Id
	@Column(name="school_id")
	public int getSchoolId() {
		return schoolId;
	}
	public void setSchoolId(int schoolId) {
		this.schoolId = schoolId;
	}
	
	@Column(name="school_name")
	public String getShcoolName() {
		return shcoolName;
	}
	public void setShcoolName(String shcoolName) {
		this.shcoolName = shcoolName;
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