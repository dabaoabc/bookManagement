<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="js/main.js" ></script>
	<script type="text/javascript" src="js/jquery-1.11.2.js" ></script>

  </head>
  
  <body>
    <div class="bground" style="background-image:url(image/background.jpg);">
        <div class="interface">
            <div class="control">
            	<div class="head" style="background-image:url(image/head.png);"></div>
            	<p class="name">这是昵称</p>
            	<ul class="table" id="table">
            		<li><img class="daily" src="image/daily-work.png"/><span>日常工作</span></li>
            		<li><image class="data" src="image/data.png"/>基本资料维护</li>
            		<li><image class="search" src="image/search.png"/>查询</li>
            		<li><image class="system" src="image/system.png"/>系统</li>
            		<li><image class="resource-manage" src="image/personal1.png"/>资料管理</li>
            	</ul>
            </div>
            <div class="surface">
            	<div class="header" >
            		<span class="time" id="date"></span>
            		<span class="time" id="time"></span>
            	    <a href="index.jsp" class="drop">退出</a>
            	    <span class="name1">这是昵称</span>
            	</div>
            	
            	
               <div id="total-content">
               	    <div class="inite"><p class="borrow-manage">借书管理</p>
                          <form action="servlet/RagServlet" method="post">
                          	<span class="inite-word">姓名：</span><input type="text" class="input-name" name="username" /> <span class="inite-word">学号：</span><input type="text" class="input-name" name="password" /><br/>
                          <span class="inite-word" >书名：</span><input type="text" class="input-name" name="bookname"/> <span class="inite-word" >时间：</span><input type="text" class="input-name" name="timy"/>
               	          <br />
                          	<input type="submit" class="book-sure1" value="确定"/>
                          </form>
               	          <p class="return-manage">还书管理</p>
                          <span class="inite-word">姓名：</span><input type="text" class="input-name" /> <span class="inite-word">学号：</span><input type="text" class="input-name" /><br/>
                          <span class="inite-word">书名：</span><input type="text" class="input-name" /> <span class="inite-word">时间：</span><input type="text" class="input-name" />
               	          <br />
               	          <button type="button" class="book-sure1">确定</button><button type="button" class="book-nosure1">取消</button>
               	    </div>
                    <div class="inite">
                    	<!--<ul class="resource">
                    		<li class="class1"><span class="book-name">书名</span><span class="others">借阅者</span><span class="others">时间</span></li>
                    		<li class="class2"><span class="book-name">离散数学</span><span class="others">老王</span><span class="others">2015/1/26<span></li>
                    	    <li class="class3"><span class="book-name">大物</span><span class="others">小明</span><span class="others">2015/1/25</span></li>
                    	</ul>-->
                    	<p>基本资料维护</p>
                    	
                    </div>
                    <div class="inite">
                    	<span class="search-item">请输入学号或姓名：</span><input type="text" class="input-name" /><input type="button" name="" id="" value="搜索" />
                        <table border="1" class="table-item">
                        	<tr>
                        		<th>学号</th>
                        		<th>姓名</th>
                        		<th>书名</th>
                        		<th>借阅时间</th>
                        	</tr>
                        	<tr>
                        		<td>20103211638</td>
                        		<td>莫小君</td>
                        		<td>离散数学</td>
                        		<td>2015/1/27</td>
                        	</tr>
                        	
                        </table>
                    </div>
                    <div class="inite">
                    	<a class="my-data">我的资料</a>
                    	<table class="my-data-1">
                    		<tr>
                    			<td>账号：</td>
                    			<td>1234567</td>
                    		</tr>
                    		<tr>
                    			<td>昵称：</td>
                    			<td>stan</td>
                    		</tr>
                    	</table>
                    	<a class="my-data">修改密码</a>
                    	<table class="my-data-1" >
                    		<tr>
                    			<td>新密码：</td>
                    			<td><input type="text" name="" id="text" value="" /></td>
                    		</tr>
                    		<tr>
                    			<td>再次输入：</td>
                    			<td><input type="text" name="" id="text" value="" /></td>
                    		</tr>
                    		<tr>
                    			<td><button class="book-sure1">确定</button></td>
                    			<td><button class="book-nosure1">取消</button></td>
                    		</tr>
                    		
                    	</table>
                    </div>
                    <div class="content">
            		<span class="my-books">我的图书：10</span>
            		<span ><button class="add">添加图书</button></span>
            		<div class="book">
            			<div class="title">
            				<span class="name2">书名</span><image class="jiantou" src="image/jiantou.png"/>
            				<span class="borrow-date">借阅时间</span><image class="jiantou" src="image/jiantou.png"/>
            			<span class="return-date">归还时间</span><image class="jiantou" src="image/jiantou.png"/><span class="operate">操作</span>
            			</div>
            		    <div class="item1"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item2"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item1"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item2"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item1"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item2"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		     <div class="item1"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item2"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div>
            		    <div class="item1"><span class="name3">离散数学</span><span class="borrow-date1">2014.12.12</span>
            		    	<span class="return-date1">2015.1.21</span><span class="operate1">删除</span>
            		    </div> 
            		</div>
            	    
            	</div>
                    <div class="add-book">
           	   <form class="book-input">
           	   	书名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           	   	   <input type="text" id="book-name" value="" />
           	   	   <br />
           	   	借阅时间：
           	   	   <input type="text" id="borrow-name" value="" />
                      <br />
           	   	归还时间：
           	   	   <input type="text" id="return-name" value="" />
           	   </form>
                <button class="book-sure">确定</button>
                <button class="book-nosure">取消</button>
                
           </div>
               </div>
            </div>
               
        </div> 
	</div>
  </body>
</html>
