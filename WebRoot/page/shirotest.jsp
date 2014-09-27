<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regedit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form name="user" action="<%=path%>/shirotest" method="post">
      <table width="776" border="1">
        <tr>
         <td colspan="2"><div align="center">user login</div></td>  
        </tr>
        <tr>
          <td><div align="left">username</div></td>
          <td><input type="text" name="username" value="${user.username}"/></td>      
        </tr>
        
        <tr>
         <td><div align="left">password</div></td>
         <td><input type="password" name="password" value="${user.password}"/></td>
        </tr>
        
        <tr>
         <td colspan="2" ><div align="center"></div>
          <div align="center">
         <input type="submit" name="method" value="submit"/>
         <input type="reset" name="reset" value="reset"/>
        </div></td>
        </tr>
        
        
      </table>
    </form>
    
    
  </body>
</html>
