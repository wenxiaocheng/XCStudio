<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%-- IE 兼容模式 --%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%-- 国产浏览器默认采用高速模式渲染页面 --%>
    <meta name="renderer" content="webkit">
    <%-- 移动设备优先 --%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
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
    <div class="header page-header row">
        <div class="title col-md-12">
            <h1 class="text-center">XCStudio - 用户登录/注册 </h1>
        </div>
    </div>

    <div class="body row">

        <%-- =========================== 登录/这侧盒子 =========================== --%>
        <div class="login-register-box col-md-4 col-md-offset-4">

            <%-- =========================== 登录/注册切换标签 =========================== --%>
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#login_tab" aria-controls="登录" role="tab"
                                                          data-toggle="tab">快速登录</a></li>
                <li role="presentation"><a href="#register_tab" aria-controls="注册" role="tab" data-toggle="tab">快速注册</a>
                </li>
            </ul>

            <div class="tab-content">

                <%-- =========================== 登录框 =========================== --%>
                <div role="tabpanel" class="tab-pane fade in active" id="login_tab">

                    <form class="form form-horizontal" id="login-form"
                          action="<%=request.getContextPath()%>/CheckServlet"
                          method="post" role="form">

                        <div class="form-group form-group-lg">
                            <label for="login-input-username" class="col-md-offset-1 col-md-10">用户名</label>
                            <div class="col-md-offset-1 col-md-10">
                                <input type="text" class="form-control" id="login-input-username"
                                       placeholder="请输入用户名"
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
                            <a href="#" class="col-md-offset-2 col-md-8">忘记密码？</a>
                        </div>

                        <div class="form-group  form-group-lg">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">
                                        <span> 一周内免密码登录</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group  form-group-lg">
                            <div class="col-md-offset-2 col-md-8">
                                <button type="submit" class="btn btn-success btn-lg btn-block" id="login-button">登录
                                </button>
                            </div>
                        </div>

                    </form>

                </div>

                <%-- =========================== 注册框 =========================== --%>
                <div role="tabpanel" class="tab-pane fade" id="register_tab">

                    <form class="form form-horizontal" id="register-form"
                          action="<%=request.getContextPath()%>/CheckServlet"
                          method="post" role="form">

                        <div class="form-group form-group-lg">
                            <label for="register-input-username" class="col-md-offset-1 col-md-10">用户名</label>
                            <div class="col-md-offset-1 col-md-10">
                                <input type="text" class="form-control" id="register-input-username"
                                       placeholder="请输入用户名"
                                       name="register_username" aria-describedby="register-input-username-help">
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

                        <div class="form-group  form-group-lg">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="register-terms" id="termsAgree">
                                        <span>我已阅读并同意<a href="#">《用户协议与条款》</a></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group  form-group-lg">
                            <div class="col-md-offset-2 col-md-8">
                                <button type="submit" class="btn btn-success btn-lg btn-block" id="register-button">注册
                                </button>
                            </div>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>
</div>


<%--======================================模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="gridSystemModalLabel">温馨提示</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8 col-lg-offset-2">
                        <p>用户名或密码错误，请重新登录！</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger  col-md-2 col-md-offset-5" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>


<%--=======================================测试--%>


<div class="footer">
</div>
</body>
</html>