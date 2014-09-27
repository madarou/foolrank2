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
			 <div class="form-horizontal">	
			    <input type = "text" id="quizid"  style="display:none"></input>

			    <div class="control-group span4">
			       <label class="control-label "><span>试卷名称</span><span class="dot">*</span></label>
				   <input class="controls" id="quizName"></input>
			    </div>
					
				
				<div class="row">
				  <div class="control-group span4">
				    <label class="control-label">分数</label>
			     	<input type="text" class="controls" id="quizPoint"></input>
				  </div>
				  
				  <div class="span4">
				    <label>描述</label>
				    <textarea rows="5" cols="60" id="quizInfo"></textarea>
				  </div>
				
				</div>
				<div  class="form-horizontal question-zone">
				  	     
				  <div>
					<div class="row">
					  <div class="span4">
					    <input type="text" class="input-medium search-query" id="searchText"></input>
						<button class="btn" id="searchQuiz">搜索试题</button>				  
					  </div>		
					</div>


						<div class="tabbable">
							<!-- Only required for left/right tabs -->
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1" data-toggle="tab">已含试题</a></li>
								<li><a href="#tab2" data-toggle="tab">待选试题</a></li>
							</ul>
							
							<div class="tab-content">
								<div class="tab-pane active" id="tab1">
									<table class="table  table-bordered"
										style="font-size: 12px; table-layout: fixed; width: 600px; border: 1px;">

										<col width="30px"></col>
										<col width="200px"></col>

										<thead id='tablehead'>
											<tr>
												<th align="left" style="color: #000">试题列表</th>
											</tr>

											<tr style="background: #CCC">
												<td></td>
												<td>试题</td>
											</tr>
										</thead>
										<tbody id="tableBody1">
										</tbody>
									</table>
									
									<div class="row" id="paginator"></div>

									<div class="span2">
										<button type="button" class="btn" id="delQuestion">移除试题</button>
									</div>
								</div>

								<div class="tab-pane" id="tab2">
									<table class="table  table-bordered"
										style="font-size: 12px; table-layout: fixed; width: 600px; border: 1px;">

										<col width="30px"></col>
										<col width="200px"></col>

										<thead id='tablehead'>
											<tr>
												<th align="left" style="color: #000">试题列表</th>
											</tr>

											<tr style="background: #CCC">
												<td></td>
												<td>试题</td>
											</tr>
										</thead>
										<tbody id="tableBody2">
										</tbody>
									</table>
									
									<div class="row" id="paginator"></div>

									<div class="span2">
										<button type="button" class="btn" id="addQuestion">增加</button>
									</div>
								</div>
							</div>
						</div>



						
					
					
				</div>
			   </div>

				<div class="span2">
					<button type="button" class="btn" id="saveQuiz">保存</button>
				</div>

				<div class="span2">
			     <button type="button" class="btn" id="cancelQuiz">取消</button>
			   </div>
			</div>
	   
	    </div>
	      	
	</div>
	
    <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
	<script src="${path}/resources/js/editquiz.js" type="text/javascript"></script>
	<script src="${path}/resources/js/jquery.json-2.4.js" type="text/javascript"></script>
    <script src="<%=path%>/resources/js/bootstrap.js"></script>
	<script src="<%=path%>/resources/js/bootstrap-paginator.js"></script>
</body>
</html>
