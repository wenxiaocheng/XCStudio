<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="/pages/module/base.jsp" flush="true"/>
    <title>登录 - XCStudio</title>
    <link rel="stylesheet" type="text/css" href="/css/module/base.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/bootstrapValidator.css">
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <script type="text/javascript" src="/js/extends/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/js/extends/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/extends/bootstrap.js"></script>
    <script type="text/javascript" src="/js/extends/bootstrapValidator.js"></script>
    <script type="text/javascript" src="/js/extends/bootstrapvalidator-zh_CN.js"></script>
    <script type="text/javascript" src="/js/form.js"></script>
</head>
<body>

<div class="container-fluid">

    <%-- ===============================头部=============================== --%>
    <jsp:include page="/pages/module/header.jsp" flush="true"/>

    <%-- ===============================内容=============================== --%>
    <div class="content row">

        <%-- =========================== 登录/注册盒子 =========================== --%>
        <div class="login-register-box col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6">
            <div class="login-register-title col-md-12">
                <h3 class="text-center">用户登录 </h3>
            </div>


            <%-- =========================== 登录框 =========================== --%>
            <form class="form form-horizontal" id="login-form"
                  action="<%=request.getContextPath()%>/CheckServlet"
                  method="post" role="form">

                <div class="form-group form-group-lg">
                    <label for="login-input-username" class="col-md-offset-1 col-md-10">用户名</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="text" class="form-control" id="login-input-username"
                               placeholder="邮箱/手机号码/ID"
                               name="login_username" aria-describedby="login-input-username-help">
                    </div>
                </div>

                <div class="form-group form-group-lg">
                    <label for="login-input-password" class="col-md-offset-1 col-md-10">密码</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="password" class="form-control" id="login-input-password"
                               placeholder="请输入密码"
                               name="login_password">
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="checkbox col-md-offset-1 col-md-6 col-xs-7">
                        <label>
                            <input type="checkbox" id="login-input-checkbox">
                            <span> 记住登录状态</span>
                        </label>
                    </div>
                    <div class="checkbox col-md-5 col-xs-5">
                        <label>
                            <a href="#">忘记密码？</a>
                        </label>
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="col-md-offset-1 col-md-10">
                        <button type="submit" class="btn btn-success btn-lg btn-block" id="login-button">登录
                        </button>
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="col-md-offset-1 col-md-10">
                        <a class="btn btn-primary btn-lg btn-block" id="Regis-button" href="/pages/register.jsp">快速注册
                        </a>
                    </div>
                </div>

            </form>
        </div>
    </div>

    <%-- ===============================脚部=============================== --%>
    <jsp:include page="/pages/module/footer.jsp" flush="true"/>
</div>


</body>
</html>