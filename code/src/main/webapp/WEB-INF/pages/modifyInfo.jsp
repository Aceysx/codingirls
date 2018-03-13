<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>个人信息</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/info.css">
<script src="${baseurl}/js/info.js"></script>
<body>
<form id="info" class="form-horizontal">
    <h1 class="col-md-offset-2">信息修改</h1>

    <div class="form-group">
        <label for="email" class="col-sm-3 control-label">邮箱地址</label>
        <div class="col-sm-9">
            <input type="email" name="email" class="form-control" disabled id="email" value="${sessionScope.user.email}"
                   placeholder="Email">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="current_password">当前密码</label>
        <div class="col-sm-9">
            <input type="password" class="form-control" id="current_password" placeholder="当前密码">
        </div>
        <span id="password_info" class="col-md-offset-3"></span>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="password">密码</label>
        <div class="col-sm-9">
            <input type="password" name="password" class="form-control" id="password" placeholder="不填密码和确定密码则不会修改密码">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="password_confirmation">确认密码</label>
        <div class="col-sm-9">
            <input type="password" class="form-control" id="password_confirmation" placeholder="不填密码和确定密码则不会修改密码">
        </div>
        <span id="confir_info" class="col-md-offset-3"></span>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="company">公司名称</label>
        <div class="col-sm-9">
            <input type="text" name="company" value="${sessionScope.user.company}" class="form-control" id="company"
                   placeholder="公司名称">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="company_address">公司地址</label>
        <div class="col-sm-9">
            <input type="text" name="companyAddress" value="${sessionScope.user.companyAddress}" class="form-control"
                   id="company_address" placeholder="公司地址">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="companyType">公司所属行业</label>
        <div class="col-sm-9">
            <input type="text" name="companyType" value="${sessionScope.user.companyType}" class="form-control"
                   id="companyType" placeholder="Password">
        </div>
    </div>
    <span class="btn btn-success col-md-offset-3" onclick="modify('${sessionScope.user.password}')">确定更改</span>
    <span class="btn btn-danger col-md-offset-6" onclick="cancelAccount()" data-toggle="tooltip" data-placement="left"
          title="点击将会把该帐号注销，请慎重" data-delay="0">注销帐号</span>
    <span id="modify_info" class="col-md-offset-3"></span>
    <p class="col-md-offset-3"><a href="${baseurl}/forgetPassword" target="main" class="text-danger">忘记密码？</a></p>
    <p class="col-md-offset-3"><a href="${baseurl}/resendEmail" target="main" class="text-danger">没有收到邮件？</a></p>
</form>
</body>
</html>
