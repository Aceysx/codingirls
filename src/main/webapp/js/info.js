function check(password) {
    $("#password_info").html("");
    $("#confir_info").html("");
    if (password !== $("#current_password").val()) {
        $("#password_info").html(`<span class="text-danger">当前密码错误</span>`);
        return false;
    }

    if (!checkPassword()) {
        $("#confir_info").html(`<span class="text-danger">密码格式错误(两次密码需要一样且长度大于6)</span>`);
        return false;
    }

    return true;
}

function modify(password) {
    if (check(password)) {
        let data = $("#info").serialize();
        $.post(baseUrl + "/editInfo", data, (data) => {
            if (data.result) {
                parent.window.location.href = baseUrl;
            }else{
                $("#modify_info").html(`<span class="text-danger">修改信息出错</span>`);
            }
        });
    }
}

function cancelAccount() {
    $.post(baseUrl + "/cancel",  (data) => {
        if (data.result) {
            parent.window.location.href = baseUrl;
        }else{
            $("#modify_info").html(`<span class="text-danger">注销帐号出错</span>`);
        }
    });
}

function checkPassword() {
    let password = $("#password").val();
    let confirmation = $("#password_confirmation").val();

    if (password === confirmation && password.length === 0) return true;
    return password.length >= 6 && password === confirmation;
}