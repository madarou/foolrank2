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
@Table(name="user")
public class User {

	// Fields
	private Integer userid=0 ;
	private String username="";
	private String password="";
    private String realname="";
    private int schoolId=0;
    private String email="";	
    private String company;
    
    private Set<Career> careers = new HashSet<Career>(); //职业规划
    private Set<Honor> honors = new HashSet<Honor>(); //荣誉
    private Set<Role> roles = new HashSet<Role>(); //角色
    
    
    @ManyToMany(cascade ={ CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY)  
	@JoinTable(
		name = "user_career",
		joinColumns = @JoinColumn(name = "user_id"),
		inverseJoinColumns = @JoinColumn(name = "career_id")
	)
    public Set<Career> getCareers() {
		return careers;
	}


	public void setCareers(Set<Career> careers) {
		this.careers = careers;
	}

	@ManyToMany(cascade ={ CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY)  
	@JoinTable(
		name = "user_career",
		joinColumns = @JoinColumn(name = "user_id"),
		inverseJoinColumns = @JoinColumn(name = "honor_id")
	)
	public Set<Honor> getHonors() {
		return honors;
	}


	public void setHonors(Set<Honor> honors) {
		this.honors = honors;
	}


	
    
    @ManyToMany(cascade ={ CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY)  
	@JoinTable(
			name = "user_role",
			joinColumns = @JoinColumn(name = "user_id"),
			inverseJoinColumns = @JoinColumn(name = "role_id")
			)
	public Set<Role> getRoles() {
		return roles;
	}


	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	 @Id
	    @GeneratedValue
	    @Column(name = "user_id",unique =true,nullable=false)
	public Integer getUserid() {
		return userid;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	@Column(name="user_name",unique=true,length=100 )
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	 @Column(name="password",length=100)
	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	 @Column(name="real_name",length=100)
	public String getRealname() {
		return realname;
	}


	public void setRealname(String realname) {
		this.realname = realname;
	}

	 @Column(name="school_id",length=100)
	public int getSchoolId() {
		return schoolId;
	}


	public void setSchoolId( int schoolid) {
		this.schoolId = schoolid;
	}

	 @Column(name="email",length=100)
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


   @Column(name="company",length=100)
    public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	
    
    public User(Integer user_id, String user_name, String password,
			String real_name, int school_id, String email) {
		super();
		this.userid = user_id;
		this.username = user_name;
		this.password = password;
		this.realname = real_name;
		this.schoolId = school_id;
		this.email = email;
	}

    
    public User() {
		// TODO Auto-generated constructor stub
	}


	
	

}