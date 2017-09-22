<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>job detail</title>
</head>
<link rel="stylesheet" href="${baseurl}/public/markdown/simplemde.min.css">
<link rel="stylesheet" href="${baseurl}/css/jobDetail.css">
<script src="${baseurl}/public/markdown/simplemde.min.js"></script>
<script src="${baseurl}/js/jobDetail.js"></script>
<body>
<div id="container">
    <div class="jumbotron" id="top">
        <div class="page-header" id="title">
            <h2>${job.title}
                <small style="font-style: italic">${job.company}</small>
            </h2>
            <p><span>${job.city} ${job.country}</span><span class="label label-primary"
                                                            style="margin: 0 10px;">${job.category}</span>
                <span class="label label-warning">${job.type}</span></p>
            <p>
                <c:forEach var="item" items="${job.tags}">
                    <span class="label label-success tag">${item.name}</span>
                </c:forEach>
                <span id="time">${job.createTime}</span>
            </p>
        </div>
    </div>
    <c:if test="${user.id == job.userId}">
        <div id="per">
            <a href="${baseurl}/jobs/edit/${requestScope.job.id}" class="btn btn-primary" id="edit">Edit</a>
        </div>
    </c:if>
    <div id="content">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title" style="padding-top: 0">Description</h3>
            </div>
            <div class="panel-body" id="description">

            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title" style="padding-top: 0">How to apply</h3>
            </div>
            <div class="panel-body" id="how_to_apply">

            </div>
        </div>
    </div>
</div>
<div id="bottom">
    <p >© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
<div style="display: none">
    <textarea name="" rows="" cols="" id="editor"></textarea>
</div>
<script>
    $(function () {
        let simplemde = new SimpleMDE({
                element: document.getElementById("editor"),
                toolbar: false,
                toolbarTips: false
            })
        ;
        let description = `${job.description}`;
        let howToApply = `${job.howToApply}`;
        $("#description").html(simplemde.markdown(description));
        $("#how_to_apply").html(simplemde.markdown(howToApply));
    });
</script>
</body>
</html>
