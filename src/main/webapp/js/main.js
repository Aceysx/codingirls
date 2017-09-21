let categoryId = "";
let typeId = "";
let tagId = "";
let content = "";
let currentIndex = 1;
let page;

function searchCategory(t, id) {
    $(t).siblings("li").removeClass("active");
    $(t).addClass("active");
    categoryId = id;
    search();
}
function searchType(t, id) {
    $(t).siblings("li").removeClass("active");
    $(t).addClass("active");
    typeId = id;
    search();
}
function searchTag(t, id) {
    $(t).siblings("span").removeClass("tag_select");
    $(t).addClass("tag_select");
    tagId = id;
    search();
}
function searchContent() {
    content = $("#search_content").val();
    search();
}

function loadJobs(jobs) {
    let _html = "";
    jobs.map(job => {
        _html += `<a href="` + baseUrl + `/jobs/detail/` + job.id + `" class="list-group-item " >
                    <h3 class="list-group-item-heading content_title">` + job.title + `
                        <span class="time">` + job.create_time + `</span>
                    </h3>
                    <span class="list-group-item-text category">` + job.category_name + `</span>
                    <span class="list-group-item-text type">` + job.type_name + `</span>
                    <span class="list-group-item-text place">` + job.city  + ` ` + job.country+ `</span>`;
        if (job.tags !== null) {
            job.tags.map(tag => {
                _html += ` <span class="label label-success"> ` + tag.name + ` <span class="badge">` + tag.number + `</span></span>`;
            });
        }
        _html += `</a>`;
    });
    $("#content").html(_html);
}
function prePage() {
    if (currentIndex <= 1) return false;
    --currentIndex;
    search();

}
function nextPage() {
    if(currentIndex >= page.totalPage) return false;
    ++currentIndex;
    search();
}
function adjustPreAndNext(page) {
    $("#pre").removeClass("disabled");
    $("#next").removeClass("disabled");
    if (currentIndex >= page.totalPage) {
        $("#next").addClass("disabled");
    }
    if (currentIndex === 1) {
        $("#pre").addClass("disabled");
    }
}
function search() {
    let data = {
        "categoryId": categoryId,
        "typeId": typeId,
        "tagId": tagId,
        "currentIndex": currentIndex,
        "searchContent": content
    };
    $.post(baseUrl + "/jobs", data, (data) => {
        if (data.result) {
            page = data.data.page;
            adjustPreAndNext(page);
            loadJobs(data.data.jobs);
        }
    });
}

function showCategories(categories) {
    let _html = `<li role="presentation" class="active " onclick="searchCategory(this,'')"><a href="javascript:(0)">ALL</a></li>`;
    categories.map(category => {
        _html += `<li role="presentation" onclick="searchCategory(this,` + category.id + `)"><a href="javascript:(0)">` + category.name + `</a></li>`
    });
    $("#category ul").html(_html);
}

function showTypes(types) {
    let _html = `<li role="presentation" class="active " onclick="searchType(this,'')"><a href="javascript:(0)">ALL</a></li>`;
    types.map(type => {
        _html += `<li role="presentation" onclick="searchType(this,` + type.id + `)"><a href="javascript:(0)">` + type.name + `</a></li>`
    });
    $("#type ul").html(_html);
}
function showTags(tags) {
    let _html = `<span class="label label-success tag tag_select" onclick="searchTag(this,'')"><span class="badge">ALL</span></span>`;
    tags.map(tag => {
        _html += `<span class="label label-success tag" onclick="searchTag(this,` + tag.id + `)">` + tag.name + `<span class="badge">` + tag.number + `</span></span>`
    });
    $("#tag").html(_html);
}
function load() {
    $.post(baseUrl + "/jobs/load", (data) => {
        if (data.result) {
            showCategories(data.data.categories);
            showTypes(data.data.types);
            showTags(data.data.tags);
        }
    });
}
$(function () {
    load();
    search();
});