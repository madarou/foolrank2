<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path",path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<section>
		<article class="regPanel">
			<form id="regForm" action = "${path}/register/createuser" method= "post" >
			 <fieldset class="regInfo">
				<label for="email" class="regLabel"><span>电子邮件地址</span><span class="dot">*</span></label>
				<input type="email" name="email" id="regemail" class="regInput"/><span id = "emailInfo" class="alertInfo"></span>
<!-- 				<span class="regComment">登录标识，需要一个合法的邮箱地址。所有的系统邮件都会发送到该地址。此地址不对外公开，当需要获取新密码或获取特定消息及通知时会使用此邮件地址。</span> -->
<!-- 					<label for="username" class="regLabel"><span>用户名</span><span class="dot">*</span></label> -->
<!-- 					<input type="text" name="username" id="regusername" class="regInput" /><span id = "userInfo" class="alertInfo"></span> -->
<!-- 					<span class="regComment">网站上所显示的名称，允许空格；除英文句号（.)、横号（-）、单引号（'）和下划线（_）外的标点符号不允许。</span> -->
				<label for="password" class="regLabel"><span>密码</span><span class="dot">*</span></label>
				<div class="passwordLevl"></div>
				<input type="password" name="password" id="regpassword" class="regInput"/>
				<label for="school" class="regLabel"><span>所在院校</span><span class="dot">*</span></label>
				<input type="text" name="school" id="school" class="regInput"/><span id = "schoolInfo" class="alertInfo"></span>
				<span class="regComment">请填写你所在的学校，填写后不可修改，请谨慎填写。</span>
			
			    <label  class="regLabel"><span>验证问题</span></label>
				<p id="validateQuestion"></p>
				<label for="answer" class="regLabel"><span>回答</span><span class="dot">*</span></label>
				<input type="text" name="answer" id="answer" class="regInput"/><span id = "answerInfo" class="alertInfo"></span><input id="rightanswer" type ="hidden" value=""></span>
			
			    
			    <label for="company"  class="regLabel"><span>公司</label>
				<input type="text" name="company" id="company" class="regInput"/>
				<span class="regComment">请填写你所在的公司</span>
			</fieldset>
			
			<input type="button" id = "regBtn" class="regBtn" value="创建新账号"></button>
			</form>
		</article>
	</section>
	
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
	<script src="${path}/resources/js/register.js" type="text/javascript"></script>
	<script src="<%=path%>/resources/js/bootstrap.js"></script>
	
</body>
</html>
