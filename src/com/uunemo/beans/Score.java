package com.uunemo.beans;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//辅助类，用于传递分数
@Component("Score")
@Scope("prototype")
public class Score {
	public int userScore =0;  //用户分数
	
	public int quizScore =0;  //考试分数

	

	public int getQuizScore() {
		return quizScore;
	}

	public void setQuizScore(int quizScore) {
		this.quizScore = quizScore;
	}

	public int getUserScore() {
		return userScore;
	}

	public void setUserScore(int userScore) {
		this.userScore = userScore;
	}
 
}
