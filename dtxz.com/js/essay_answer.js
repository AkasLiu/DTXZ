$(function(){
    $(".reply_box").slideUp();
	$(".a_reply").click(function(){
		var reply=$(this).parent().next();
		$(reply).slideToggle();
		
	})			
});