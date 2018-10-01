


$(document).ready(function () {

    //初始化标题导航
    (function(){
        $('.nav-list li').click(function(){

            $('.nav-list li').removeClass('active');

            $(this).addClass('active');


        });
    })();



    //初始化分享标签
    // 这里需要把图片地址改为外链

    (function () {
        window._bd_share_config = {
            "common": {
                "bdSnsKey": {},
                "bdText": "",
                "bdMini": "2",
                "bdMiniList": false,
                "bdPic": "http://7xordz.com1.z0.glb.clouddn.com/logo.min.png",
                "bdStyle": "1",
                "bdSize": "24"
            },
            "share": {},
            // "selectShare": {
            //     "bdContainerClass": null,
            //     "bdSelectMiniList": ["qzone", "tsina", "weixin"]
            // }
        };
        with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];

    })();

});


// 改变导航栏
function changeNav(index){
    if(index<0){
        return false;
    }

    $('.nav-list li').removeClass('active');
    var lis=$('.nav-list li');
    $($('.nav-list li')[index%lis.length]).addClass('active');

}



