<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
	<h1>注册</h1>
	<form action="MyServlet" method="get">
		<fieldset>
			<legend>注册信息:</legend>
			用户名：<input type="text" name="username"><br> 密码：<input
				type="password" name="password"> <br>姓名：<input
				type="text" name="name"> <br>性别：<input type="radio"
				name="sex" value="男" checked="checked">男<input type="radio"
				name="sex" value="女">女 <br>生日：<input name="birthday">
			<br> <input type="submit" value="提交">
		</fieldset>
	</form>
</body>
</html>