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