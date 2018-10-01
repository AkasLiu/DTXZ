



//文档加载后初始化
$(document).ready(function(){
	// 清除所有选中状态
	$('.menu dd.active').removeClass('active');
	$('.menu dd').eq(0).addClass('active');

    $('.menu dd').click(function(){

        $('.menu dd').removeClass('active');

        $(this).addClass('active');

    });
    $("#iframeItem").bind('DOMNodeInserted', function(e) {
        alert('element now contains: ' + $(e.target).html());
    });


});

function loadFrame(obj) {
    var url = obj.contentWindow.location.href;
    //
    // //提取参数

    var params=GetRequest(url);
    if(params['reflash']=='true'){

        window.location.href=url;
    }else{

    }
}
