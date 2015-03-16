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
	<style type="text/css">
		*{
			margin: 0 auto;
			font-family: "Microsoft YaHei";
		}
		.bground{
		     
             width: 100%;
             height: 667px;
             margin: 0 auto;
             overflow: hidden;
		     }
		.surface{
		     width: 480px;
			height: 390px;
			background-color: #55b8da;
			margin: auto ;
			margin-top: 120px;
			overflow: hidden;	
			} 
		#name{
			width:245px;
			height: 50px;
			background-color: #86dbf8;
			display: block;
			margin: auto;
			border: 0px;
			margin-top: 50px;
			padding-left: 5px;
	        }
	     #password{
	     	width:245px;
			height: 50px;
			background-color: #86dbf8;
			display: block;
			margin: auto;
			border: 0px;
			margin-top: 20px;
			padding-left: 5px;
	     }
	     #password-again{
	     	width:245px;
			height: 50px;
			background-color: #86dbf8;
			display: block;
			margin: auto;
			border: 0px;
			margin-top: 20px;
			padding-left: 5px;
	     }
	     button{
			border: 0px;
			width: 200px;
			height: 30px;
			background-color: #4da1f7;
			color: white;
			border-radius: 4px;
			margin: auto;
			display: block;
			margin-top: 20px;
			
		}     
	    input::-webkit-input-placeholder{
	    	color: #0e769a;
	    }    
		</style>
	<script type="text/javascript">
         window.onload=function(){
         	var sure=document.getElementById("sure");
         	sure.onmouseover=function(){
         		this.style.backgroundColor="#7ebbf9";
         	};
         	sure.onmouseout=function(){
         		this.style.backgroundColor="#4da1f7";
         	}
         	sure.onmousedown=function(){
         		this.style.backgroundColor="#2c84de"
         	}
         	sure.onmouseup=function(){
         		this.style.backgroundColor="#7ebbf9"
         	}
         	sure.onclick=function(){
//       		this.style.backgroundColor="#2c84de"
				
         		window.location.href="servlet/RegisterServlet";
         	}
         }
		</script>
  </head>
  
  <body>
    <div class="bground" style="background-image:url(image/background.jpg);">
			<div class="surface">
			<form class="input" method="post" action="servlet/RegisterServlet">
				<input type="text" id="name" name="name" placeholder="昵称" />
				<input type="password" id="password" name="password" placeholder="输入密码" />
				<input type="password" id="password-again" placeholder="再次输入密码" />
				<button type="submit" id="sure">确定</button>
			</form>
			</div>
		</div>
  </body>
</html>
