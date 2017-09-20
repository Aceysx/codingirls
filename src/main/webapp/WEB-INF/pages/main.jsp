<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>HOME</title>
</head>
<link rel="stylesheet" href="${baseurl}/css/main.css"/>
<script src="${baseurl}/js/main.js"></script>
<body>
<div id="container">
    <div id="top">
        <div id="category">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:(0)" style="color: blueviolet">
                    CATEGORY
                </a>
            </div>
            <ul class="nav nav-pills" >

            </ul>
        </div>
        <div id="type">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:(0)" style="padding-left: 68px;color: blueviolet">
                    TYPE
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
            <button type="button" onclick="searchContent()" class="btn btn-default">Search</button>

            <ul class="pager" id="search">
                <li id="pre" onclick="prePage()" class="disabled"><a href="javascript:(0)"><span aria-hidden="true">&larr;</span> Pre</a></li>
                <li id="next" onclick="nextPage()" class="disabled"><a href="javascript:(0)">Next<span aria-hidden="true">&rarr;</span></a></li>
            </ul>
        </form>
        <div class="list-group" id="content">

        </div>
    </div>
    <div class="panel panel-info" id="right">
        <div class="panel-heading">TAGS</div>
        <div class="panel-body" id="tag">
        </div>
    </div>
    <div id="bottom">
        <p>© 2017 Codingrils</p>
        <p>Built By acey...</p>
    </div>
</div>
</body>
</html>
