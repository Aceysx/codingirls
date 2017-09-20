function resendEmail() {
    $("#resend_btn").attr({disabled: "disabled"});
    let data = $("#resendEmail").serialize();
    $.post(baseUrl + "/resend",data,(data) => {
        if (data.result) {
            $("#resend_info").html(`<div class="alert alert-success" role="alert">激活已发送到邮箱，请查看</div>`);
        } else {
            $("#resend_btn").removeAttr("disabled");
            $("#resend_info").html(`<div class="alert alert-success" role="alert">发送出错</div>`);
        }
    });
}