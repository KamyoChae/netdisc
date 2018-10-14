document.querySelector('body').ontouchstart = function (e) {

    var btn = $(window.parent.document).find(".body_container").find('.main_left')

    var start = e.touches[0].clientX  // 获取出发点
    var end = null  // 获取抬手点
    limit = 0  // 用于节流      

    this.addEventListener('touchmove', function (e) {

        /** 
         * 手指触摸屏幕 触发该事件
         * 事件触发时 计算出发点与抬手点的x轴位移  位移 = 出发点 - 抬手点 
         * 如果位移 > 0 说明 
         * 反之 说明
         * 
         * 同时注意节流容错 当位移达到30时 才能触发交互时间 
         */

        end = e.touches[0].clientX
        this.addEventListener('touchend', function (e) {

            var limit = start - end // 算位移

            if (limit > 30) {
                // btn.trigger('click') // 调用向左函数 
                btn.removeClass('oshoeleft')
                btn.addClass('noshoeleft')
            } else {
                // btn.trigger('click') // 调用向右函数
                btn.removeClass('noshoeleft')
                btn.addClass('oshoeleft')
            }
        })
    })

}