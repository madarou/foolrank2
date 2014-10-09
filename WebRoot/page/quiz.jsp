<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.uunemo.util.QuizConstant"%>
<%@ page import="com.uunemo.beans.User"%>
<%@ page import="com.uunemo.beans.Role"%>    
<%@ page import="com.uunemo.util.QuizConstant"%>    
<%@ page import="java.util.Set"%>    
<%

String path = request.getContextPath();
pageContext.setAttribute("path",path);
User user = (User)session.getAttribute("user");
String email="";
Integer userId =0 ;
if(user!=null){
	System.out.print("get user:"+user);
	email = user.getEmail();
    userId = user.getUserid();
    if(email!=null){
    	pageContext.setAttribute("email",email);
    	pageContext.setAttribute("userId",userId);
}
}
%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="utf-8">
	<title>猿奋</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
    <meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Le styles -->
    <link href="<%=path%>/resources/css/quiz.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/square/green.css" rel="stylesheet">
	<style type="text/css">

</style>
	
</head>

<body style="background-color:#f2f2f2">
<jsp:include page="navbar.jsp" /> 
    
    <div class ="container-fluid" style="padding-top: 100px">
      <div class="row-fluid">
        <div class="mainquiz col-md-9">
	         <div class="quizinfo" id="quizinfo">
	          <div class="quizcontent">
	            <p class="lead" id="quizId" style="display:none">${quiz.quizId}</p>
	            <h3 class="lead quizname">试题名：${quiz.quizName}</h3>
	            <h4 class=" quizdesc">简介：${quiz.quizInfo}</h4>
		       </div>
		        
		         <div class="row">
		           <div class="col-md-2 col-md-offset-8">
		             <button class="btn btn-large btn-primary" id="letsbegin" type="button">开始做题</button>
		           </div>   
		          </div>  
	         </div>
      
        <div class="takequiz " id="takequiz" style="display:none">
          <p class="lead"  id = "questioncontent"></p>
          <dl class="clear">
	          <dd class="selected">
		         <div class="optionplane" id="optionplane">
		           <div class="options list" id="options">
		           </div> 
		           <label id="optionnum"></label>
		           <div class="row-fluid">
			            <div class="col-md-2 col-md-offset-2">
			             <button class="btn btn-primary" id="submit" type="button">提交答案</button>
			            </div>
			            
			            <div class="col-md-2 ">
			             <button class="btn btn-primary" id="nextquestion" type="button">下一题</button>
			            </div>
			            <div class="col-md-2 ">
			             <button class="btn btn-primary" type="button">结束</button>
			            </div> 
		           </div>
		           
		          </div>
	          </dd>
          </dl>
          
         </div>
        </div>
        </div>
    
       
       <div class="col-md-3" style="display:none">
          <div class="quizright">
           <div class="scorezone">
              <div class="progress">
					  <div class="bar" id="scorebar" style="width: 0%;"></div>
					</div>
					  <h3 id="userscore"></h3>
					<div >
           
           </div>
          </div>
       </div>
      </div>
    </div>
	
	
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   <script src="<%=path%>/resources/js/jquery.icheck.js"></script>
  
   <script src="<%=path%>/resources/js/quiz.js"></script>
  </body>
</html>


