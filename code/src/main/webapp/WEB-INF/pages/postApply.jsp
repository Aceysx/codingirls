<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>我的发布</title>
</head>
<link rel="stylesheet" href="${baseurl}/public/switch/default.css">
<link rel="stylesheet" href="${baseurl}/public/switch/main.css">
<link rel="stylesheet" href="${baseurl}/css/myPost.css">

<body style="padding-top: 0">
<div id="container">
    <div class="page-header">
        <h1>申请管理</h1>
    </div>
    <form class="form-inline">
    <div class="list-group" id="content">
        <c:forEach var="item" items="${applys}">
            <div style="border: 1px silver solid;border-radius: 5px;margin-bottom: 10px;padding: 15px">
                <h3 class="list-group-item-heading content_title" style="padding-top: 0">${item.name}
                    <div class="checkbox checkbox-slider-md checkbox-slider--b-flat checkbox-slider-success isPublic">
                        <label>
                            <input  type="checkbox" checked>
                        </label>
                    </div>
                    <span class="time">${item.phone}</span>
                </h3>
                <span class="list-group-item-text category">${item.description}</span>
            </div>
        </c:forEach>
    </div>
        <script>
            function change(t,id) {
                let allow = $(t).prop("checked") ? 1 : 0;
                $.post(baseUrl + `/jobs/apply/${id}/${allow}`);
            }
        </script>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
    </form>
</div>
</body>
</html>
