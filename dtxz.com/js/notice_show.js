$(function(){
	var li_count = $(".news_contain ul").children("li").length;
	if(li_count >= 4){
		$(".news_contain ul").append("<li class = 'pagination'><button class = 'lastpage'>上一页</button><p>1/2</p><button class = 'nextpage'>下一页</button></li>");
	}


	//删除
	$(".delete").click(function(){
		if(confirm("你确认要删除吗？")){
			var li = $(this).parent().parent().parent().parent().parent();
			li.remove();
			if($(".pagination").length == 0){
				li_count = $(".news_contain ul ").children("li").length;
			}else{
				li_count = $(".news_contain ul").children("li").length - 1;
				if(li_count >= 4){
					//往前移:从数据库中取数据
					
				}else{
					$(".pagination").remove();
				}
			}

			//然后对数据库进行操作
		}
	});
	
	$(".chat-contain").css("display", "none");
	
	$(".tooltip_inner").click(function(){
		$(this).parent().parent().siblings().children(".chat-contain").slideUp();
		$(this).parent().next(".chat-contain").slideToggle();
	});
});