<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="baseurl" value="<%=basePath%>"></c:set>
<script type="text/javascript" src="${baseurl}/public/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${baseurl}/public/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${baseurl}/public/css/bootstrap.min.css">
<link rel="stylesheet" href="${baseurl}/css/public.css">
<link rel="stylesheet" type="text/css" href="${baseurl}/public/Assets/css/reset.css"/>
<script type="text/javascript" src="${baseurl}/public/Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${baseurl}/public/Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="${baseurl}/public/Assets/plugins/FlexSlider/flexslider.css">
<script type="text/javascript" src="${baseurl}/public/Assets/plugins/FlexSlider/jquery.flexslider.js"></script>
<link rel="stylesheet" type="text/css" href="${baseurl}/public/Assets/css/thems.css">
<link rel="stylesheet" type="text/css" href="${baseurl}/public/Assets/css/responsive.css">
<script>
    var baseUrl ;
    function isRememberMe() {
        return localStorage.getItem("email") && localStorage.getItem("password");
    }

    $(function () {
        baseUrl === undefined ? (baseUrl="${baseurl}") : "";
        if (isRememberMe() && `<%=session.getAttribute("user")%>` == "null") {
            $.post("${baseurl}/singIn", {
                "email": localStorage.getItem("email"),
                "password": localStorage.getItem("password")
            }, (data) => {
                if(!data.result) {
                    localStorage.removeItem("email");
                    localStorage.removeItem("password");
                }
            });
        }
    });
</script>
