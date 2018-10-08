
(function ($) {
    $co = $.fn;
    $co.extend({
        //$co: function () {

        //},
        HtmlToDomString: function (html) {
            html = html.replace(/&lt;/g, "<");
            html = html.replace(/&gt;/g, ">");
            return html;
        },
        HtmlToDom: function (html) {
            html = html.replace(/&lt;/g, "<");
            html = html.replace(/&gt;/g, ">");
            return $(html);
        },
        DomToHtml: function (dom) {
            var html = dom[0].outerHTML;
            html = html.replace(/</g, "&lt;");
            html = html.replace(/>/g, "&gt;");
            return html;
        },
        ConvertHtmlltgt: function (str) {
            var html = str;
            html = html.replace(/</g, "&lt;");
            html = html.replace(/>/g, "&gt;");
            return html;
        },
        ConvertltgtHtml: function (str) {
            var html = str;
            html = html.replace(/&lt;/g, "<");
            html = html.replace(/&gt;/g, ">");
            return html;
        },
        getIframeDocument: function (element) {
            return element.contentDocument || element.contentWindow.document;
        },
        //跟据ID得到子类所有控件（from中的交互控件）以json形式返回
        getJsonById: function (Id) {
            var this$ = $(Id);
            return this$.serializeArray();
        },
        //AJAX post
        SendAction: function (url, obj, callback) {
            //用于阻止伪造请求
            var _token = $("input[name=__RequestVerificationToken]").val();
            obj.__RequestVerificationToken = _token;

            if (typeof layer != "undefined")
                layer.load(1, { shade: [0.3, '#111'] }); //Loading

            $.post(url, obj, callback)
            .error(function (xhr, errorText, errorType) { //异常时执行
                alert(xhr.responseText);
            })
            .complete(function () { //完成后执行
                if (typeof layer != "undefined")
                    layer.closeAll('loading'); //End Loading
            });
        }
    });
    //
})(jQuery);

//---------------------------------------------------
$(function () {
    //返回
    $(":reset").click(function () {
        history.back();
    });

    //复选框全选
    $("#btnALl").click(function () {
        if ($('#btnALl').is(':checked')) {
            $("#tblist tbody input").prop("checked", true);
        }
        if (!$('#btnALl').is(':checked')) {
            $("#tblist tbody input").prop("checked", false);
        }
    });

});

//选择验证
//function GetChecked() {
//    var ids = new Array();
//    var chklist = $("#tblist tbody input:checked");

//    if (chklist.length == 0) {
//        alert("请至少选择一项");
//    }
//    else {
//        $.each(chklist, function () {
//            ids.push($(this).val());
//        });
//    }

//    return ids;
//}