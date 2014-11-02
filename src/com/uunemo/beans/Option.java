package com.uunemo.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "options")
public class Option {
	
	private int optionId;
	private String option;
	private int rightFlag=0;

	@Column(name="right_flag",nullable=false)
	public int getRightFlag() {
		return rightFlag;
	}
	public void setRightFlag(int rightFlag) {
		this.rightFlag = rightFlag;
	}
	@Id
	@GeneratedValue
	@Column(name="option_id",length=8,unique=true)
	public int getOptionId() {
		return optionId;
	}
	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}
	
	
	@Column(name="options",length=5000,nullable=false)
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	
	
	
	
	

}
