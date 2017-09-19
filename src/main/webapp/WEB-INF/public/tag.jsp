<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="baseurl" value="<%=basePath%>"></c:set>
<script>
    var baseUrl = "${baseurl}";
</script>
<script type="text/javascript" src="${baseurl}/public/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${baseurl}/public/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${baseurl}/public/css/bootstrap.min.css">
<link rel="stylesheet" href="${baseurl}/css/public.css">