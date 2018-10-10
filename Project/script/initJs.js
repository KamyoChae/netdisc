
/* 预留 */

$(function () {
    //点赞 按钮
    $(".zan").on("click", function (e) {
        var _id = $(this).attr("id");
        var _likenum = parseInt($(this).find("span").text());
        var n = 1; /*Math.round(Math.random() * 10)*/
        var $i = $("<b>").text("+" + n);
        var x = e.pageX, y = e.pageY;

        $i.css({ top: y - 20, left: x, position: "absolute", color: "#E94F06" });
        $("body").append($i);
        $i.animate({ top: y - 60, opacity: 0, "font-size": "1.4em" }, 1000, function () {
            $i.remove();
        });
        e.stopPropagation();
        $(this).find("span").text(_likenum + n);
        zan_update(_id);
    });
});

//点赞时更新表字段
function zan_update(_id) {
    //更新数据库
    $.ajax({
        timeout: 20000, //超时时间
        type: "POST",
        dataType: "json",
        url: "ajax/UpdateZan.ashx",
        data: { id: _id, flag: Math.random() },
        async: true, //false为同步，true为异步
        success: function (result) {
            //alert(result);
            //if (result.error) { alert(result.text); }
        }
    });
}