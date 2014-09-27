<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="org.apache.shiro.subject.Subject"%>
<%@ page import="org.apache.shiro.SecurityUtils"%>
<%@ page import="com.uunemo.beans.*"%>
<%@ page import="com.uunemo.util.QuizUtil"%>

<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//if use login,then fetch username, later can do this in a custom filter
	Subject currentUser = SecurityUtils.getSubject();
	String username = null;
	if (currentUser.isAuthenticated()) {
		username = (String) currentUser.getPrincipal();
	}
	pageContext.setAttribute("username", username);
	
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
			    <link href="<%=path%>/resources/css/adminhome.css" rel="stylesheet">



							<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
</head>

<body class="commonBody">

 

	<jsp:include page="navbar.jsp" />
	<div class="container">
		<div class="row">
			<div class="span4">
				<div class="logoImg"></div>
				<h1 class="logoText">Uunemo</h1>
			</div>

		</div>
	</div>

	<div class="container">
		<div class="span2">
			<jsp:include page="leftmenu.jsp" />
		</div>

		<div class="span8">


			<div>
				<div class="row">
				  <div class="span4">
				    <input type="text" class="input-medium search-query" id="ipt_search"></input>
					<button class="btn" id="btn_search">搜索题目</button>				  
				  </div>		
				</div>
				
				

				<div class="row mainzone">
					<table class=" table  table-bordered"
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
						<tbody id="tableBody">
						</tbody>
					</table>
				</div>
				<div class="row" id="paginator"></div>
			</div>

			<div class="row btngroup" id="">
				<div class="span2">
					<button type="button" class="btn" id="createquestion">新建试题</button>
				</div>

				<div class="span2">
					<button type="button" class="btn" id="editquestion">修改试题</button>
				</div>

				<div class="span2">
					<button type="button" class="btn" id="delquestion">删除试题</button>
				</div>
			</div>

		</div>

		<!--       <div class="container"> -->
		<!-- 		<footer> -->
		<!-- 		<p>&copy;Uunemo Company 2013</p> -->
		<!-- 		</footer> -->
		<!-- 	</div> -->
	</div>

  <!-- register Modal begin -->
<div id="editQuestionModal" class="modal hide fade modalwidth" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">编辑试题</h3>
  </div>
  <div class="modal-body"></div>
</div>
<!-- register Modal end-->






	<!-- Placed at the end of the document so the pages load faster -->
	
	<script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.js"></script>
	<script src="<%=path%>/resources/js/bootstrap-paginator.js"></script>
	<script src="<%=path%>/resources/js/questionmanage.js"></script>
	<script src="${path}/resources/js/jquery.json-2.4.js" type="text/javascript"></script>
	
	
	<script src="${path}/resources/js/initClient.js" type="text/javascript"></script>

</body>
</html>


