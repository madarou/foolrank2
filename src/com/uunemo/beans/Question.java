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
  private Set<Tag> tags = new HashSet<Tag>();
  private String answer="";
  
 

  @ManyToMany(cascade ={ CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.EAGER)  
  @JoinTable(
		name = "question_tag",
		joinColumns = @JoinColumn(name = "question_id"),
		inverseJoinColumns = @JoinColumn(name = "tag_id")
	)
  public Set<Tag> getTags() {
	return tags;
  }

  public void setTags(Set<Tag> tags) {
	this.tags = tags;
  }

  @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH},fetch = FetchType.LAZY)
  @JoinColumn(name = "quiz_id")
  public Quiz getQuiz() {
	return quiz;
  }

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}
 
    @OneToMany(cascade = CascadeType.ALL,fetch= FetchType.EAGER)
    @JoinColumn(name="question_id")
	public Set<Option> getoptions() {
		return options;
	}

	public void setOptions(Set<Option> options) {
		this.options = options;
	}

	@Column(name = "point", length = 8)
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

	@Column(name="question_content",length=5000)
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

	@Column(name = "answer", length = 5000)
	  public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
  
  
}
