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


%>
<html>
<head>
	<meta charset="utf-8">
	<link href="<%=path%>/resources/css/cssfonts-min.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/resources/css/bootstrap.css" rel="stylesheet">
	<link href="<%=path%>/resources/css/common.css" rel="stylesheet">
     
    <link rel="stylesheet" href="<%=path%>/resources/css/codemirror.css">
     
	<title>UUnemo</title>
</head>
<body class="commonBody">

	<div class="mainPanel span8" >
		<div class="regPanel span8"> 
			
			  
			<textarea id="myTextarea" rows="" cols="">
			
			</textarea>
			
			
			
	    </div>
	    <div id="displayzone">
	    
	    </div>
	    <div class="row">
	     <div class="span2">
	       <button id="submit">提交</button>
	     </div>
	      
	    </div>
	      	
	</div>
	
    <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
    <script src="<%=path%>/resources/js/bootstrap.js"></script>
<%--     <script src="<%=path%>/resources/js/highlight.pack.js"></script> --%>
<!--     <script>hljs.initHighlightingOnLoad();</script> -->
   <script src="<%=path%>/resources/js/codemirror.js"></script>
   <script src="<%=path%>/resources/js/clike.js"></script>
   <script src="<%=path%>/resources/js/codetest.js"></script>
</body>
</html>
