<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>志愿者服务中心</title>
</head>
<%--<link rel="stylesheet" href="${baseurl}/css/index.css"/>--%>
<body>
<script language="javascript">
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide"
        });
    });
</script>
<div>
    <div id="top">
        <%--<a href="${baseurl}">--%>
        <%--<img src="${baseurl}/imgs/logo.jpg" height="40px" id="logo">--%>
        <%--<span id="title">某某信息招募平台</span>--%>
        <%--</a>--%>
        <%--<ul id="nav">--%>
        <%--<li><a href="${baseurl}">首页</a></li>--%>
        <%--<c:choose>--%>
        <%--<c:when test="${empty sessionScope.user}">--%>
        <%--<li><a href="${baseurl}/login" target="main">登录</a></li>--%>
        <%--<li><a href="${baseurl}/register" target="main">注册</a></li>--%>
        <%--</c:when>--%>
        <%--<c:otherwise>--%>
        <%--<li><a href="${baseurl}/postJob" target="main">信息发布</a></li>--%>
        <%--<li><a href="${baseurl}/myPost" target="main">我的发布</a></li>--%>
        <%--<li><a href="${baseurl}/modifyInfo" target="main">个人信息</a></li>--%>
        <%--<li><a href="${baseurl}/logout">注销</a></li>--%>
        <%--</c:otherwise>--%>
        <%--</c:choose>--%>
        <%--</ul>--%>
        <div class="t_bg">
            <div class="top">
                <c:choose>
                    <c:when test="${empty user}">
                        <a href="${baseurl}/login" target="main">登录</a><i>|</i>
                        <a href="${baseurl}/register" target="main">注册</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${baseurl}/modifyInfo" target="main">个人信息</a><i>|</i>
                        <a href="${baseurl}/logout">退出</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
        <div class="head clearfix">
            <div class="logo"><a href=""><img src="${baseurl}/public/Assets/images/logo.png.png" alt="智腾达"/></a></div>
            <div class="search">
            </div>
            <div class="tel">
                <span><em>热线电话:</em>&nbsp;</span>
                <b>17868801756</b>
            </div>
        </div>
        <div class="n_bg">
            <div class="nav_m">
                <div class="n_icon">导航栏</div>
                <ul class="nav clearfix">
                    <li>
                        <a href="${baseurl}/indexMain" target="main"><i>&nbsp;</i></a>

                    </li>
                    <li class="now"><a href="${baseurl}/indexMain" target="main"><i>&nbsp;</i>首页</a></li>
                    <li>
                        <a href="${baseurl}/main" target="main"><i>&nbsp;</i>招募中心</a>

                    </li>
                    <li>
                        <a href="${baseurl}/postJob" target="main"><i>&nbsp;</i>发布活动</a>

                    </li>
                    <li>
                        <a href="${baseurl}/myPost" target="main"><i>&nbsp;</i>我的发布</a>

                    </li>
                    <li>
                        <a href="${baseurl}/modifyInfo" target="main"><i>&nbsp;</i>个人信息</a>

                    </li>


                    <li>
                        <a href="${baseurl}/about" target="main"><i>&nbsp;</i>关于我们</a>

                    </li>
                    <li>
                        <a href="${baseurl}/contact" target="main"><i>&nbsp;</i>联系我们</a>

                    </li>
                </ul>
            </div>
        </div>
        <%--<button type="button"><a href="${baseurl}/jobDetail">jobDetail</a></button>--%>
        <%--<button type="button"><a href="${baseurl}/forgetPassword">forget password</a></button>--%>
    </div>
    <c:if test="${requestScope.result == true}">
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <strong>提示</strong> 帐号激活成功，请登录！
        </div>
    </c:if>
    <div id="main">
        <iframe src="${baseurl}/indexMain" name="main" frameborder="0" allowtransparency="no" width="100%"
                height="100%"></iframe>

    </div>

</div>
<%--<div class="bg_b">--%>
    <%--<div class="f_nav clearfix">--%>
        <%--<div class="f_nl">--%>
            <%--<div class="name">友情链接</div>--%>
            <%--<div class="frd">--%>
                <%--<a href="http://www.chinavolunteer.cn/">中国志愿者服务网</a>--%>
                <%--<a href="http://www.zgzyz.org.cn/">中国青年志愿者网</a>--%>
                <%--<a href="http://www.cvf.org.cn/">中国志愿者服务联合会</a>--%>
                <%--<a href="http://www.jsvolunteer.org/">志愿江苏平台</a>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<ul class="f_nr clearfix">--%>

        <%--</ul>--%>
    <%--</div>--%>
<%--</div>--%>
<div class="bg_c">
    <div class="bq">版权所有：西安欧亚学院--信息工程学院 软件工程 王鑫</div>
</div>
</body>
</html>
