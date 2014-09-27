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
						<li><a href="#contact">Contact</a></li>

					</ul>
					
					<ul id="preparelogin" class="navbar-form pull-right">
					    <span class="alertInfo"></span>					    
						<input class="span2" id="email" type="text" placeholder="Email"> 
						<input class="span2" id="password" type="password" placeholder="Password">
						<button type="submit" id="btnlogin" class="btn">登录</button>
						<button type="submit" id="btnregister" class="btn">注册</button>
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
    
    <div class ="container-fluid">
      <div class="row-fluid">
       <div class="span9">
         <div class="exam">
           <div class="essential">
             <div class="row-fluid">
               <div class="span1 offset1">
                 <div class="c" id="c"></div>
               </div>
               
               <div class= "span1 offset1">
                 <div class="java" id="java"></div>
               </div>
             </div>
           </div>
         </div>
       </div>
       <div class="span3 ">
          <div class="bulletin"></div>
       </div>
      </div>
    </div>
	<div class="container">
		<footer>
		<p>&copy;Uunemo Company 2013</p>
		</footer>
	</div>
	
	<!-- register Modal begin -->
<div id="registerModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">用户注册</h3>
  </div>
  <div class="modal-body"></div>
</div>
<!-- register Modal end-->
  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
   <script src="<%=path%>/resources/js/bootstrap.js"></script>
   <script src="<%=path%>/resources/js/home.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   
  </body>
</html>


