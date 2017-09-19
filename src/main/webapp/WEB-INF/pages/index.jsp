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
        <span id="title">CODINGIRLS</span>
        <ul id="nav">
            <li><a href="${baseurl}/login">SIGN IN</a></li>
            <li><a href="${baseurl}/register">SIGN UP</a></li>
            <li><a href="${baseurl}/postJob">POST A JOB</a></li>
            <li><a href="${baseurl}/modifyInfo">ACCOUNT</a></li>
        </ul>
        <%--<button type="button"><a href="${baseurl}/jobDetail">jobDetail</a></button>--%>
        <%--<button type="button"><a href="${baseurl}/myPost">My Post</a></button>--%>
        <%--<button type="button"><a href="${baseurl}/forgetPassword">forget password</a></button>--%>
    </div>
    <div id="main">
        <iframe src="${baseurl}/main" frameborder="0" scrolling="no" allowtransparency="no" width="100%" height="100%"></iframe>
    </div>

</div>
</body>
</html>
