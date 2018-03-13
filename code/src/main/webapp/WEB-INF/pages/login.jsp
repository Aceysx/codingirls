<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>登录</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/login.css"/>
<script src="${baseurl}/js/login.js"></script>
<body>

<form id="login">
    <h1>登录</h1>
    <div class="form-group">
        <label for="email">邮箱地址</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>
    <div class="form-group">
        <label for="password">密码</label>
        <input type="password" name="password" class="form-control" id="password" placeholder="PASSWORD">
    </div>

    <div class="checkbox">
        <label>
            <input type="checkbox"  id="rememberMe"> 记住我
        </label>
    </div>
    <p onclick="login()" class="btn btn-success">登录</p>
    <span id="login_info"></span>
    <p><a href="${baseurl}/forgetPassword" target="main" class="text-danger">忘记密码？</a></p>
    <p><a href="${baseurl}/resendEmail" target="main" class="text-danger">没有收到邮箱？</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
