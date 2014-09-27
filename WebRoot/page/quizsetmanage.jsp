<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="org.apache.shiro.subject.Subject"%>
<%@ page import = "org.apache.shiro.SecurityUtils" %>
<%@ page import = "com.uunemo.beans.*" %>

<%
String path = request.getContextPath();
pageContext.setAttribute("path",path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//if use login,then fetch username, later can do this in a custom filter
Subject currentUser = SecurityUtils.getSubject();
String username = null;
if(currentUser.isAuthenticated()){
	   username = (String)currentUser.getPrincipal();
}
pageContext.setAttribute("username",username);
%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="utf-8">
	<title>Uunemo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<link href="<%=path%>/resources/css/bootstrap.css" rel="stylesheet">
	<link href="<%=path%>/resources/css/common.css" rel="stylesheet">
	<link href="<%=path%>/resources/css/home.css" rel="stylesheet">
	
	
	
	<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
	
</head>

<body class="commonBody">



<!--   nav bar -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#contact">Contact</a></li>

					</ul>
					       
                     <input type="hidden" id="username" value="${username}">
					 <ul id="alreadylogin" class="nav pull-right">
					      <li  class="active"><a id = "showusername">${username}</a></li>
					      <li id="btnlogout" class="btn">logout</li>
					 </ul>
					
				</div>
			</div>
		</div>
	</div>
	<!-- nav bar -->
   <div class ="container">
	<div class="row">
		<div class="span4">
			<div class="logoImg"></div>
			<h1 class="logoText">Uunemo</h1>
		</div>

	</div>
    </div>
    
    <div class ="container">
      <div class="span2">
	      <ul class="nav nav-pills nav-stacked">
	         <li><a href="viewallset">试卷集管理</a></li>
	         <li><a href="#">试卷管理</a></li>
	         <li><a href="#">试题管理</a></li>
	      </ul>
      </div>
      
      <div class="span9 offset1">
       <div>
          <table style="font-size: 12px; table-layout: fixed; border:1px solid #000000">
				          
				           <col width="150px"></col>
				           <col width="120px"></col>
				           <col width="100px"></col>
				    <thead id='tablehead'>     
				           <tr style="background: #666666" >
				           <th align="left" colspan="5" style="color:#fff">银行详情</th>
				    </tr>  
				         
				           <tr style="background: #CCC" >
				             <td></td>
				             <td>试卷集名</td>
				             <td>备注</td>
				             <td>分数线</td>
				             
				           </tr>
				     </thead>
<%-- 							<% --%>
// 							List<QuizSet> list_element = (List<QuizSet>)request.getAttribute("list_element");
							
// 							 if(list_element!=null&& list_element.size()!=0){
// 								for(QuizSet quizset:list_element){
// 								   int	i=1;
<%-- 							%> --%>
<!-- 							<tr>   -->
<!--  							    <td  align="center"> -->
<!--  							      <input type="radio"></input> -->
<%--  							      <input type="text" style="display: none;" value="<%=quizset.getSetId() %>>"></input> --%>
<!--  							    </td> -->
<%-- 								<td ><%=quizset.getSetName()%></td> --%>
<%-- 								<td ><%=quizset.getRemark()%></td> --%>
<%-- 								<td><%=quizset.getSetScoreCriterion()%></td> --%>
								
<!-- 							</tr> -->
<%-- 							<% --%>
// 							   Set<Quiz> quizes = quizset.getQuizes();
// 							   if(quizes!=null&&quizes.size()!=0){
// 							   for(Quiz quiz:quizes){
<%-- 							 %> --%>
<!-- 							   <tr> -->
<!-- 							     <td></td> -->
<%-- 							     <td colspan="3" ><%=quiz.getQuizName() %></td>  --%>
<!-- 							   </tr> -->
<%-- 							<%     	    --%>
// 							   }}}}
<%-- 							%> --%>
						</table>
						
				<div class="span6" id ="paginator"></div>
		  </div>
						
		   <div class="offset1 span9 btngroup" id="">
			   <div class="span2">
			     <button type="button" class="btn" id="createquizset">新建试卷集</button>
			   </div>
			   
			   <div class="span2">
			     <button type="button" class="btn" id="editquizset">修改试卷集</button>
			   </div>
			    
			   <div class="span2">
			     <button type="button" class="btn" id="delquizset">删除试卷集</button>
			   </div>
		  </div>				
				
      </div>
    </div>
    
	  </div>
	</div>
    
    
	<div class="container">
		<footer>
		<p>&copy;Uunemo Company 2013</p>
		</footer>
	</div>
	
	
  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
   <script src="<%=path%>/resources/js/bootstrap.js"></script>
   <script src="<%=path%>/resources/js/quizsetmanage.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   
  </body>
</html>


