package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "role_quiz")
public class RoleQuiz {
	
	@Id
	@Column(name="role_id",length=8,unique=true)
	private int roleId;
	
	@Column(name="quiz_id",length=8,unique=true)
	private int quizId;
	
	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getQuizId() {
		return quizId;
	}

	public void setQuizId(int quizId) {
		this.quizId = quizId;
	}

	
}
