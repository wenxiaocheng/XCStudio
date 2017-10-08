<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录失败</title>
</head>
<body>
	<h2 style="color: red;">登录失败！</h2>
	<h3>你的信息如下：</h3>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>
	用户名：<%
		out.print(username);
	%><br> 密码：<%
		out.print(password);
	%><br>
	<a href="login.jsp">返回登录页面</a>
</body>
</html>