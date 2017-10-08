<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/10/8 0008
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--<jsp:include page="/pages/module/base.jsp" flush="true"/>--%>
    <link rel="stylesheet" type="text/css" href="/css/module/footer.css">
    <script type="text/javascript" src="/js/module/footer.js"></script>
</head>
<body>
<%-- ===============================脚部=============================== --%>
<div class="footer">

    <%--底部内容--%>
    <div class="footer-content row">
        <dl class="col-md-offset-1 col-md-2 col-sm-offset-1 col-sm-3 col-xs-6">
            <dt>
                <h3>服务与支持</h3>
            </dt>
            <dd>
                ·<a target="_blank" href="#">广告服务</a>
            </dd>
            <dd>
                ·<a target="_blank" href="#">举报中心</a>
            </dd>
        </dl>

        <dl class="col-md-2 col-sm-3 col-xs-6">
            <dt>
                <h3>站点信息</h3>
            </dt>
            <dd>
                <a href="#" target="_blank">公告</a>
            </dd>
            <dd>
                <a href="#" target="_blank">意见反馈</a>
            </dd>
            <dd>
                <a target="_blank" href="/teams">服务条款</a>
            </dd>
            <dd>
                <a target="_blank" href="/disclaimer">免责声明</a>
            </dd>
            <dd>
                <a target="_blank" href="/aboutus">关于我们</a>
            </dd>
        </dl>

        <div class="col-md-offset-4 col-md-2 col-sm-offset-1 col-sm-3 col-xs-12 share">
            <h3>关注我们</h3>
            <div id="share-accordion">

                <h3>关注微信</h3>
                <div class="share-box">
                    <img src="/images/xiaocheng-wechat.png" alt="微信二维码">
                </div>
                <h3>关注微博</h3>
                <div class="share-box">
                    <img src="/images/xiaocheng-wechat.png" alt="微信二维码">
                </div>
                <h3>关注QQ</h3>
                <div class="share-box">
                    <img src="/images/xiaocheng-wechat.png" alt="微信二维码">
                </div>

            </div>
        </div>
    </div>

    <%--版权信息--%>
    <div class="copyright row">
        <p>
            Copyright © 2016-2017 <strong><a href="//xcstudio.xin/" target="_blank">小成工作室</a></strong>&nbsp;<strong><a
                href="//xcstudio.xin/" target="_blank">xcstudio.xin</a></strong>&nbsp;<strong><a
                href="//xcstudio.xin/"
                target="_blank">黔ICP备15016561号-3</a></strong>
            All Rights Reserved.
        </p>
    </div>
</div>
</body>
</html>
