<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
pageContext.setAttribute("path",path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

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
<jsp:include page="navbar.jsp" />
<!-- main img -->
<jsp:include page="mainimg.jsp" /> 
    
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
          <div class="bulletin">
					
					   
					</div>

				</div>
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

<!-- login Modal begin -->
<div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" id="btnModalClose" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
  
    <button class="btn" id="btnlogin" class="btn btn-primary">登录</button>
	<button class="btn" id="loginModalDismiss"  data-dismiss="modal">取消</button>
	
  </div>

</div>
<!-- login Modal end-->
  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/jquery-1.9.1.js"></script>
   <script src="<%=path%>/resources/js/bootstrap.js"></script>
   <script src="<%=path%>/resources/js/home.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
   <script src="${path}/resources/js/navbar.js" type="text/javascript"></script>
   
  </body>
</html>


