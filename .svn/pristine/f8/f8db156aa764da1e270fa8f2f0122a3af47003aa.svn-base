$(document).ready(function() {
	// 这里设置下拉轮播图显示的个数
	var showNum = 3;
	var endIndex = parseInt(showNum-1);
	// 建立轮播定时器函数
	function createTimer () {
		advcarTimer = setInterval(function() {
			nextCarousel();
		}, 4000);
	}
	
	// 获取轮播列表
	function lastCarousel() {
		// alert(startIndex);
		// 顶部隐藏并插入到最后
		var carlist = $('.popular-adv > .popular-adv-box a');
		// carlist.eq(0).css('transform', 'translateY(100px)');
		// 必须放在回调函数里不然会执行后面
		carlist.eq(0).slideUp(500, function() {
			var carlist = $('.popular-adv > .popular-adv-box a');
			carlist.last().after(carlist.eq(0));
			// 必须重新获取
			var carlist = $('.popular-adv > .popular-adv-box a');
			carlist.eq(endIndex).slideDown(500);
		});
	}

	function nextCarousel() {
		// alert(startIndex);
		// 顶部隐藏并插入到最后
		var carlist = $('.popular-adv > .popular-adv-box a');
		// 必须放在回调函数里不然会执行后面
		carlist.eq(endIndex).slideUp(500, function() {
			var carlist = $('.popular-adv > .popular-adv-box a');
			carlist.first().before(carlist.eq(endIndex));
			var carlist = $('.popular-adv > .popular-adv-box a');
			// var carnum = carlist.length;
			carlist.eq(0).slideDown(500);
		});
	}

	// 进入页面就执行的操作（非监听）
	// 分页第一页时禁用首页和上一页
	var firstPageNum = $('.pagination-ul li.page-number').eq(0);
	// 第一个数字是1并且选中
	if (firstPageNum.hasClass('active')
		&& firstPageNum.find('a').text() == '1') {
		// 上一页按钮
		var lastPage = firstPageNum.prev();
		// 首页按钮
		var firstPage = lastPage.prev();
		lastPage.addClass('disabled');
		firstPage.addClass('disabled');
	}

	// 监听轮播广告
	$('.popular-adv i.carousel-last-icon').click(function() {
		// 先清除再建立定时
		// 清除的目的是为了避免定时和点击同时操作
		clearInterval(advcarTimer);
		createTimer();
		lastCarousel();
	});

	$('.popular-adv i.carousel-next-icon').click(function() {
		// 先清除再建立定时
		clearInterval(advcarTimer);
		createTimer();
		nextCarousel();
	});
	
	// 启动定时播放
	createTimer();
});