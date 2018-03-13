<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>忘记密码</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/resendEmail.css"/>
<script src="${baseurl}/js/resendEmail.js"></script>
<body>

<form id="resendEmail">
    <h1>重新发送邮件</h1>
    <div class="form-group">
        <label for="email">邮件地址</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>

    <p onclick="resendEmail()" class="btn btn-success" id="resend_btn">重新发送</p>
    <span id="resend_info"></span>
    <p><a href="${baseurl}/login" target="main" class="text-danger">登录</a></p>
    <p><a href="${baseurl}/register" target="main" class="text-danger">注册</a></p>
    <p><a href="${baseurl}/forgetPassword" target="main" class="text-danger">忘记密码？</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
