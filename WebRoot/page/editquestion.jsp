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
	<link href="${path}/resources/css/Uunemo.register.css" rel="stylesheet" type="text/css" />
	<link href="${path}/resources/css/adminhome.css" rel="stylesheet" type="text/css" />

	<title>UUnemo</title>
</head>
<body class="commonBody">

	<div class="mainPanel span8" >
		<div class="regPanel span8"> 
			 <div class="regInfo">	
			    <input type = "text" id="quizsetid"  style="display:none"></input>
				<label class="regLabel"><span>试题</span><span class="dot">*</span></label>
				<textarea cols="160" rows="5" id="questContent" class="main-textarea" >
				   
				</textarea>
				
				<div class="row">
				  <div class="span2">
				    <label>分数</label>
			     	<input type="text" id="questionPoint"></input>
				  </div>
				  
				  <div class="span2 offset1">
				    <label>标签(以","号分割)</label>
				    <input type="text" id="tag"></input>
				  </div>
				
				</div>
				<div  class="form-horizontal option-zone">
				   <div class="row">
				    
				     <div class="control-group span6">
				        <label class="control-label label-width"><h3>A</h3></label>
				        <div class="controls option-area">
				           <textarea class="option option-text" rows="2" cols="100"></textarea>
				        </div>
				     </div>
				     
				    <div class="control-group span6">
				        <label class="control-label label-width"><h3>B</h3></label>
				        <div class="controls option-area">
				           <textarea class="option option-text" rows="2" cols="100"></textarea>
				        </div>
				     </div>
				     
				     <div class="control-group span6">
				        <label class="control-label label-width"><h3>C</h3></label>
				        <div class="controls option-area">
				           <textarea class="option option-text" rows="2" cols="100"></textarea>
				        </div>
				     </div>
				     
				      <div class="control-group span6">
				        <label class="control-label label-width"><h3>D</h3></label>
				        <div class="controls option-area">
				           <textarea class="option option-text" rows="2" cols="100"></textarea>
				        </div>
				     </div>			     
				   </div>
				</div>
			   
			   <div class="span2">
			     <button type="button" class="btn" id="btnSaveQuestion">保存</button>
			   </div>
			   
			   <div class="span2">
			     <button type="button" class="btn" id="btnCancelQuestion">取消</button>
			   </div>
			</div>
	   
	    </div>
	      	
	</div>
	
    <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>	
	<script src="${path}/resources/js/editquestion.js" type="text/javascript"></script>
	<script src="${path}/resources/js/jquery.json-2.4.js" type="text/javascript"></script>
    <script src="<%=path%>/resources/js/bootstrap.js"></script>
	<script src="<%=path%>/resources/js/bootstrap-paginator.js"></script>
</body>
</html>
