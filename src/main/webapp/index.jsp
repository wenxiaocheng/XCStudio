<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="/pages/module/base.jsp" flush="true"/>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="/css/module/base.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/extends/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/css/index.css">
    <script type="text/javascript" src="/js/extends/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/js/extends/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/extends/bootstrap.js"></script>
    <script type="text/javascript" src="/js/index.js"></script>
</head>
<body>
<div class="container-fluid">

    <%-- ===============================头部=============================== --%>
    <jsp:include page="/pages/module/header.jsp" flush="true"/>

    <%-- ===============================内容=============================== --%>
    <div class="content row">

        <%--幻灯片--%>
        <div id="carousel-index" class="carousel slide row" data-ride="carousel">
            <%-- 指针（小圆圈） --%>
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <%--幻灯片容器 --%>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/carousel/bigdata.jpg" alt="大数据">
                    <div class="carousel-caption">
                        <h1>大数据</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="images/carousel/cloud-computing.jpg" alt="云计算">
                    <div class="carousel-caption">
                        <h1>云计算</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="images/carousel/ai.jpg" alt="人工智能">
                    <div class="carousel-caption">
                        <h1>人工智能</h1>
                    </div>
                </div>
            </div>

            <%-- 控制器（左右箭头） --%>
            <a class="left carousel-control" href="#carousel-index" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">上一张</span>
            </a>
            <a class="right carousel-control" href="#carousel-index" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">下一张</span>
            </a>
        </div>

        <%--主页内容--%>
        <div class="index-content-panel row" id="index-content-panel-1">
            <div class="activity col-md-offset-1 col-md-2 col-sm-offset-1 col-sm-2 col-xs-6">
                <a href="#" class="btn">
                    <h2>快速入口</h2>
                    <p>快速入口简介</p>
                </a>
            </div>
            <div class="activity col-md-2 col-sm-2 col-xs-6">
                <a href="#" class="btn">
                    <h2>快速入口</h2>
                    <p>快速入口简介</p>
                </a>
            </div>
            <div class="activity col-md-2 col-sm-2 col-xs-6">
                <a href="#" class="btn">
                    <h2>快速入口</h2>
                    <p>快速入口简介</p>
                </a>
            </div>
            <div class="activity col-md-2 col-sm-2 col-xs-6">
                <a href="#" class="btn">
                    <h2>快速入口</h2>
                    <p>快速入口简介</p>
                </a>
            </div>
            <div class="activity col-md-2 col-sm-2 col-xs-6">
                <a href="#" class="btn">
                    <h2>快速入口</h2>
                    <p>快速入口简介</p>
                </a>
            </div>

        </div>

        <div class="index-content-panel row" id="index-content-panel-2">
            <div class="box">
                <h1>待添加内容块</h1>
            </div>
        </div>

        <div class="index-content-panel row" id="index-content-panel-3">
            <div class="box">
                <h1>待添加内容块</h1>

            </div>
        </div>

        <div class="index-content-panel row" id="index-content-panel-4">
            <div class="box">
                <h1>待添加内容块</h1>

            </div>
        </div>
    </div>

    <%-- ===============================脚部=============================== --%>
    <jsp:include page="/pages/module/footer.jsp" flush="true"/>

</div>
</body>
</html>