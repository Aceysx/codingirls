function rememberMe() {
    if ($("#rememberMe").prop("checked")) {
        localStorage.setItem("email", $("#email").val());
        localStorage.setItem("password", $("#password").val());
    }else{
        localStorage.removeItem("email");
        localStorage.removeItem("password");
    }
}
function login() {
    let data = $("#login").serialize();
    $.post(baseUrl + "/singIn", data, (data) => {
        if (data.result) {
            rememberMe();
            parent.window.location.href = baseUrl;
        } else {
            $("#login_info").html(`<span class="text-danger">${data.msg}</span>`);
        }
    });
}