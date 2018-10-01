var script = document.createElement('script');
script.type = "text/javascript";
script.src = "jquery.js";

function initPage() {
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
}