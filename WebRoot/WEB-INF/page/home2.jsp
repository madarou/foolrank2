<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
pageContext.setAttribute("path",path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="org.apache.shiro.subject.Subject"%>
<%@ page import = "org.apache.shiro.SecurityUtils" %>

 
<html>
<head>
	<meta charset="utf-8">
	<!--12.08 delete the ../ path by fw -->
	<link href="<%=path%>/resources/style/cssrest-min.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/resources/style/cssfonts-min.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/resources/style/Uunemo.common.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/resources/style/Uunemo.login.css" rel="stylesheet" type="text/css" />
	<script src="<%=path%>/resources/javascript/lib/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="<%=path%>/resources/javascript/home.js" type="text/javascript"></script>
	<script src="<%=path%>/resources/javascript/initClient.js" type="text/javascript"></script>
	<title>UUnemo</title>
</head>
<body class="commonBody">
	<header class="commonHeader">
		<nav class="navBar">
		
		
		<div class="login">
			<!-- 强制使用了绝对路径，可能在后期会有问题 -->
			<form:form action="${path}/checkuser" commandName="user" method="post" id="loginInfoForm">
				<fieldset class="loginInfo">
					<label for="username">
						<span>用户名</span>
						<span class="alert">*</span>
					</label>
					<input type="text" id="username" name="username" />
					<label for="passwd">
						<span>密码</span>
						<span class="alert">*</span>
					</label>
					<input type="password" id="password" name="password"/>
					
					<button class="loginBtn">登录</button>
					<span id="alertInfo">
						<%
							String errormsg =(String)request.getAttribute("errormsg");
							if (errormsg!=null &&!errormsg.equals("")){
						%>
						<%=errormsg%>
						<%		
							}
						%>
					</span>					
				</fieldset>	
			  </form:form>
			 </div>
			 
			<div class="otherAction">
				<a href="#">创建新账号</a>
				<a href="/userregister">重设密码</a>
			</div>
			
		
		
		
		</nav>
		<div class="logoImg"></div>
		<h1 class="logoText">Uunemo</h1>
	</header>
	<section>
		<div class="introduction">
			<article>
				<header>
					<h2>Welcome to Uunemo</h2>
				</header>
				<section>
					<span class="saying">
					<%=request.getSession().getServletContext().getAttribute("bulletin")%>
					</span>
					<!-- <span class="intrContent">
						<span>1 你可以做题</span>
						<span>2 你可以发表自己的解法</span>
						<span>3 你可以逛逛论坛</span>
					</span> -->
				</section>
			</article>
		</div>
	</section>
	<footer>
	</footer>
</body>
</html>
