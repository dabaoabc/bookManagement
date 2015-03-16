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
	
	<link rel="stylesheet" type="text/css" href="css/mycss.css">
	
  </head>
  
  <body>
  <center>
   <jsp:useBean id="regUsers" class="entity.Users" scope="session"/>
                    	<table border="2" class="table-item">
                        	<tr>
                        		<th>学号</th>
                        		<th>姓名</th>
                        		<th>书名</th>
                        		<th>时间</th>
                        	</tr>
                        	<tr>
                        		<td>20103211638</td>
                        		<td>莫小君</td>
                        		<td>离散数学</td>
                        		<td>2015/1/27</td>
                        	</tr>
                        	<tr>
                        		<td>20103211638</td>
                        		<td>莫小君</td>
                        		<td>离散数学</td>
                        		<td>2015/1/27</td>
                        	</tr>
                        	<tr>
                        		<td>20103211638</td>
                        		<td>莫小君</td>
                        		<td>离散数学</td>
                        		<td>2015/1/27</td>
                        	</tr>
                        	<tr>
                        		<td><jsp:getProperty name="regUsers" property="password"/></td>
                        		<td><jsp:getProperty name="regUsers" property="username"/></td>
                        		<td><jsp:getProperty name="regUsers" property="bookname"/></td>
                        		<td><jsp:getProperty name="regUsers" property="timy"/></td>
                        	</tr>
                        </table>
                        
  </center>
   
		
  </body>
</html>
