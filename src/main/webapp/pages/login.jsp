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
            用户名：<br> <input type="text" name="username" title="用户名"><br>
            密码：<br> <input type="password" name="password" title="密码"><br>
            <input type="submit" name="submit" value="登录"
                   onclick="return check(this)"> <input type="reset"
                                                        name="reset" value="重置">
        </form>
    </div>
</div>

</body>
</html>