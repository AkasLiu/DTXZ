$(function(){
	$(".box ul li").click(function(){
		$(".box ul li").removeClass();
		$(this).addClass("active");
		var index = $(this).index();
		
		$(".divContain").removeClass("show");
		
		$(".divContain").each(function(){						
			if(parseInt($(this).index())-1 == parseInt(index))
			{
				$(this).addClass("show");
				$(this).children().children(".QRcode").css("display", "none");
			}
		});
	});
	
	$("button").click(function(){
		$(".QRcode").css("display", "none");
		$(".QRcode").css("display", "block");
	});
});