let descriptionMarkdown;
let howToApplyMarkdown;
let allTags = [];

function initTags(data) {
    allTags = data;
    let tags = [];
    for (let tag of data) {
        tags.push(tag.name);
    }
    $('#tag').inputTags({
        max: 4,
        autocomplete: {
            values: tags,
            only: true
        }
    });
}
function createMarkdown(id) {
    return new SimpleMDE({
        autosave: {
            enabled: false,
            uniqueId: "editor01",
            delay: 1000,
        },
        blockStyles: {
            bold: "__",
            italic: "_"
        },
        element: document.getElementById(id),
        forceSync: false,
        hideIcons: ["guide", "heading"],
        indentWithTabs: false,
        initialValue: "",
        insertTexts: {
            horizontalRule: ["", "\n\n-----\n\n"],
            image: ["![](http://", ")"],
            link: ["[", "](http://)"],
            table: ["", "\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text      | Text     |\n\n"],
        },
        lineWrapping: false,
        parsingConfig: {
            allowAtxHeaderWithoutSpace: true,
            strikethrough: false,
            underscoresBreakWords: true,
        },
        placeholder: "请输入内容",

        promptURLs: true,
        renderingConfig: {
            singleLineBreaks: false,
            codeSyntaxHighlighting: true,
        },
        shortcuts: {
            drawTable: "Cmd-Alt-T"
        },
        showIcons: ["code", "table"],
        spellChecker: false,
        status: false,
        status: ["autosave", "lines", "words", "cursor"], // Optional usage
        status: ["autosave", "lines", "words", "cursor", {
            className: "keystrokes",
            defaultValue: function (el) {
                this.keystrokes = 0;
                el.innerHTML = "0 Keystrokes";
            },
            onUpdate: function (el) {
                el.innerHTML = ++this.keystrokes + " Keystrokes";
            }
        }], // Another optional usage, with a custom status bar item that counts keystrokes
        styleSelectedText: false,
        tabSize: 4,
        //toolbar: flase,
        //toolbarTips: false,
    });
}
function initMarkdown() {
    descriptionMarkdown = createMarkdown("description");
    howToApplyMarkdown = createMarkdown("how_to_apply");
}
function tagIds() {
    let result = [];
    let tags = $("#tag").val().split(",");
    for (let tag of allTags) {
        if (tags.includes(tag.name)) {
            result.push(tag.id);
        }
    }
    return result.join(",");
}
function checkForm() {

}
function postJob() {

    let data = {
        "title": $("#title").val(),
        "company": $("#company").val(),
        "expiryTime": $("#expiry_date").val(),
        "categoryId": $("#category").val(),
        "typeId": $("#job_type").val(),
        "country": $("#country").val(),
        "city": $("#city").val(),
        "tags": tagIds(),
        "description": descriptionMarkdown.value(),
        "howToApply": howToApplyMarkdown.value()
    };
    $.post(baseUrl + "/jobs/postJob", data, (data) => {
        if (data.result) {
            // location.href = baseUrl + "/jobs/detail/" + data.data;
            return false;
        } else {

        }
    });
    return false;
}
function loadSelects(categories, id) {
    let _html = "";
    categories.map(category => {
        _html += `<option value="` + category.id + `">` + category.name + `</option>`;
    });
    $("#" + id + "").html(_html);
}
function loadCategoriesTypesTags() {
    $.post(baseUrl + "/jobs/load", (data) => {
        if (data.result) {
            initTags(data.data.tags);
            loadSelects(data.data.categories, "category");
            loadSelects(data.data.types, "job_type");
        }
    });

    return false;
}
function loadCountry() {
    let _html = "";
    country.map(c => {
        _html += `<option value="` + c + `">` + c + `</option>`;
    });
    $("#country").html(_html);
}
$(function () {
    initMarkdown();
    loadCategoriesTypesTags();
    loadCountry()
});


