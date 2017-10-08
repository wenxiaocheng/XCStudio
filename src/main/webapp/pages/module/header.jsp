<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/10/8 0008
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <%--<jsp:include page="/pages/module/base.jsp" flush="true"/>--%>
    <link rel="stylesheet" type="text/css" href="/css/module/header.css">
    <script type="text/javascript" src="/js/module/header.js"></script>
</head>
<body>

<%-- ===============================头部=============================== --%>
<div class="header">
    <nav class="navbar navbar-inverse row">
        <div class="container-fluid">

            <%--网站logo--%>
            <div class="navbar-header">
                <%--汉堡包菜单，用于移动设备自适应显示--%>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-navbar-collapse" aria-expanded="false">
                    <span class="sr-only">导航变换</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">XCStudio</a>
            </div>

            <%--导航菜单--%>
            <div class="collapse navbar-collapse" id="bs-navbar-collapse">

                <%--左侧菜单--%>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/">首页 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">博客</a></li>
                    <li><a href="#">发现</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">魔鬼学院 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">java</a></li>
                            <li><a href="#">html</a></li>
                            <li><a href="#">c语言</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">人工智能</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">大数据</a></li>
                        </ul>
                    </li>
                </ul>

                <%--搜索框,登录注册--%>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" id="navbar-form-search" placeholder="搜索">
                    </div>
                    <a class="btn btn-success" href="/pages/login.jsp">登录</a>
                    <a class="btn btn-primary" href="/pages/register.jsp">注册</a>
                </form>
            </div>
        </div>
    </nav>
</div>

</body>
</html>
