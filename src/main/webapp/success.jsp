<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
	<h2>登录成功！</h2>
	<h3>你的信息如下：</h3>
	用户名：<%
		request.getParameter("username");
	%><br> 密码：<%
		request.getParameter("password");
	%><br>
	<a href="index.jsp">进入首页</a>
</body>
</html>