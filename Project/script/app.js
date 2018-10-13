
var listSwip = {

    dom: null,
    touchstarFn: function touchstarFn(e) {
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
                    // console.log("limit>30 向左滑动" + limit)
                    $('.showleft').trigger('click') // 调用向左函数

                } else {
                    // console.log("limit<30 向右滑动" + limit);
                    $('.showleft').trigger('click') // 调用向右函数
                }
            })
        })

    },
    getDom: function (oDom) {
        var that = this
        this.dom = document.querySelector(oDom)
        this.dom.addEventListener('touchstart', that.touchstarFn)
    },
}
 
try {

    listSwip.getDom(".main_left") 
} catch (error) {

}

 


// 从iframe访问父元素事件
// 

