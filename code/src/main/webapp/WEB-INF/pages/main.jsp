<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>首页</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/main.css"/>
<script src="${baseurl}/js/main.js"></script>
<body>
<div id="container">
    <div id="top">
        <div id="category">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:(0)" style="color: blueviolet">
                    分类
                </a>
            </div>
            <ul class="nav nav-pills" >

            </ul>
        </div>
        <div id="type">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:(0)" style="padding-left: 68px;color: blueviolet">
                    类型
                </a>
            </div>
            <ul class="nav nav-pills">

            </ul>
        </div>
        <span class="divider"></span>
    </div>
    <div id="left">
        <form class="form-inline">
            <input type="text" class="form-control" id="search_content" placeholder="search for what you want">
            <button type="button" onclick="searchContent()" class="btn btn-default">搜索</button>

            <ul class="pager" id="search">
                <li id="pre" onclick="prePage()" class="disabled"><a href="javascript:(0)"><span aria-hidden="true">&larr;</span> 上一页</a></li>
                <li id="next" onclick="nextPage()" class="disabled"><a href="javascript:(0)">下一页<span aria-hidden="true">&rarr;</span></a></li>
            </ul>
        </form>
        <div class="list-group" id="content">

        </div>
    </div>
    <div class="panel panel-info" id="right">
        <div class="panel-heading">标签</div>
        <div class="panel-body" id="tag">
        </div>
    </div>
</div>
<div id="bottom">
    <p >© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
