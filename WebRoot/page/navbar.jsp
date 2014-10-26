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
	email = user.getEmail();
    userId = user.getUserid();
    if(email!=null){
    	pageContext.setAttribute("email",email);
    	pageContext.setAttribute("userId",userId);
}


}

%>
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=path%>/resources/css/flatui/css/flat-ui.css" rel="stylesheet">
<link href="<%=path%>/resources/css/font-awesome/css/font-awesome.css" rel="stylesheet">


<!--   nav bar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-bottom: 0px">
		<div class="container-fluid">
			
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" type="button">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				 <a class="navbar-brand" href="<%=path%>" style="color:#00CC99">猿奋</a>
				 <a class="navbar-brand hidden-sm hidden-xs" href="<%=path%>"> foolRank.com</a>
			</div>	
				
				
				<div class="navbar-collapse collapse">
					
					 <ul class="nav navbar-nav" id="leftNav">
						<li><a class="active" href="/uunemo">主页</a></li>
<!-- 						<li><a href="#contact">联系方式</a></li> -->
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
                    
					 <ul id="alreadylogin" class="nav navbar-nav navbar-right">
					      <li  class="active"><a id = "showusername" style="color:#00CC99">欢迎！${email}</a></li>
					      <li  ><a id="btnlogout" href="#">退出</a></li>
					 </ul>
					 
					
					 <ul id="preparelogin" class="nav navbar-nav navbar-right">
					      <li ><a  data-toggle="modal" href="#" style="color:#00CC99" id="viewLoginModal">登录</a></li>
					      <li ><a href="#" data-toggle="modal" id="showRegisterModal">注册</a></li>
					 </ul>
					 
					
				</div>
			
		</div>
	</div>
	<!-- nav bar -->
<input id="email" value="<%=email%>" style="display:none"> 
<!-- register Modal begin -->
<div id="registerModal" class="modal fade" tabindex="-1" >
  <div class="modal-dialog">
    <div class="modal-content">
    
	  <div class="modal-header">
	    <button type="button" id="btnLoginModalClose" class="close" data-dismiss="modal" ><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	    <h3 id="myModalLabel">用户注册</h3>
	  </div>
  
  	  <div class="modal-body">
  	    <form class="form-horizontal" role="form" action = "${path}/register/createuser" method= "post" >
				 <div class="form-group">
					<label for="email"  class="col-sm-3 col-md-offset-1 control-label">电子邮件地址<span class="text-danger">*</span></label>
					<div class="col-sm-6">
					  <input type="text" class="form-control" name="email" id="regemail"/>
					   <span id = "emailInfo" class="text-danger"></span> 
					</div>
				 </div>	
				 <div class="form-group">
					<label for="password" class="col-sm-3 col-md-offset-1 control-label"><span>密码</span><span class="text-warning">*</span></label>
					<div class="passwordLevl"></div>
					<div class="col-sm-6">
					  <input type="password" class="form-control" name="password" id="regpassword" />
					</div>
				</div>	
				
			 	<div class="form-group">
					<label for="school" class="col-sm-3 col-md-offset-1 control-label"><span>所在院校</span><span class="text-warning">*</span></label>
					<div class="col-sm-6">
					  <input type="text" class="form-control" name="school" id="school"/>
					  <span id = "schoolInfo" class="text-danger"></span>
					</div>
					<label class="control-label col-sm-3 col-md-offset-1 "></label>
					<div class="col-sm-6">
					  <p class="" >请填写你所在的学校。会影响学校排名，不可更改，请谨慎填写</p>
					</div>
			    </div>
			
			    <div class="form-group">
				    <label class="col-sm-3 col-md-offset-1 control-label"><span>验证问题</span></label>
				    <div class="col-sm-6">
						<span id="validateQuestion"></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="answer" class="col-sm-3 col-md-offset-1 control-label"><span>回答</span><span class="text-warning">*</span></label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="answer" id="answer" />
					</div>
					<label for="answer" class="col-sm-3 col-md-offset-1 control-label"></label>
					<div class="col-sm-6">
						<span id = "answerInfo" class="text-danger"></span>
					</div>
					
					
					<input id="rightanswer" type ="hidden" value="">
			    </div>
			    
			    <div class="form-group">
				    <label class="col-sm-3 col-md-offset-1 control-label">公司</label>
				    <div class="col-sm-6">
						<input type="text" class="form-control" name="company" id="company"></input>
						
					</div>
					
					<label class="col-sm-3 col-md-offset-2 control-label"></label>
				    <div class="col-sm-6">
						<label>请填写你所在的公司</label>
					</div>
				</div> 
			</form>
  	  
  	   </div>
  	  
 	  <div class="modal-footer">
	    <button type="button" id = "regBtn" class="btn btn-primary" >创建用户</button>
		<button class="btn" data-dismiss="modal">取消</button>
	  </div>
