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
            <h1 class="text-center">慧科教育 - 用户登录/注册 </h1>
        </div>
    </div>

    <div class="body row">
        <div class=" login-box col-md-4 col-md-offset-4">
            <div class="login-type row">
                <nav>
                    <ul class="login-pager pager">
                        <li class="col-md-6"><a href="#">快速登录</a></li>
                        <li class="col-md-6"><a href="#">快速注册</a></li>
                    </ul>
                </nav>
            </div>
            <form class="form form-horizontal" id="login-form" action="<%=request.getContextPath()%>/CheckServlet"
                  method="post" role="form">
                <div class="form-group ">
                    <label for="login-input-username" class="col-sm-2  col-md-offset-1 control-label">用户名：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="login-input-username"
                               placeholder="请输入长度为1～30个字符的用户名"
                               name="username" aria-describedby="login-input-username-help">
                    </div>
                </div>
                <div class="form-group">
                    <label for="login-input-password" class="col-sm-2  col-md-offset-1 control-label">密码：</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="login-input-password"
                               placeholder="请输入长度为6～16个字符的密码"
                               name="password">
                    </div>
                    <br>
                    <span id="login-input-password-help" class="help-block col-md-8 col-md-offset-3 hidden">.</span><br>
                    <a href="#" class="col-md-5 col-md-offset-3">忘记密码？</a>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 一周内免密码登录
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <button type="submit" class="btn btn-success btn-lg btn-block" id="login-button">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


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


<div class="footer">
</div>
</body>
</html>