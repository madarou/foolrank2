<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.uunemo.beans.User"%>    
<%
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
<input style="display:none" id="email" value="${email}"></input>
<!--   nav bar -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">主页</a></li>
						<li><a href="#contact">联系方式</a></li>

					</ul>
					       
                    
					 <ul id="alreadylogin" class="nav pull-right">
					      <li  class="active"><a id = "showusername">${email}</a></li>
					      <li  ><a id="btnlogout" href="#">logout</a></li>
					 </ul>
					 
					
					 <ul id="preparelogin" class="nav pull-right">
					      <li  class="active"><a href="#" data-target="#loginModal" data-toggle="modal">登录</a></button></li>
					      <li id="showRegisterModal"><a href="page/register.jsp" data-toggle="modal" data-target="#registerModal">注册</a></li>
					 </ul>
					 
					
				</div>
			</div>
		</div>
	</div>
	<!-- nav bar -->