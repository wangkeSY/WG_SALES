<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>欢迎</title>  
</head>  
<body> 
<h1>登陆界面处于开发中...</h1> 
<h2>Hello World!</h2>  
  
<form action="login">  
    用户名：<input id="username" name="username" type="text"></input><br>  
    密  码：&nbsp;<input id="username" name="password" type="password"></input><br>  
    <input type="submit">  
</form>  
<span>当前IP：<%=request.getRemoteAddr() %></span>
</body>  
</html>  