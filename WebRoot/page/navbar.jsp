<%@page import="com.uunemo.util.QuizConstant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link href="<%=path%>/resources/css/bootstrap-responsive.css" rel="stylesheet">
<link href="<%=path%>/resources/css/bootstrap.css" rel="stylesheet">
<link href="<%=path%>/resources/css/font-awesome/css/font-awesome.css" rel="stylesheet">


<!--   nav bar -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				
				<button class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" type="button">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				
				
				
				
				<div class="nav-collapse collapse">
					
					 <ul class="nav" id="leftNav">
						<li><a class="active" href="#">主页</a></li>
						<li><a href="#contact">联系方式</a></li>
					    <%
					      if(user != null){
					    	  Set<Role> roles =  user.getRoles();
					    	  for(Role role:roles){
					    		  if(role.getRoleName().equals(QuizConstant.ROLE_ADMIN)||role.getRoleName().equals(QuizConstant.ROLE_OPERATOR)){
					    %>	  
					    	  
					    <li><a href='#' id='showImportModal' data-toggle='modal'>批量导入</a></li>
					    <%
					      }}}
					    %>

				</ul>
                    
					 <ul id="alreadylogin" class="nav pull-right">
					      <li  class="active"><a id = "showusername">欢迎！${email}</a></li>
					      <li  ><a id="btnlogout" href="#">退出</a></li>
					 </ul>
					 
					
					 <ul id="preparelogin" class="nav pull-right">
					      <li  class="active"><a  data-toggle="modal" href="#" id="viewLoginModal">登录</a></li>
					      <li ><a href="#" data-toggle="modal" id="showRegisterModal">注册</a></li>
					 </ul>
					 
					
				</div>
			</div>
		</div>
	</div>
	<!-- nav bar -->

<!-- register Modal begin -->
<div id="registerModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
style="width: 800">
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">用户注册</h3>
  </div>
  <div class="modal-body">
    	
  
  </div>
   <div class="modal-footer">
    <button type="button" id = "regBtn" class="btn btn-info" >创建用户</button>
	<button class="btn" data-dismiss="modal">取消</button>
  </div>
</div>
<!-- register Modal end-->

<!-- login Modal begin -->
<div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" id="btnLoginModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">用户登录</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal">
        
	    <div class="control-group">
	      <label class="control-label" for="inputEmail">Email</label>
		    <div class="controls">
		      <input type="text" id="loginEmail" placeholder="Email"></input>
		    </div>
	    </div>
	    
	    <div class="control-group">
		    <label class="control-label" for="inputPassword">Password</label>
		    <div class="controls">
		    <input type="password" id="password" placeholder="密码"></input>
		    </div>
	    </div>
	    <div class="control-group">
		    <label class="checkbox"></label>
		    <div class="controls">
		    <input type="checkbox">记住我</input>
		    </div>
	    </div>
	    
	    <div class="control-group">
	       <label class="control-label"></label>
	       <div class="controls"><p class="text-error" id = "alertInfo"></p></div> 
	    </div>
	    
	    
    </form>
  </div>
  <div class="modal-footer">
  
    <button id="btnlogin" class="btn btn-info">登录</button>
	<button class="btn" id="loginModalDismiss"  data-dismiss="modal">取消</button>
	
  </div>

</div>
<!-- login Modal end-->	
	
	
<!-- import Modal begin -->
<div id="importModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">批量导入</h3>
  </div>
  <div class="modal-body">
     <form class="form-horizontal" id="importForm">   
	    <div class="control-group">
	      <label class="control-label">请输入上传文件</label>
		    <div class="controls">
		      <input type="file" id="file_upload" name="file" placeholder="file"></input>
		    </div>
	    </div>
	 </form>
  
    
  </div>
  <div class="modal-footer">
  
    <button class="btn" id="btnImport" class="btn btn-primary">上传</button>
	<button class="btn" id="loginModalDismiss"  data-dismiss="modal">取消</button>
	
  </div>

</div>
<!-- login Modal end-->	
	
 <script src="<%=path%>/resources/js/jquery-1.11.1.js"></script>
 <script src="<%=path%>/resources/js/bootstrap.js"></script>
  
 <script src="<%=path%>/resources/js/jquery-form.js"></script>
 <script src="${path}/resources/js/navbar.js" type="text/javascript"></script>	

