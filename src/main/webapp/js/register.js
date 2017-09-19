let errorEmail = `<span class="text-danger">邮箱格式错误</span>`;
let availableEmail = `<span class="text-success">邮箱格式正确</span>`;
let errorPassword = `<span class="text-danger">密码格式错误(两次密码需要一样且长度大于6)</span>`;


function checkEmail() {
    let reg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    if (reg.test($("#email").val())) {
        $("#email_info").html(availableEmail);
    } else {
        $("#email_info").html(errorEmail);
    }
}
function checkPassword() {
    let old = $("#password").val();
    let now = $("#password1").val();

    return old.length >= 6 && old === now;
}
function register() {
    if (checkPassword()) {
        $("#password_info").html("");
        let data = $("#register").serialize();
        $("#register_btn").attr({disabled: "disabled"});
        $.post(baseUrl + "/signUp", data, (data) => {
            $("#register_btn").removeAttr("disabled");
            if (data.result) {
                $("#register").append(`<div class="alert alert-success" role="alert">${data.msg}</div>`);
            } else {
                $("#register_info").html(`<span class="text-danger">${data.msg}</span>`);
            }
        });

    } else {
        $("#password_info").html(errorPassword);
    }
}