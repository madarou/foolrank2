package com.uunemo.beans;

import java.util.ArrayList;
import java.util.List;
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

import com.uunemo.util.QuizConstant;


@Entity
@Table(name = "quiz")
public class Quiz {
	
	private int quizId=0;		
	private String quizName="";
	private String quizInfo="";
	private int quizScore =0;
	private String quizAttr =QuizConstant.QUIZ_FREE; //测试类型：免登录、需登录、需付费
	
	
	@Column(name="quiz_attr",length=20)
	public String getQuizAttr() {
		return quizAttr;
	}

	public void setQuizAttr(String quizAttr) {
		this.quizAttr = quizAttr;
	}

	private QuizSet quizSet;
	private List<Question> questions = new ArrayList<Question>();
	
	
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
	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {	
		this.questions = questions;
	}

	@Column(name="quiz_score",nullable=false)
	public int getQuizScore() {
		return quizScore;
	}

	public void setQuizScore(int quizScore) {
		this.quizScore = quizScore;
	}

	@Column(name="quiz_info",nullable=false)
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
	
	
	
	@Column(name="quiz_name",length=20,unique=true,nullable=false)
	public String getQuizName() {
		return quizName;
	}

	public void setQuizName(String quizName) {
		this.quizName = quizName;
	}

}
