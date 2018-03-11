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
    <h1>Forgot your password?</h1>
    <div class="form-group">
        <label for="email">EMAIL ADDRESS</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" >
        <span id="email_info"></span>
    </div>

    <p onclick="resetPassword()" class="btn btn-success" id="forget_btn">Send me reset password instructions</p>
    <span id="password_info"></span>
    <p><a href="${baseurl}/login" target="main" class="text-danger">Sign in</a></p>
    <p><a href="${baseurl}/register" target="main" class="text-danger">Sign up</a></p>
    <p><a href="${baseurl}/resendEmail" target="main" class="text-danger">Didn't receive confirmation instructions?</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
