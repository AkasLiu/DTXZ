$(function(){
	var totalpage = 2;
	var mar_left = (740 - (215 + totalpage*32 + totalpage*5)) / 2;
	
	$(".first-page").css("margin-left", mar_left);
	
	if(totalpage == 1 && $("ul.essay-ul li").length < 10){
		$(".pagination-ul").css("display", "none");
	}else if(totalpage <= 8){
		//根据总页数新增页码
		
	}else{
		//根据总页数新增页码
		//隐藏中间页码标签
	}
	
	$(".first-page").click(function(){
		$(".show").removeClass("show");
		$(this).next().next().addClass("show");				
	});
	$(".last-page").click(function(){
		$(".show").removeClass("show");
		$(this).prev().prev().addClass("show");				
	});
	$(".prev-page").click(function(){
		var show = $(".show");
		if(parseInt(show.children("a").children("p").html()) > 1){
			$(".show").removeClass("show");
			show.prev().addClass("show");
		}
	});
	$(".next-page").click(function(){
		var show = $(".show");
		if(parseInt(show.children("a").children("p").html()) < totalpage){
			$(".show").removeClass("show");
			show.next().addClass("show");	
		}
	});
	$(".page-number").click(function(){
		$(".show").removeClass("show");
		$(this).addClass("show");
	});
});
