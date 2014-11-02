package com.uunemo.util;

public class QuizConstant {
	//试题属性
	public static final String QUIZ_FREE = "free"; //免费，不用登录就能做
	public static final String QUIZ_REGISTER = "register";//需注册登录
	public static final String QUIZ_PAID = "paid";//需付费
	
	//用户类型
	public static final String ROLE_USER = "user";//登录用户
	public static final String ROLE_PAIDUSER = "advanceduser"; //付费用户
	public static final String ROLE_OPERATOR = "operator"; //业务操作用户
	public static final String ROLE_ADMIN = "admin"; //管理员用户
	
	//页面
	public static final String ERROR = "error";//错误页面
	
	//试题导入时excel定义的列名
	public static final String QUESTION_TYPE = "type";
	public static final String QUESTION_SCORE = "score";
	public static final String QUESTION_TAG = "tag";
	public static final String QUESTION_CONTENT = "questioncontent";
	public static final String QUESTION_OPTION = "option";
	public static final String QUESTION_RIGHT = "right";
	public static final String QUESTION_TESTCASE = "testcase";
	public static final String QUESTION_RESULT = "result";
	public static final String QUESTION_TESTSCORE = "testscore";
	public static final String QUESTION_REPONAME = "reponame";
	public static final String QUESTION_ANSWER = "answer";
	
	//试题类型
	public static final String QUESTION_TYPE_OPTION = "option";
	public static final String QUESTION_TYPE_ESSAY ="essay";
	public static final String QUESTION_TYPE_PROGRAM ="pragram";
}
