<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>忘记密码</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/forgetPassword.css"/>
<script src="${baseurl}/js/forgetPassword.js"></script>
<body>

<form id="forgetPassword">
    <h1>Forgot your password?</h1>
    <div class="form-group">
        <label for="email">邮箱地址</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>

    <p onclick="resetPassword()" class="btn btn-success" id="forget_btn">发送重置密码</p>
    <span id="password_info"></span>
    <p><a href="${baseurl}/login" target="main" class="text-danger">登录</a></p>
    <p><a href="${baseurl}/register" target="main" class="text-danger">注册</a></p>
    <p><a href="${baseurl}/resendEmail" target="main" class="text-danger">没有收到邮箱？</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
