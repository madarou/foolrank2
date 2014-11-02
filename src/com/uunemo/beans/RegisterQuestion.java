package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="registerquestion")
public class RegisterQuestion {
	
	@Id
	@Column(name="regquestionid",unique=true,nullable=false)
	private int regQuestionId;
	
	@Column(name="regquestionname",length=20,nullable=false)
	private String regquestionName;
	
	@Column(name="regquestioncontent",length=200,nullable=false)
	private String regquestionContent;
	
	@Column(name="regquestionanswer", length=100,nullable=false)
	private String regquestionAnswer;

   
	public int getRegquestionId() {
		return regQuestionId;
	}

	public void setRegquestionId(int regquestionId) {
		regQuestionId = regquestionId;
	}

	public String getRegquestionName() {
		return regquestionName;
	}

	public void setRegquestionName(String regquestionName) {
		this.regquestionName = regquestionName;
	}

	public String getRegquestionContent() {
		return regquestionContent;
	}

	public void setRegquestionContent(String regquestionContent) {
		this.regquestionContent = regquestionContent;
	}

	public String getRegquestionAnswer() {
		return regquestionAnswer;
	}

	public void setRegquestionAnswer(String regquestionAnswer) {
		this.regquestionAnswer = regquestionAnswer;
	}
}

	
