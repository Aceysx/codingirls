<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>MY POST</title>
</head>
<link rel="stylesheet" href="${baseurl}/public/switch/default.css">
<link rel="stylesheet" href="${baseurl}/public/switch/main.css">
<link rel="stylesheet" href="${baseurl}/css/myPost.css">
<script src="${baseurl}/js/myPost.js"></script>

<body style="padding-top: 0">
<div id="container">
    <div class="page-header">
        <h1>MY POSTS</h1>
    </div>
    <form class="form-inline">
        <ul class="nav nav-pills" id="search">
            <li role="presentation" class="active " onclick="searchState(this,'')"><a href="javascript:(0)">ALL</a>
            <li role="presentation" onclick="searchState(this,1)"><a href="javascript:(0)">Public</a>
            <li role="presentation" onclick="searchState(this,0)"><a href="javascript:(0)">Hidden</a>
        </ul>
        <ul class="pager" id="page">
            <li id="pre" onclick="prePage()" class="disabled"><a href="javascript:(0)"><span
                    aria-hidden="true">&larr;</span> Pre</a></li>
            <li id="next" onclick="nextPage()" class="disabled"><a href="javascript:(0)">Next<span aria-hidden="true">&rarr;</span></a>
            </li>
        </ul>
    </form>
    <div class="list-group" id="content">

    </div>
</div>
<div id="bottom">
    <p>© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</body>
</html>
