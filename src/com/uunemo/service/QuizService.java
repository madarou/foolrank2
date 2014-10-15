package com.uunemo.service;



import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.uunemo.beans.Option;
import com.uunemo.beans.Question;
import com.uunemo.beans.Quiz;
import com.uunemo.beans.QuizSet;
import com.uunemo.beans.Tag;
import com.uunemo.beans.User;
import com.uunemo.daos.QuestionDao;
import com.uunemo.daos.QuizDao;
import com.uunemo.daos.QuizSetDao;
import com.uunemo.daos.TagDao;
import com.uunemo.util.QuizConstant;
@Service("QuizService")
public class QuizService {
	
	int questionnum =0;
    
    @Resource(name="QuestionDao")
	QuestionDao questionDao;
	
    @Resource(name="QuizDao")
    QuizDao quizDao;
    
    @Resource(name="TagDao")
    TagDao tagDao;
    
    @Resource
    QuizSetDao quizSetDao;
    
    @Resource
    private ScoreService scoreService;
    
    
    
  
	HashSet<Integer> mySet = new HashSet<Integer>();
	
	public void countQuestionNum(int quizId){
		questionnum= (int) questionDao.countQuestionNum(quizId);
	}
	
	

	public Quiz getQuizInfo(String quizName) {
		// TODO Auto-generated method stub
		return quizDao.getQuizByExactName(quizName);
	}

	public int mark(int userId,String quizName,String answer, StringBuffer realanswer,Integer point) {
		// TODO Auto-generated method stub
		int userQuizScore =0;
		Quiz quiz = quizDao.getQuizByExactName(quizName);
		
		if(realanswer.toString().equals(answer)){
			//加分
			int questScore =Integer.parseInt(point.toString());
			userQuizScore=scoreService.updateScore(userId, quiz.getQuizId(), questScore);
		}
		else{
			//减分，分数无变化
			System.out.println("wrong");
		}
		
		return userQuizScore;
	}
	
	public List getAllQuizSet(){
		return quizSetDao.getAllSet();
	}
	
	

	public List getQuizBygetQuizByNameName(String quizName,int pageNum) {
		return quizDao.getQuizByName(quizName,pageNum);
	}

	public  List getQuizBySetId(int setId) {
		// TODO Auto-generated method stub
		return quizDao.getQuizBySetId(setId);
	}

	public List<Quiz> qryExtraQuiz(int quizSetId, String quizName) {
		// TODO Auto-generated method stub
		List<Quiz> listQuiz=null;
		
		
		//根据输入条件模糊查询试卷，无分页
		listQuiz = quizDao.qryQuizByNameNoPage(quizName);
		
		QuizSet quizSet = quizSetDao.findQuizSetById(quizSetId);	
		
		if(quizSet!=null){
			Set<Quiz> exListQuiz = quizSet.getQuizes();
			Iterator<Quiz> iter = listQuiz.iterator();
			
			while(iter.hasNext()){
				Quiz quiz = iter.next();
				if(exListQuiz.contains(quiz)){
					iter.remove();  
				}
			}
		}
		
		
		return listQuiz;
	}

	public List<Question> takeQuestions(String quizName) {
		// TODO Auto-generated method stub
		Quiz quiz = quizDao.getQuizByExactName(quizName);
		return quiz.getQuestions();
		
	}



