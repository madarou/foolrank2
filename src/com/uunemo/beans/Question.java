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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "question")
public class Question {
  private int questionId=0;
  private String questionContent="";
  private int point=0;
  private String questionType="";
  private Quiz quiz;
  private Set<Option> options = new HashSet<Option>();
  
  @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH},fetch = FetchType.LAZY)
  @JoinColumn(name = "quiz_id")
  public Quiz getQuiz() {
	return quiz;
  }

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}
 
  @OneToMany(cascade = CascadeType.ALL,mappedBy = "question",fetch = FetchType.LAZY)
	public Set<Option> getoptions() {
		return options;
	}

	public void setOptions(Set<Option> options) {
		this.options = options;
	}

	@Column(name = "question_num", length = 8)
	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

  
    @Id
	@GeneratedValue
	@Column(name="question_id",length=8,unique=true)
	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	@Column(name="question_content")
	public String getQuestionContent() {
		return questionContent;
	}

	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}

	
	@Column(name="question_type",length=10)
	public String getQuestionType() {
		return questionType;
	}

	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}

  
  
  
}
