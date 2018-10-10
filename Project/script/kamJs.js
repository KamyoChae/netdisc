
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
    var num = url.split("page=")[1].split('')[0] // 从url中获取当前页数，以修改按钮样式
    console.log( $('ul.pagination li a'))
    $('ul.pagination li a').addClass('oActive')
    $('ul.pagination li a').eq(num).removeClass('oActive').addClass('noActive')
})







