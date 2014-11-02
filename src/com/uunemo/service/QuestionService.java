package com.uunemo.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.Option;
import com.uunemo.beans.Question;
import com.uunemo.daos.QuestionDao;

@Service("QuestionService")
public class QuestionService {
	@Resource
	QuestionDao questionDao;

	@Transactional(propagation=Propagation.REQUIRED,rollbackFor = Exception.class)
	public void saveQuestion(String questionContent,int point,String options){
		Question question = new Question();
		question.setQuestionContent(questionContent);
		
		question.setPoint(point);
		
		Set<Option> setOption = new HashSet<Option>();
		options = options.substring(1,options.length()-1);  //去掉头尾的标点
		String[] strsOption = options.split(",");			//分割成字符串
		
		for(int i=0;i<strsOption.length;i++){
			Option opt = new Option();
			String strOption = strsOption[i];
			strOption = strOption.substring(1,strOption.length()-1);
			opt.setOption(strOption);
			setOption.add(opt);
		}
		question.setOptions(setOption);
		questionDao.save(question);
	}

	public List searchQuestion(String searchText,int pageNum) {
		// TODO Auto-generated method stub
		List<Question> listQuestion = new ArrayList<Question>();
		if(searchText.equals("")){
			listQuestion =	questionDao.getAllQuestion(pageNum);
			//去掉option,使hibernate不进行关联查询
			for(Question question:listQuestion){
				question.setOptions(null);
			}
			//将全部记录条数拼接至最后
			int recordNum = questionDao.countRecord("");
			Question tmpQuestion = new Question();
			tmpQuestion.setPoint(recordNum);
			listQuestion.add(tmpQuestion);
			return listQuestion;
			
		}else{
			//去掉option,使hibernate不进行关联查询
			listQuestion = questionDao.getQuestionAs(searchText,pageNum);   
	        for(Question question:listQuestion){
				question.setOptions(null);
			}
	        //将全部记录条数拼接至最后
	        int recordNum = questionDao.countRecord(searchText);
	    	Question tmpQuestion = new Question();
			tmpQuestion.setPoint(recordNum);
			listQuestion.add(tmpQuestion);
			return listQuestion;
		}
		
		
	}

	@Transactional(propagation=Propagation.REQUIRED,rollbackFor = Exception.class)
	public void delQuestion(String questions) {
		// TODO Auto-generated method stub
		questions = questions.substring(1,questions.length()-1);    //去掉头尾的标点
		String[] strsquestions = questions.split(",");			    //分割成字符串
		for(String question:strsquestions){
			question = question.substring(1,question.length()-1);
			questionDao.delQuestion(Integer.parseInt(question));
		}
		
		
	}

	public Question getQuestionById(int questionId) {
		// TODO Auto-generated method stub
		return questionDao.getQuestionById(questionId);
	}

	public Question getQuestionbyContent(String questionContent) {
		// TODO Auto-generated method stub
		
		return questionDao.getQuestionbyContent(questionContent);
	}
}
