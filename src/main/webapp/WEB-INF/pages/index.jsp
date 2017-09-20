<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>HOME</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/index.css"/>
<body>
<div id="container">
    <div id="top">
        <a href="${baseurl}">
            <img src="${baseurl}/imgs/logo.jpg" height="40px" id="logo">
            <span id="title">CODINGIRLS</span>
        </a>
        <ul id="nav">
            <li><a href="${baseurl}">ALL JOBS</a></li>
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    <li><a href="${baseurl}/login" target="main">SIGN IN</a></li>
                    <li><a href="${baseurl}/register" target="main">SIGN UP</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${baseurl}/postJob" target="main">POST A JOB</a></li>
                    <li><a href="${baseurl}/myPost" target="main">MY POSTS</a></li>
                    <li><a href="${baseurl}/modifyInfo" target="main">ACCOUNT</a></li>
                    <li><a href="${baseurl}/logout">LOGOUT</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
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
        <iframe src="${baseurl}/main" name="main" frameborder="0" allowtransparency="no" width="100%"
                height="100%"></iframe>
    </div>

</div>
</body>
</html>
