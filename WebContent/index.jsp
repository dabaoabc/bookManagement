<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/myjs.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/mycss.css">
	
  </head>
  
  <body>
    <div class="bground" style="background-image:url(image/background.jpg);">
			<div class="surface">
				<div class="logo"><img class="img" src="image/logo.jpg"/></div>
				<form class="input" action="servlet/HelloServlet" method="post">账号：<input type="text" placeholder="请输入账号" name="username" class="text"/><a id="register" href="register.jsp">注册账号</a><br />
					密码：<input type="password" placeholder="密码" name="password" class="text"/>
				<input type="submit" id="log" value="登陆" class="input1"></input>
				</form>
				
			</div>
		</div>
		
  </body>
</html>
