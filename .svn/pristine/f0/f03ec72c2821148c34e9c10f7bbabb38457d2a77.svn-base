/*
 * 获取url上的对应get参数
 * in:  @name
 * out: @key
 */
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
    
    ///ces
}


/*
 * 从url中提取参数
 * url
 * name
 */
function GetRequest(url) {
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.split('?')[1];
        strs = str.split("&");
        for(var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]]=decodeURI(strs[i].split("=")[1]);
        }
    }

    return theRequest;
}



//将毫秒差转为日期差
/*
 *   in:    @endDate:    2017-10-22 10:10:00
 *   out:   @json{
 *              ms:'',
 *              second:'',
 *              minute:'',
 *              hour:'',
 *              day:''
 *              }
 */
function msToDay(endDate){

    var endTime=new Date(endDate);
    var nowTime=new Date();

    var slaveTime=endTime-nowTime;

    var ms=slaveTime%1000;

    var ts=Math.floor(slaveTime/1000);//总秒数

    var sec=ts%60;
    var tm=Math.floor(ts/60);//总分钟
    var min=tm%60;
    var td=Math.floor(tm/60);//总小时

    var hour=td%24;
    var day=Math.floor(td/24);//总天

    return {
        ms:(ms<10)?'0'+ms:''+ms,
        second:(sec<10)?'0'+sec:''+sec,
        minute:(min<10)?'0'+min:''+min,
        hour:(hour<10)?'0'+hour:''+hour,
        day:(day<10)?'+'+day:''+day
    }

}







/*
 * 显示模态框
 */
function showModBox() {
    //获取错误代码
    var msg = GetQueryString('msg');
    console.log(msg);
    if (msg != null && msg.length > 1) {
        //嵌入错误信息
        $('.mod-box .mess').html('<p>' + msg + '</p>');
    }
    //向下滑出模态框
    $(".mod-box").slideDown(500);
    $(".cover-box").fadeIn(500);

}




/*
 * 模态框点击关闭
 */

$(document).ready(function(){
    $('.mod-box .close-tip').click(function () {
        console.log('click');
        $(".mod-box").slideUp(500);
        $('.cover-box').fadeOut(500);
    });

})


