<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="/pages/module/base.jsp" flush="true"/>
    <title>注册 - XCStudio</title>
    <link rel="stylesheet" type="text/css" href="/css/module/base.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/bootstrapValidator.css">
    <link rel="stylesheet" type="text/css" href="/css/register.css">
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
                <h3 class="text-center">用户注册 </h3>
            </div>

            <%-- =========================== 注册框 =========================== --%>
            <form class="form form-horizontal" id="register-form"
                  action="<%=request.getContextPath()%>/CheckServlet"
                  method="post" role="form">

                <div class="form-group form-group-lg">
                    <label for="register-input-username" class="col-md-offset-1 col-md-10">用户名</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="text" class="form-control" id="register-input-username"
                               placeholder="请输入用户名"
                               name="register_username">
                    </div>
                </div>

                <div class="form-group form-group-lg">
                    <label for="register-input-password" class="col-md-offset-1 col-md-10">设置密码</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="password" class="form-control" id="register-input-password"
                               placeholder="请输入密码"
                               name="register_password">
                    </div>
                </div>

                <div class="form-group form-group-lg">
                    <label for="register-input-password" class="col-md-offset-1 col-md-10">确认密码</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="password" class="form-control" id="register-input-confirm-password"
                               placeholder="请输入确认密码"
                               name="register_confirm_password">
                    </div>
                </div>

                <div class="form-group form-group-lg">
                    <label for="register-input-email" class="col-md-offset-1 col-md-10">电子邮箱</label>
                    <div class="col-md-offset-1 col-md-10">
                        <input type="email" class="form-control" id="register-input-email"
                               placeholder="请输入电子邮箱地址"
                               name="register_email">
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="col-md-offset-1 col-md-8">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="register_terms" id="termsAgree">
                                <span>我已阅读并同意<a href="#">《用户协议与条款》</a></span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="col-md-offset-1 col-md-10">
                        <button type="submit" class="btn btn-success btn-lg btn-block" id="register-button">注册
                        </button>
                    </div>
                </div>

                <div class="form-group  form-group-lg">
                    <div class="col-md-offset-1 col-md-10">
                        <a class="btn btn-primary btn-lg btn-block" id="Regis-button" href="/pages/login.jsp">快速登录
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