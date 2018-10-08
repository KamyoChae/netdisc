
$(function () {

    //左侧折叠主菜单
    $(".child_nav").show(); //初显子菜单
    $(".main_nav").click(function () {
        $(this).addClass("current").next(".child_nav").slideToggle(300, function () {

            if ($(this).is(":hidden")) {

                $(this).prev().find("i:last-child").prop("class", "icon-angle-right icon_right");
            } else {
                $(this).prev().find("i:last-child").prop("class", "icon-angle-down icon_right");
            }
        }).siblings(".child_nav").slideUp("slow", function () {
            if ($(this).is(":hidden")) {

                $(this).prev().find("i:last-child").prop("class", "icon-angle-right icon_right");
            } else {
                $(this).prev().find("i:last-child").prop("class", "icon-angle-down icon_right");
            }
        });
        $(this).siblings().removeClass("current");
    });


    //栏目隐藏
    $(".column_down").click(function () {
        var id = $(this).attr("data-id");
        $(".child_toggle" + id).toggle();
    });

    //用户管理添加多角色
    //$(".add_user_li").on("click", ".add_user", function () {
    //    $(this).parent().after("<div class='minus_user_li'><div class='col-sm-2 padding_top_10'></div><div class='col-sm-9 padding_top_10'><select class='form-control'><option>系统管理员</option><option>资源经理</option></select></div> <div class='col-sm-1 padding_lr_0'><i class='glyphicon glyphicon-minus minus_user'></i></div></div>")
    //});
    //$(".add_user_li").on("click", ".minus_user", function () {
    //    $(this).parent().parent().remove();
    //});


    //栏目多级隐藏
    $(".role_toggle").click(function (ev) {
        $(this).parent().parent().next().slideToggle(function () {
            if ($(this).is(":hidden")) {
                $(this).prev().find("i").prop("class", "icon-caret-down role_toggle")
            } else {
                $(this).prev().find("i").prop("class", "icon-caret-up role_toggle")
            }
        });

        //var oEvent = ev || event;
        //oEvent.cancelBubble = true;
        //return false;
    });


    $(".checks_line").each(function (index) {
        var oldcolor;
        if (index % 2 == 0) {
            $(this).css("background-color", "#f6f6f6");
        } else {
            $(this).css("background-color", "#fff");
        }
    }).hover(
        function () {
            //获取原有颜色
            oldcolor = $(this).css("background-color");
            newcolor = $(this).css("background-color", "#e1e9f4")
        }, function () {
            $(this).css("background-color", oldcolor);
        });


    //列表
    $(".app_nav ul li").mouseover(function () {
        $(this).find(".app_edit").css("display", "block")
    })
    $(".app_nav ul li").mouseout(function () {
        $(this).find(".app_edit").css("display", "none")
    });


    //分类菜单
    $(".node_content").click(function () {
        $(this).next("ul").slideToggle("fast", function () {
            if ($(this).is(":hidden")) {
                $(this).parent().attr("class", "tree_node");
            }
            else {
                $(this).parent().attr("class", "tree_node open");
            }
        })
    })

    //分类隔行变色
    $(".node_content").each(function (index) {
        //默认展开
        $(this).parent().attr("class", "tree_node open");
        $(this).next("ul").slideToggle();

        var oldcolor;
        if (index % 2 == 0) {
            $(this).css("background-color", "#f6f6f6");
        } else {
            $(this).css("background-color", "#ffffff");
        }
    }).hover(
        function () {
            //获取原有颜色
            oldcolor = $(this).css("background-color");
            newcolor = $(this).css("background-color", "#e1e9f4")
        }, function () {
            $(this).css("background-color", oldcolor);
        });




    //右边内容最小高度
    var main_right_minheight = document.documentElement.clientHeight || document.body.clientHeight;
    $(".main_right_220").css("min-height", main_right_minheight - 100);

    var role_content_right = document.documentElement.clientHeight || document.body.clientHeight;
    $(".role_content_right").css("min-height", main_right_minheight - 130);


    //角色管理应用选中状态
    $(".role_app ul").children("li").click(function () {
        $(this).addClass("role_app_li");
        $(this).siblings().removeClass("role_app_li")
    });
});