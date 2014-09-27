<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="com.uunemo.util.*"%>
<%@page import="com.uunemo.beans.*"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path",path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";



List listQuiz = (List)request.getAttribute("listQuiz");


%>
<html>
<head>
	<meta charset="utf-8">
	<link href="<%=path%>/resources/css/cssfonts-min.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/resources/css/bootstrap.css" rel="stylesheet">
	<link href="<%=path%>/resources/css/common.css" rel="stylesheet">
	<link href="${path}/resources/css/Uunemo.register.css" rel="stylesheet" type="text/css" />

	<title>UUnemo</title>
</head>
<body class="commonBody">
    <input type="text" style="display:none" id="pageNum" value="1"></input>
    <input type="text" style="display:none" id="maxPageNum" value="<%=QuizUtil.MAX_PAGE%>"></input>
    <input type="text" style="display:none" id="numPerPage" value="<%=QuizUtil.MAX_PAGE%>"></input>

 
     <div class="span2">
	      <ul class="nav nav-pills nav-stacked">
	         <li><a href="viewallset">试卷集管理</a></li>
	         <li><a href="#">试卷管理</a></li>
	         <li><a href="#">试题管理</a></li>
	      </ul>
      </div>


	<div class="mainPanel span9" >
		<div class="regPanel span4"> 
			 <div class="regInfo">	
			    <input type = "text" id="quizsetid" value='${quizSetId}'></input>
				<label class="regLabel"><span>试卷集名称</span><span class="dot">*</span></label>
				<input type="text" id="quizsetname" class="regInput" value="${quizSetName}"/>
				
				<label class="regLabel">分数线</label>
				<input type="text" id="score" class="regInput" value="${score}"/>
				
				<label class="regLabel">备注</label>
				<input type="text" id="remark" class="regInput" value="${remark})"/>
				
				<label class="regLabel">已包含试卷</label>
				<table>
				   <thead>
				     <tr>
				      <td></td>
				      <td>试卷名称</td>
				      <td>说明</td>
				     </tr>
				   </thead>
				   <tbody id="includeQuizBody">
				     <%
				     if(listQuiz!=null&&listQuiz.size()!=0){
				       for(int i=0;i<listQuiz.size();i++){
				    	   Quiz quiz = (Quiz)listQuiz.get(i);
				      %>
				       <tr class="containQuizList">
				         <td><input type="checkbox" class="containQuiz" value="<%=quiz.getQuizId()%>"></input></td>
				         <td>quiz.getQuizName</td>
				         <td>quiz.getQuizInfo</td>
				       </tr>				    	  
				    	   
				     <%  
				       }}
				     %>
				   </tbody>
				</table>
				
				<div class="span2">
			     <button type="button" class="btn" id="delQuiz">删除</button>
			   </div>
			   
			   <div class="span2">
			     <button type="button" class="btn" id="saveQuizSet">保存</button>
			   </div>
			</div>
	   
	    </div>
	      
	      
	   <div class='quizInfoPanel span4  ' >
			<div>
			    <label>试卷名</label>
			    <input type="text" id="quizname"></input>
			    <button class="btn" id="qryquizname" type="button">查询</button>
			  
			</div>
			
			<table id="tableQuiz">
			  <thead>
				  <tr>
				   <td>试卷名</td>
				   <td>描述</td>
				   <td>分数线</td>
				  </tr>
			  </thead>
			  
			  <tbody id="qryedQuizBody">
			  
			  </tbody>
			  
			</table>
			
			 <div class="span6" id ="paginator"></div>
			 
			 <div class="span2">
			     <button type="button" class="btn" id="addQuiz">添加试卷</button>
			 </div>
			 
		</div>
			
		  
		
	</div>
	
    <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
	<script src="${path}/resources/js/editquizset.js" type="text/javascript"></script>
    <script src="<%=path%>/resources/js/bootstrap.js"></script>
	<script src="<%=path%>/resources/js/bootstrap-paginator.js"></script>
</body>
</html>
