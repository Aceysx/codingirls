<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>FORGET PASSWORD</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/resendEmail.css"/>
<script src="${baseurl}/js/resendEmail.js"></script>
<body>

<form id="resendEmail">
    <h1>Resend confirmation instructions</h1>
    <div class="form-group">
        <label for="email">EMAIL ADDRESS</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>

    <p onclick="resendEmail()" class="btn btn-success" id="resend_btn">Resend confirmation instructions</p>
    <span id="resend_info"></span>
    <p><a href="${baseurl}/singIn" target="main" class="text-danger">Sign in</a></p>
    <p><a href="${baseurl}/signUp" target="main" class="text-danger">Sign up</a></p>
    <p><a href="${baseurl}/forgetPassword" target="main" class="text-danger">Forgot your password?</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
