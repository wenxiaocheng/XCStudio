<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <script type="text/javascript" src="/js/login.js"></script>
</head>
<body>
<div class="login">
    <div class="login-box">
        <form action="<%=request.getContextPath()%>/CheckServlet"
              method="post" name="loginForm">
            <h1 class="login-title">登录</h1>
            <span class="attributes-name">用户名：</span><br> <input type="text" name="username" title="用户名" class="input"><br>
            <p class="login-tip" id="login-tip-username"></p><br>
            <span class="attributes-name">密码：</span><br> <input type="password" name="password" title="密码" class="input"><br>
            <p class="login-tip" id="login-tip-password"></p><br>
            <div class="login-button-box">
                <input type="submit" name="submit" value="登录" class="login-button" onclick="return check(this)">
                <input type="reset" name="reset" value="重置" class="login-button">
            </div>
        </form>
    </div>
</div>

</body>
</html>