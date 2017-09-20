<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>SING UP</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/register.css"/>
<script src="${baseurl}/js/register.js"></script>
<body>
<form id="register">
    <h1>SIGN UP</h1>
    <div class="form-group">
        <label for="email">EMAIL ADDRESS</label>
        <input type="email" name="email" class="form-control" id="email" placeholder="EMAIL" onblur="checkEmail()">
        <span id="email_info"></span>
    </div>
    <div class="form-group">
        <label for="password">PASSWORD</label>
        <input type="password" name="password" class="form-control" id="password" placeholder="PASSWORD">
    </div>
    <div class="form-group">
        <label for="password1">PASSWORD CONFIRMATION</label>
        <input type="password" class="form-control" id="password1" placeholder="PASSWORD CONFIRMATION">
        <span id="password_info"></span>
    </div>

    <p onclick="register()"  class="btn btn-success" id="register_btn">SIGN UP</p>
    <button type="reset" class="btn btn-default">Reset</button>
    <span id="register_info"></span>
    <p><a href="${baseurl}/resendEmail" class="text-danger">Didn't receive confirmation instructions?</a></p>
</form>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
