package com.uunemo.daos;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.RegisterQuestion;

@Repository(value ="RegisterQuestionDAO")
public class RegisterQuestionDAO {

	@Resource
	private HibernateTemplate hibernateTemplate;

	private String queryQuestionNum = "select count(*) from RegisterQuestion";


	public Long getQuestionNum() {
		return (Long) hibernateTemplate.find(queryQuestionNum)
				.listIterator().next();
	}

	public RegisterQuestion getQuestionById(int id) {
	    return hibernateTemplate.get(RegisterQuestion.class, id);
	}

}
