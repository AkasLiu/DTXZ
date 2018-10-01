



//文档加载后初始化
$(document).ready(function(){
	// 清除所有选中状态
	$('.menu dd.active').removeClass('active');
	$('.menu dd').eq(0).addClass('active');

    $('.menu dd').click(function(){

        $('.menu dd').removeClass('active');

        $(this).addClass('active');

    });
//    $("#iframeItem").bind('DOMNodeInserted', function(e) {
//        alert('element now contains: ' + $(e.target).html());
//    });

    
    //获取url解析
    (function(){
    	var url=window.location.href;
    	var params=GetRequest(url);
    	
    	if(params['target']!=null){
    		switch(params['target']){
    				case 'baseinfo':
    					$('.baseinfo-link').click();
    					break;
    				case 'myessay':
    					$('.myessay-link').click();
    					break;
    				case 'classmanage':
    					$('classmanage-link').click();
    					break;
    				case 'myexam':
    					$('.myexam-link').click();
    					break;
    		}
    	}
    	
    })();
    
    
    
    

});

function loadFrame(obj) {
    var url = obj.contentWindow.location.href;
    // //提取参数

    var params=GetRequest(url);
    if(params['reflash']=='true'){

        window.location.href=url;
    }else{

    }
}
