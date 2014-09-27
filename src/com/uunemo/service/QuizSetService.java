package com.uunemo.service;


import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.Quiz;
import com.uunemo.beans.QuizSet;
import com.uunemo.daos.QuizDao;
import com.uunemo.daos.QuizSetDao;

@Service("QuizSetService")
public class QuizSetService {

	
	@Resource
	QuizSetDao quizSetDao;
	
	@Resource
	QuizDao quizDao;
	
	//根据试卷集名精确查询试卷集
	public QuizSet findSetByExactName(String setName){
		
		return quizSetDao.findSetByExactName(setName);
	}
		
	//根据试卷集名模糊查询试卷集、分页
	public List findQuizSetByNamePaginator(String setName,int pageNum){
		return quizSetDao.findQuizSetByName(setName, pageNum);
	}
		
		
		
	public void saveQuizSet(QuizSet quizSet,List<Integer> quizIdList){
	
		Set<Quiz> quizes = new HashSet<Quiz>();
		for(int i:quizIdList){
			Quiz quiz = quizDao.getQuizById(i);
			quizes.add(quiz);
		}
		quizSet.setQuizes(quizes);
		quizSetDao.saveQuizSet(quizSet);
	}
	

	
	
	


	public void delQuiz(int setId, String quizes) {
		// TODO Auto-generated method stub
		QuizSet quizSet = quizSetDao.getSetById(setId);
		Set<Quiz> listQuiz = quizSet.getQuizes();
		String[] strQuiz = quizes.split(",");
		
		Iterator<Quiz> iter = listQuiz.iterator();
		while(iter.hasNext()){
		Quiz quiz = iter.next();	
			for(int i=0;i<strQuiz.length;i++){
					if(quiz.getQuizId() == Integer.parseInt(strQuiz[i]));
					iter.remove();
				}
		}
		
		quizSet.setQuizes(listQuiz);
		
		quizSetDao.saveQuizSet(quizSet);
		
	}
	
	public QuizSet findQuizSetById(int quizSetId){
		return quizSetDao.findQuizSetById(quizSetId);
	}
}
