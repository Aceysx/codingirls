<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<html>
<head>
    <title>POST JOB</title>
    <script src="${baseurl}/public/markdown/simplemde.min.js"></script>
    <script src="${baseurl}/public/markdown/simplemde.min.css"></script>
    <link rel="stylesheet" href="${baseurl}/css/postJob.css">
    <script src="${baseurl}/js/postJob.js"></script>
</head>
<form id="postJob" class="form-horizontal">
    <h1 class="col-md-offset-2">Post a Job</h1>

    <div class="form-group">
        <label for="title" class="col-sm-3 control-label">Title</label>
        <div class="col-sm-5">
            <input type="email" name="title" class="form-control" id="title" value="">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="company">Company</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" id="company">
        </div>
        <span id="password_info" class="col-md-offset-3"></span>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="description">Description</label>
        <div class="col-sm-9">
            <input type="text" name="description" class="form-control" id="description">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="how_to_apply">How to apply</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" id="how_to_apply">
        </div>
        <span id="confir_info" class="col-md-offset-3"></span>
    </div>

    <div class="form-group">
        <label class="col-sm-3 control-label" for="expiry_date">Expiry date</label>
        <div class="col-sm-9">
            <input type="text" name="company" value="" class="form-control" id="expiry_date"
            >
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="category">Category</label>
        <div class=" col-sm-2">
            <select class="form-control" id="category">
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
                <select class="form-control" id="job_type">
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
        <label class="col-sm-3 control-label" for="tags">Tags</label>
        <div class="col-sm-9">
            <input type="text" name="category" value="" class="form-control"
                   id="tags">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label" for="country">Country</label>
        <div class=" col-sm-2">
            <select class="form-control" id="country">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label" for="city">City</label>
            <div class="col-sm-3">
                <input type="text" name="city" value="" class="form-control"
                       id="city">
            </div>
        </div>
    </div>

    <span class="btn btn-success col-md-offset-3" onclick="modify('${sessionScope.user.password}')">确定更改</span>
</form>
</html>
