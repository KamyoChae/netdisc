
$('#btnSave').bind("mouseenter", function () {
    $('.regmain').addClass('oSave')
})
$('#btnSave').bind("mouseleave", function () {
    $('.regmain').removeClass('oSave')
})


$('#btnBack').bind("mouseenter", function () {
    $('.regmain').addClass('oReset')
})
$('#btnBack').bind("mouseleave", function () {
    $('.regmain').removeClass('oReset')
})

$('.dropdown').bind('mouseenter', function () {
    $('.dropdown-menu').stop(true, true).slideDown()

})
$('.dropdown').bind('mouseleave', function () {
    $('.dropdown-menu').stop(true, true).slideUp()

})

$('.setSearch').bind('mouseover', function () {
    $(this).removeClass('rotate')
})
$('.setSearch').bind('mouseout', function () {
    $(this).addClass('rotate')
})

$(document).ready(function () {
    var url = window.location.href

    var num = null
    try {
        num = url.split("page=")[1].split('')[0] // 从url中获取当前页数，以修改按钮样式
    } catch (error) {

    }

    $('ul.pagination li a').addClass('oActive')
    if (!num) {
        $('ul.pagination li a').eq(1).removeClass('oActive').addClass('noActive')
    } else {
        $('ul.pagination li a').eq(num).removeClass('oActive').addClass('noActive')
    }

    // ProductShow 检测页面 滚动显示内容
    try {
        var ProductShowUrl = url.split('.')[0].split('/').reverse()
    } catch (error) {
    }
    if (ProductShowUrl[0] == 'ProductShow' || 'NewsList') {
        window.location.hash = "#tit"
    }


})

$('.child_nav ul li').on('click', function (e) {
    console.log(this)
    var oLi = this
    if (!$(this).hasClass('listActive')) {
        $('.child_nav ul li').removeClass('listActive')
        $(this).addClass('listActive') 
        $('.showleft').trigger('click')
    }else{
        if(oLi == this){
            $('.showleft').trigger('click')
        }else{
 
            $('.showleft').trigger('click')
            $('.showleft').trigger('click')
        }
    }

});


(function initProductShow() {
    try {
        var textea = document.getElementById('PingJiaContent')
        textea.setAttribute("maxlength", "140")
    } catch (error) {

    }
}())
function showlistFn(){

    $('.main_left').removeClass('noshoeleft')
    $('.main_left').addClass('oshoeleft')
}
function hidelistFn(){

    $('.main_left').removeClass('oshoeleft')
    $('.main_left').addClass('noshoeleft')
}
var showFlag = true
$('.showleft').bind('click', function () {
    /** 个人中心列表动画 */ 
    if (showFlag) {
        showFlag = false 

        // 收起列表 
        hidelistFn()
    } else {
        showFlag = true 
 
        // 展开列表
        showlistFn()
    } 
})

