let errorEmail = `<span class="text-danger">error format</span>`;
let availableEmail = `<span class="text-success">success</span>`;
let errorPassword = `<span class="text-danger">error format,the password length needs to be greater than 6</span>`;

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

    return old.length < 6 && old === now;
}
function register() {
    if(checkPassword()) {
        $("#password_info").html("");
        $.post(baseUrl+"/")
    }else{
        $("#password_info").html(errorPassword);
    }
}