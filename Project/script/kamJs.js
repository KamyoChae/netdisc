
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
    $('.dropdown-menu').slideDown()

})
$('.dropdown').bind('mouseleave', function () {
    $('.dropdown-menu').slideUp()

})

$('.setSearch').bind('mouseover',function(){
    $(this).removeClass('rotate')
})
$('.setSearch').bind('mouseout',function(){
    $(this).addClass('rotate')
})

$(document).ready(function(){
    var url = window.location.href 
    
    var num = null
    try {
        num = url.split("page=")[1].split('')[0] // 从url中获取当前页数，以修改按钮样式
    } catch (error) {
        
    }

    $('ul.pagination li a').addClass('oActive')
    if(!num){ 
        $('ul.pagination li a').eq(1).removeClass('oActive').addClass('noActive')
    }else{
        $('ul.pagination li a').eq(num).removeClass('oActive').addClass('noActive')
    }

    // ProductShow 检测页面 滚动显示内容

    console.log(url)
    try {
        
    var ProductShowUrl = url.split('.')[0].split('/').reverse()
    } catch (error) {
        
    }
    console.log(ProductShowUrl[0])
    if(ProductShowUrl[0] == 'ProductShow'){ 
        window.location.hash = "#tit"
    }

}) 
