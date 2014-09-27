package com.uunemo.beans;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

//准备用作技能树,预留

@Entity
@Table(name = "quizset")
public class QuizSet {
	
    private int quizSetId;
	
	private String quizSetName="";
	
	private Integer setScoreCriterion=0;
	
	private String remark="";
	
	private Set<Quiz> quizes;
	
	
	/* quizSetId表示Quiz中的getQuizSetId方法，OneToMany是配置在该方法上
	 * */
	@OneToMany(mappedBy="quizSet")
	public Set<Quiz> getQuizes() {
		return quizes;
	}

	public void setQuizes(Set<Quiz> quizes) {
		this.quizes = quizes;
	}

	@Column(name ="remark",length=100)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name="set_score_criterion")
	public Integer getSetScoreCriterion() {
		return setScoreCriterion;
	}

	public void setSetScoreCriterion(Integer setScoreCriterion) {
		this.setScoreCriterion = setScoreCriterion;
	}

	@Id
	@GeneratedValue
	@Column(name="quizset_id",length=8,unique=true)
	public int getSetId() {
		return quizSetId;
	}

	public void setSetId(int setId) {
		this.quizSetId = setId;
	}
	@Column(name="quizset_name",unique=true,length=20)
	public String getSetName() {
		return quizSetName;
	}

	public void setSetName(String setName) {
		this.quizSetName = setName;
	}

	

	
	
}
