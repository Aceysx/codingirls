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
    if(checkPassword()) {
        $("#password_info").html("");
        $.post(baseUrl+"/signUp",)
    }else{
        $("#password_info").html(errorPassword);
    }
}