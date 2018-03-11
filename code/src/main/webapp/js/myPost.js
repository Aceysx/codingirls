let currentIndex = 1;
let totalPage;
let state = "";

$(function () {
    loadJobs();
});

function showJobs(jobs) {
    let _html = "";
    jobs.map(job => {
        _html += `<a href="` + baseUrl + `/jobs/detail/` + job.id + `" class="list-group-item job">
                    <h3 class="list-group-item-heading content_title" style="padding-top: 0">${job.title}
                        <div class="checkbox checkbox-slider-md checkbox-slider--b-flat checkbox-slider-success isPublic">
                            <label>
                                <input onclick="change(this,${job.id}) " type="checkbox" ${job.isPublic === 1 ? "checked" : ""}><span>${job.isPublic === 1 ? 'Public' : 'Hidden'}</span>
                            </label>
                        </div>
                        <span class="time">${job.createTime}</span>
                    </h3>
                    <span class="list-group-item-text category">${job.category}</span>
                    <span class="list-group-item-text type">${job.type}</span>
                    <br>`;
        job.tags.map(tag => {
            _html += `<span class="label label-success" style="margin: 0 5px"> ${tag.name}</span>`;
        });

        _html += `<span class="list-group-item-text place">${job.city}  ${job.country}</span></a>`;
    });
    $("#content").html(_html);
}
function loadJobs() {
    let data = {
        "currentIndex": currentIndex,
        "isPublic": state
    };
    $.post(baseUrl + "/jobs/ownJobs", data, (data) => {
        if (data.result) {
            currentIndex = data.data.page.currentIndex;
            totalPage = data.data.page.totalPage;
            showJobs(data.data.jobs);
            adjust();
        }
    });
}
function adjust() {
    $("#pre").removeClass("disabled");
    $("#next").removeClass("disabled");
    if (currentIndex >= totalPage) {
        $("#next").addClass("disabled");
    }
    if (currentIndex === 1) {
        $("#pre").addClass("disabled");
    }
}
function searchState(t, stat) {
    state = stat;
    $(t).siblings("li").removeClass("active");
    $(t).addClass("active");
    currentIndex = 1;
    loadJobs();
}
function prePage() {
    if (currentIndex <= 1) return false;
    --currentIndex;
    loadJobs();
}
function nextPage() {
    if (currentIndex >= totalPage) return false;
    ++currentIndex;
    loadJobs();
}
function change(t, id) {
    let isPublic = $(t).prop("checked") ? 1 : 0;
    $(t).siblings("span").text(isPublic === 1 ? "Public" : "Hidden");
    $.post(baseUrl + "/jobs/changePublicState", {"isPublic": isPublic, "id": id}, (data) => {
        if (data.result) {
            if (state !== "") {
                $(t).parents(".job").remove();
            }
        }
    });
}