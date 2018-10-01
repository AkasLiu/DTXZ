<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>考试记录</title>
	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_history.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/common.js"></script>

</head>
<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>


	<div class="exam-his-box common-box">
		<div class="exam-his-header">
			<i class="history-icon"></i>
			考试记录
		</div>
		<div class="exam-his-content">
			<div class="exam-his-summary">
				<span>共考试：</span>
				<span class="num-active" id="exam-num">3场</span>
				<span>最高排名：</span>
				<span class="num-active" id="exam-best-ranking">2</span>
				<span>近一周答卷量：</span>
				<span class="num-active" id="exam-week-num">1场</span>
			</div>

			<table class="table-box">
				<tbody>
					<tr>
						<th>考试名称</th>
						<th>考试状态</th>
						<th>完成时间</th>
						<th>分数</th>
						<th>排行</th>
					</tr>
					<tr class="active">
						<td title="毛概">				
							<a href="exam_doing.html">
								毛概
							</a>
						</td>
						<td title="点击进入考场">
							<a href="exam_doing.html">
								正在进行
							</a>
						</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>3</td>
						
					</tr>

					<tr>
						<td title="新12中关于十八大的期末考试">新12中关于十八大的期末考试</td>
						<td>已完成</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>3</td>
					</tr>

					<tr>
						<td title="计算机技能测试">计算机技能测试</td>
						<td>已完成</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>9</td>
					</tr>

					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
				</tbody>
			</table>
			<a href="" class="more-his-btn">
				加载更多
			</a>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>