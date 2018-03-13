<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>信息详情</title>
</head>
<link rel="stylesheet" href="${baseurl}/public/markdown/simplemde.min.css">
<link rel="stylesheet" href="${baseurl}/css/jobDetail.css">
<link rel="stylesheet" href="${baseurl}/public/switch/default.css">
<link rel="stylesheet" href="${baseurl}/public/switch/main.css">
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
                <h3 class="panel-title" style="padding-top: 0">描述</h3>
            </div>
            <div class="panel-body" id="description">

            </div>
        </div>
        <div class="panel panel-default">


            <div class="panel-heading">
                <h3 class="panel-title" style="padding-top: 0">如何申请</h3>
            </div>
            <div class="panel-body" id="how_to_apply">
                <form id="apply">
                    <input type="hidden" name="jobId" id="jobId" value="${job.id}">
                    <div class="form-group">
                        <label for="name">姓名</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="姓名">
                    </div>
                    <div class="form-group">
                        <label for="phone">手机号</label>
                        <input type="number" class="form-control" name="phone" id="phone" placeholder="手机号">
                    </div>
                    <div class="form-group">
                        <label for="description1">申请描述</label>
                        <input type="text" class="form-control" name="description" id="description1" placeholder="申请描述">
                    </div>
                    <p onclick="submit()" class="btn btn-default">提交申请</p>
                </form>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title" style="padding-top: 0">评论</h3>
            </div>
            <div class="panel-body" id="discuss">
                <c:forEach items="${discuss}" var="item">
                    <div class="panel panel-default">
                        <div class="panel-heading">${item.email}:</div>
                        <div class="panel-body">
                                ${item.content}
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <form class=" panel-default" style="margin-bottom: 20px">
            <div class="form-group">
                <textarea id="discuss_content" class="form-control" rows="3"></textarea>
            </div>
        </form>
            <p onclick="submitDiscuss()" class="btn btn-primary">提交评论</p>
    </div>
</div>
<div id="bottom">
    <p>© 2017 Codingrils</p>
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
        });
        $("#description").html(simplemde.markdown(`${job.description}`));
    });

    function submit() {
        const user = `${user}`
        if (!user) {
            alert("请先登录")
        } else {
            const data = {
                jobId: $("#jobId").val(),
                name: $("#name").val(),
                phone: $("#phone").val(),
                description: $("#description1").val(),
            }
            $.post(baseUrl + "/jobs/submitApply", data, (data) => {
                alert("申请成功")
            })
        }
    }

    function submitDiscuss() {
        const user = `${user}`
        if(!user) {
            alert("请登录")
            return
        }
        const email = `${user.email}`
        const content = $("#discuss_content").val()
        $.post(baseUrl + "/jobs/submitDiscuss",{
            content,
            jobId:${job.id},
            creatorId:${user.id}
        }, (data) => {
            $("#discuss_content").val("")
            $("#discuss").append(
                `
            <div class="panel panel-default">
                        <div class="panel-heading">`+email+`:</div>
                        <div class="panel-body">
                               `+content+`
                        </div>
                    </div>
            `
            )
        })

    }
</script>
</body>
</html>
