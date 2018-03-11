function resetPassword() {
    $("#forget_btn").attr({disabled: "disabled"});
    let data = $("#forgetPassword").serialize();
    $.post(baseUrl + "/resetPassword", data, (data) => {
        if (data.result) {
            $("#password_info").html(`<div class="alert alert-success" role="alert">密码已发送到邮箱，请查看</div>`);
            setTimeout("toLogin()", 1000);
        } else {
            $("#password_info").html(`<div class="alert alert-success" role="alert">发送出错</div>`);
        }
    });
}

function toLogin() {
    parent.window.location.href = baseUrl+"/login";
}