<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<title>大题小做——考试页面</title>
	<script>
		$(document).ready(function() {
			// 设置结束时间
			var finalTime = new Date('2018-1-1 0:0:0');
			// 	倒计时
			timer = setInterval(function() {
				var nowDate = new Date();
				var timec = finalTime.getTime() - nowDate.getTime();
				// 转化为秒
				timec /= 1000;
				// 判断时间是否到了
				if (timec <= 0) {
					clearInterval(timer);
					$('#lasttime').text('0:0:0');
					alert('考试结束');
					return ;
				}

				// 时间剩余五分钟时候 标黄
				if (timec < 300) {
					$('#lasttime').css('color', 'rgba(200, 100, 0, 0.8)');
				}

				var sec = parseInt(timec % 60);
				var minute = parseInt((timec % 3600)/60);
				// 获取总共多少小时
				var allhour = timec / (3600);
				var hour = parseInt(allhour % 24);
				var day = parseInt(allhour / 24);
				var timetext = (day != 0 ? day+' 天 ' : '') +
					(hour != 0 ? hour + ':' : '') +
					(minute != 0 ? minute + ':' : '') +
					sec;
				$('#lasttime').text(timetext);
			}, 1000);

			// 展开收缩答题卡
			$('.card-unfold').click(function() {
				$(this).next().slideToggle();
				if($(this).text() == '展开答题卡') {
					$(this).html('收起答题卡<i class="hidden-icon"></i>');
				} else {
					$(this).html('展开答题卡');
				}
			});

			// 设置点击选项卡的时候选择单选框
			$('.exam-question-option').click(function(){
				$(this).find('input').prop('checked', true);
			});


		});


	</script>
</head>
<body>
			<!---------------------------    头部  ------------------------------------>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>
	<!-- 考试盒 -->
	<div class="exam-box">
		<div class="exam-header">
			<div class="process">
				<div class="process-bar"></div>
			</div>
			<span>2/10</span>
			<span class="process-time right">
				<!-- <span class="small-info">剩余时间</span> -->
				<span id="lasttime">0:0:0</span>
			</span>
		</div>
		<div class="subject-title">
			<i></i>[<span>单选题</span>]
		</div>

		<div class="exam-question-box">
			<div class="exam-question-content">
				 在 HTML 页面上包含如下所示的层对象，则 javascript 语句 document.getElementById(“info”).innerHTML 的值是（），测试一下丫丫丫丫丫丫丫
			</div>
			<div class="exam-question-answer">
				<div class="exam-question-option">

					<input type="radio" name="test" id="test1">
					<label class="radio-icon" for="test1"></label>
					<label for="test1">这是选项一</label>
				</div>
				<div class="exam-question-option">
					<input type="radio" name="test" id="test2">
					<label class="radio-icon" for="test2"></label>
					<label for="test2">这是选项二</label>
				</div>
				<div class="exam-question-option">
					<input type="radio" name="test" id="test3">
					<label class="radio-icon" for="test3"></label>
					<label for="test3">这是选项三</label>
				</div>
				<div class="exam-question-option">
					<input type="radio" name="test" id="test4">
					<label class="radio-icon" for="test4"></label>
					<label for="test4">这是选项四</label>
				</div>
			</div>
			
			<div class="form-box">
				<button class="btn btn-blue right">
					下一题
				</button>
				<a href="exam_historyexam.html">
					<button class="btn red-btn right">
					提前交卷
					</button>
				</a>
			</div>

			<div class="clear answer-sheet-box">
				<span class = "card-unfold">展开答题卡</span>
				<ul class="answer-sheet-num">
					<li><a class="active" href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>