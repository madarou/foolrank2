package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name="school")
public class School{

	// Fields
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "school_id",unique =true,nullable=false)
	private Integer schoolId;
    
  
	public Integer getSchoolId() {
		return schoolId;
	}


	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}


	public String getschoolName() {
		return schoolName;
	}


	public void setschoolName(String name) {
		this.schoolName = name;
	}

	@Column(name="conuntry",length=50 )
	private String conuntry ="";

	@Column(name="location",length=20)
	private String location="";

    @Column(name="school_name",length=100)
    private String schoolName="";
    
    @Column(name="preset",length=2)
    private int preset = 0;
    
    public int getPreset() {
		return preset;
	}


	public void setPreset(int preset) {
		this.preset = preset;
	}


	public School() {
		// TODO Auto-generated constructor stub
	}
    
    
    public String getConuntry() {
		return conuntry;
	}

	public void setConuntry(String conuntry) {
		this.conuntry = conuntry;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}


}