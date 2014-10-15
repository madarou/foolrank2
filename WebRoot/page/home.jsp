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
	<title>猿奋</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- Le styles -->
	<link href="<%=path%>/resources/css/home.css" rel="stylesheet">
	<style type="text/css">

</style>
	
</head>

<body style="background-color:#f2f2f2" >

<!--   nav bar -->
<jsp:include page="navbar.jsp" />
<!-- main img -->
<jsp:include page="mainimg.jsp" /> 
    
    <div class ="container" style="background-color:#f2f2f2;padding-top: 50px">
      <div class="row">
       <div class="col-md-9">
        
       
        <div class="exam">
          
           <div class="panel">
               <div class="panel-heading">免登录区</div>
			      <div class="panel-body" id="freepanel">
				       <!--  <div class="col-md-2 col-xs-4">
					     <img  src="./resources/css/img/cEssential.png" class="img-responsive" id="c" ></img>
					   </div>
	               
	                    <div class="col-md-2 col-xs-4">
					     <img  src="./resources/css/img/java.png" class="img-responsive" id="java" ></img>
					   </div>-->
			       </div> 
			</div>
			
			<div class="panel" style="display:none">
               <div class="panel-heading" style="background-color:#00CC99">需登录区</div>
			      <div class="panel-body">
				     <div class="col-md-1 col-md-offset-1">
	                 <div class="cEssential" id="cEssential"></div>
	               </div>
	               
	               <div class= "col-md-1 col-md-offset-1">
	                 <div class="javaEssential" id="javaEssential"></div>
	               </div>
			  </div>
			</div>
			
			<div class="panel" style="display:none">
               <div class="panel-heading" style="background-color:#00CC99">付费区</div>
			      <div class="panel-body">
				     <div class="col-md-1 col-md-offset-1">
	                 <div  class="c" id="c"><a href="#"></a></div>
	               </div>
	               
	               <div class= "col-md-1 col-md-offset-1">
	                 <div class="java" id="java"></div>
	               </div>
			  </div>
			</div>
			
			
          </div>
        
       </div>
       
       <div class="col-md-3">
          <div class="bulletin">
					
					   
		  </div>
		 </div>
       </div>
      </div>
    </div>
	<div class="container">
		<footer>
		<p>&copy;foolRank Company 2014</p>
		</footer>
	</div>

  
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="<%=path%>/resources/js/home.js"></script>
   <script src="${path}/resources/js/initClient.js" type="text/javascript"></script>
  
   
  </body>
</html>


