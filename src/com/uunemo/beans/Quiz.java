package com.uunemo.beans;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "quiz")
public class Quiz {
	
	private int quizId=0;		
	private String quizName="";
	private String quizInfo="";
	private int quizScore =0;
	private QuizSet quizSet;
	private Set<Question> questions = new HashSet<Question>();
	
	
	@Id
	@GeneratedValue
	@Column(name="quiz_id",length=8,unique=true)
	public int getQuizId() {
		return quizId;
	}

	public void setQuizId(int quizId) {
		this.quizId = quizId;
	}
	
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "quiz",fetch = FetchType.LAZY)
	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {	
		this.questions = questions;
	}

	@Column(name="quiz_score")
	public int getQuizScore() {
		return quizScore;
	}

	public void setQuizScore(int quizScore) {
		this.quizScore = quizScore;
	}

	@Column(name="quiz_info")
	public String getQuizInfo() {
		return quizInfo;
	}

	public void setQuizInfo(String quizInfo) {
		this.quizInfo = quizInfo;
	}

	
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH},fetch = FetchType.LAZY)
    @JoinColumn(name = "quizset_id")
	public QuizSet getQuizSet() {
		return quizSet;
	}

	public void setQuizSet(QuizSet quizeSet) {
		this.quizSet = quizeSet;
	}
	
	
	
	@Column(name="quiz_name",length=20,unique=true)
	public String getQuizName() {
		return quizName;
	}

	public void setQuizName(String quizName) {
		this.quizName = quizName;
	}

}
