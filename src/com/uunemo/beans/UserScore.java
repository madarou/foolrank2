package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UserScore")
public class UserScore {
	
	
	
	
	
	@Id
	@GeneratedValue
	@Column(name="userid")
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getQuizId() {
		return quizId;
	}
	public void setQuizId(int quizId) {
		this.quizId = quizId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	
	private int userId;
	private int quizId;
	private int score;
	
}
