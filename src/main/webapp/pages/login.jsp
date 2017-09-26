<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/LoginServlet" method="post">
		用户名：<br> <input type="text" name="username" title="用户名"><br>
		密码：<br> <input type="password" name="password" title="密码"><br>
		<input type="submit" value="登录"> <input type="reset"
			value="重置">
	</form>
</body>
</html>