</div>
</div>
</div>
<!-- register Modal end-->

<!-- login Modal begin -->
<div id="loginModal" class="modal fade" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
    
	  <div class="modal-header">
	    <button type="button" id="btnLoginModalClose" class="close" data-dismiss="modal" ><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	    <h3 id="myModalLabel">用户登录</h3>
	  </div>
	  
	  <div class="modal-body">
	    <form class="form-horizontal" role="form">
	        
		    <div class="form-group">
		      <label class="col-sm-2 col-md-offset-2 control-label" for="inputEmail">Email</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="loginEmail" placeholder="Email"></input>
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label class="col-sm-2 col-md-offset-2 control-label" for="inputPassword">密码</label>
			    <div class="col-sm-6">
			    <input type="password" class="form-control" id="password" placeholder="密码"></input>
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label class="col-sm-2 col-md-offset-2 control-label"></label>
			    <div class="col-sm-4">
			    <label class="checkbox" for="rbme"> <input id="rbme" type="checkbox" class="form-control">记住我</input></label>
			   
			    </div>
		    </div>
		    
		    <div class="form-group">
		       <label class="col-sm-2 col-md-offset-2 control-label"></label>
		       <div class="col-sm-4"><p class="text-danger" id = "alertInfo"></p></div> 
		    </div>
		    
		    
	    </form>
	  </div>
  <div class="modal-footer">
  
    <button id="btnlogin" class="btn btn-primary">登录</button>
	<button class="btn" id="loginModalDismiss"  data-dismiss="modal">取消</button>
	
  </div>
 </div>
 </div>
</div>
<!-- login Modal end-->	
	
	
<!-- import Modal begin -->
<div id="importModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
    <div class="modal-content">
 
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">批量导入</h3>
  </div>
  <div class="modal-body">
     <form class="form-horizontal" id="importForm">   
	    <div class="form-group">
	      <label class="control-label col-sm-4 col-md-offset-2 ">请输入上传文件（.xls）</label>
		    <div class="col-sm-6">
		      <input type="file"  class="form-controls" id="file_upload" name="file" placeholder="file"></input>
		    </div>
	    </div>
	 </form>
  
    
  </div>
  <div class="modal-footer">
  
    <button  id="btnImport" class="btn btn-primary">上传</button>
	<button  id="loginModalDismiss"  class="btn" data-dismiss="modal">取消</button>
	
  </div>
</div>
</div>
</div>
<!-- login Modal end-->	
 <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>	
 <script type="text/javascript"> !window.jQuery && document.write('<script src="<%=path%>"/resources/js/jquery-1.11.1.j><\/script>');</script>
 <%-- <script src="<%=path%>/resources/js/jquery-1.11.1.js"></script> --%>
 <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<%--  <script src="<%=path%>/resources/js/bootstrap3/bootstrap.js"></script> --%>
 <script src="<%=path%>/resources/js/flatui/custom_checkbox_and_radio.js"></script>
 <script src="<%=path%>/resources/js/jquery-form.js"></script>
 <script src="<%=path%>/resources/js/navbar.js"></script>
 <script src="/uunemo/resources/js/register.js"></script>	