	public String judge(String quizName, User user) {
		// TODO Auto-generated method stub
		Quiz quiz = quizDao.getQuizByExactName(quizName);
		if(quiz == null){
			return "无此试题，请不要做无谓尝试";
		}else{
			if (quiz.getQuizAttr().equals(QuizConstant.QUIZ_FREE)==false && user == null){
				//用户未登录但做了需登录区的题
				return "请先登录";
			}
			else if(quiz.getQuizAttr().equals(QuizConstant.QUIZ_PAID) && user.getRoles().contains(QuizConstant.ROLE_PAIDUSER)==false){
				//用户未付费但做了付费区的题
				return "请先付费";
			}
			return "sucess";
		}
	}


//批量导入试题，若有错误则回滚, throw exception to rollback
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public String batchImport(MultipartFile[] file)  throws  Exception  {
		// TODO Auto-generated method stub
		InputStream is = null;
		HSSFWorkbook workbook =null;  
  
		is = file[0].getInputStream();
		workbook = new HSSFWorkbook(is);
	   
	    for(int i=0;i < workbook.getNumberOfSheets();i++){
	    	
	    	HSSFSheet sheet = workbook.getSheetAt(i);
	    	String sheetName = workbook.getSheetName(i);
	    	HSSFRow rowName = sheet.getRow(0);
	    	
	    	//生成辅助对象，map中为对应列名的列号
	    	Map<String, Integer> map = new HashMap<String,Integer>();
	    	List<Integer> options = new ArrayList<Integer>();
	    	List<Integer> rights = new ArrayList<Integer>();
	    	//循环处理第一行，生成对应的列名、列号键值对。将option和right的列号分别存在一个list中
	    	for(int j=0 ;j<rowName.getLastCellNum();j++){
	    		 String cellVal = rowName.getCell(j).getStringCellValue();
		    		 if(cellVal.equals(QuizConstant.QUESTION_OPTION)){
		    			 options.add(j);
		    		 }else if(cellVal.equals(QuizConstant.QUESTION_RIGHT)){
		    			 rights.add(j);
		    		 } else {
		    			 map.put(cellVal, j);
		    		 }
	    	}
	    	
	       //生成quiz,question及option对象，并存入数据库
	    	
	    	//quiz必须是先定义好的
	    	Quiz quiz = quizDao.getQuizByExactName(sheetName);
	    	if(quiz == null){
	    		 return null;
	    	}
	    	
	    	for(int j=1;j<sheet.getLastRowNum();j++){
	      		HSSFRow row = sheet.getRow(j);
	      		Question question = new Question();
	      	    
	      		question.setQuiz(quiz);
	      		question.setQuestionContent((row.getCell(map.
	      				get(QuizConstant.QUESTION_CONTENT)).getStringCellValue()));
	      		question.setPoint((int) (row.getCell(map.
	      				get(QuizConstant.QUESTION_SCORE)).getNumericCellValue()));
	      		question.setQuestionType((row.getCell(map.
	      				get(QuizConstant.QUESTION_TYPE)).getStringCellValue()));
	      		
	      		//处理tag
	      		
	      		Set<Tag> tagSet = new HashSet<Tag>(); 
	      		HSSFCell tagCell = row.getCell(map.get(QuizConstant.QUESTION_TAG));
	      		if(tagCell != null){
	      			String tags = tagCell.getStringCellValue();
		      		//若用户输入了tag
		      		if(tags!=null&&tags!=""){
		      			String[] tagList = null;
			      		//,可能是中文输入，取大的那个
			      		String[] tagList1 = tags.split(",");
			      		String[] tagList2 = tags.split("，");
			      		tagList = (tagList1.length>tagList2.length?tagList1:tagList2);
			      		
			      		for(String tagName:tagList){
			      			Tag tag= tagDao.getTagByName(tagName);
			      			if(tag != null){
			      				tagSet.add(tag);
			      			}else{
			      				tag = new Tag();
			      				tag.setTagName(tagName);
			      				tagSet.add(tag);
			      			}
			      		}
		      		}
	      		}
	      		
	      		
	      		Set<Option> optionSet = new HashSet<Option>();
	      		for(int k=0;k<options.size();k++){
	      			Option option = new Option();
	      			String optionContent ="";
	      			HSSFCell cell = row.getCell(options.get(k));
	      			
	      			if(cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC){
	      				optionContent = cell.getNumericCellValue()+"";
	      			}else{
	      			    optionContent = cell.getStringCellValue();	
	      			}
	      			
	      			option.setOption(optionContent);
	      			option.setRightFlag((int) row.getCell(rights.get(k)).getNumericCellValue());
	      			optionSet.add(option);
	      		}
	      		
	      		question.setQuiz(quiz);
	      		question.setOptions(optionSet);
	      		if(tagSet.size()!=0){
	      			question.setTags(tagSet);
	      		}
	      		questionDao.save(question);
	      	}
	    }
	
		is.close();
	    return "sucess";
	}



	public List getQuizByAttr(String attr) {
		// TODO Auto-generated method stub
		List<Quiz> quizes = quizDao.getQuizByAttr(attr);
		List<String> quizNames = new ArrayList<String>();
		if(quizes.size()!=0){
			for(Quiz quiz:quizes){
				quizNames.add(quiz.getQuizName());
			}	
		}
		
		return quizNames;
	}
	
	
	
	
	
}
