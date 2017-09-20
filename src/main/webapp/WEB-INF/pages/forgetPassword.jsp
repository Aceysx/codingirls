<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>FORGET PASSWORD</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/forgetPassword.css"/>
<script src="${baseurl}/js/forgetPassword.js"></script>
<body>

<form id="forgetPassword">
    <h1>SIGN IN</h1>
    <div class="form-group">
        <label for="email">EMAIL ADDRESS</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>
    <div class="form-group">
        <label for="password">PASSWORD</label>
        <input type="password" name="password" class="form-control" id="password" placeholder="PASSWORD">
    </div>

    <div class="checkbox">
        <label>
            <input type="checkbox"  id="rememberMe"> Remember Me
        </label>
    </div>
    <p onclick="login()" class="btn btn-success">SIGN IN</p>
    <span id="login_info"></span>
    <p><a href="${baseurl}/forgetPassword" target="main" class="text-danger">Forgot your password?</a></p>
    <p><a href="${baseurl}/forgetPassword" target="main" class="text-danger">Didn't receive confirmation instructions?</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
