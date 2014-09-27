<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="org.apache.shiro.subject.Subject"%>
<%@ page import = "org.apache.shiro.SecurityUtils" %>

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
					</ul>
					 <ul id="alreadylogin" class="nav pull-right">
					      <li  class="active">${username}</li>
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
	      <jsp:include page="leftmenu.jsp"/>
      </div>
      
       <div class="span9 offset1">
       </div>
      </div>
    
    
	
	
	
  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
   <script src="<%=path%>/resources/js/bootstrap.js"></script>
   <script src="<%=path%>/resources/js/adminhome.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   
  </body>
</html>


