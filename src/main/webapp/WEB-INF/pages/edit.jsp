<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>EDIT</title>
    <link rel="stylesheet" href="${baseurl}/public/markdown/simplemde.min.css">
    <script src="${baseurl}/public/markdown/simplemde.min.js"></script>
    <link rel="stylesheet" href="${baseurl}/css/postJob.css">
    <script src="${baseurl}/js/country.js"></script>
    <script src="${baseurl}/js/postJob.js"></script>

    <script type='text/javascript' src='${baseurl}/public/tag/inputTags.jquery.js'></script>
    <link rel="stylesheet" href="${baseurl}/public/tag/inputTags.min.css">
</head>
<form id="postJob" class="form-horizontal" onsubmit="return postJob()">
    <h1 class="col-md-offset-2" style="text-align: left">Post a Job</h1>
    <div class="form-group">
        <label for="title" class="col-sm-3 control-label">Title</label>
        <div class="col-sm-5">
            <input type="text" name="title" class="form-control" id="title" value="" required>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="company">Company</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="company" name="company" required>
        </div>
        <span id="password_info" class="col-md-offset-3"></span>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="expiry_date">Expiry date</label>
        <div class="col-sm-2">
            <input type="date" name="expiryTime" value="" class="form-control" id="expiry_date" required />
        </div>
        <label class="col-sm-1 control-label" for="category">Category</label>
        <div class=" col-sm-2">
            <select class="form-control" id="category" name="categoryId" required>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label" for="job_type">Job type</label>
            <div class=" col-sm-2">
                <select class="form-control" id="job_type" name="typeId" required>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="country">Country</label>
        <div class=" col-sm-2">
            <select class="form-control" id="country" name="country" required>
            </select>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label" for="city">City</label>
            <div class="col-sm-3">
                <input type="text" name="city" value="" class="form-control" id="city" required>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="tag">Tags</label>
        <div class="col-sm-6">
            <input type="text"
                   value="" class="form-control" id="tag">
        </div>
    </div>
    <div class="form-group" >
        <label class="col-sm-3 control-label" for="description">Description</label>
        <div class="col-sm-6">
            <textarea id="description" name="description" style="width: 100%;" ></textarea>
        </div>
    </div>
    <div class="form-group" style="height: 100px">
        <label class="col-sm-3 control-label" for="how_to_apply">How to apply</label>
        <div class="col-sm-6">
            <textarea id="how_to_apply"  name="howToApply" style="width: 100%;" ></textarea>
        </div>
        <span id="confir_info" class="col-md-offset-3"></span>
    </div>

    <button type="submit" class="btn btn-success col-md-offset-3">创建工作</button>
</form>
<div id="bottom">
    <p >© 2017 Codingrils</p>
    <p>Built By acey...</p>
</div>
</html>
