<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>SIGN IN</title>
</head>
<body>
<form role="form" action="" method="post" class="login-form">
    <div class="form-group">
        <label class="sr-only" for="userName">帐号</label>
        <input type="text" name="form-username" placeholder="请输入帐号"
               class="form-username form-control" id="userName">
    </div>
    <div class="form-group">
        <label class="sr-only" for="password">密码</label>
        <input type="password" name="form-password" placeholder="请输入密码"
               class="form-password form-control" id="password">
    </div>
    <button type="button" onclick="register()" style="  background: #21a1a1">测试</button>
</form>
<script>
    function register() {
        let userName = $("#userName").val();
        let password = $("#password").val();
        $.ajax({
            url: "${baseurl}/register",
            data: {name: userName, password: password},
            success: function (data) {
                alert(JSON.stringify(data))
            }
        });
    }
</script>
</body>
</html>
