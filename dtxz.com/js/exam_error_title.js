$(document).ready(function() {
	// 监听滚动条
	$(window).scroll(function() {
		var sr = $(window).scrollTop();
		if (sr > 100) {
			$('#back-to-top').css('display', 'block');
		} else {
			$('#back-to-top').css('display', 'none');
		}
	});
	$('#back-to-top').click (function(){
		// 设置跳转到顶部的动画500毫秒
		$('html, body').animate({ scrollTop: 0 },200);
		return 0;
	});
	// function backToTop() {
	// 	// 设置跳转到顶部的动画500毫秒
	// 	alert('ce');
	// 	$('html, body').animate({ scrollTop: 0 },200);
	// 	return 0;
	// }
});