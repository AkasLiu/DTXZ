<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>当前模考</title>
	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_curexam.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/exam_curexam.js"></script>	

</head>
<body>

			<!---------------------------    头部  ------------------------------------>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>


	<!-- 广告 -->
	<div class="adv-box">
		<img src="images/advs/hackathon_banner.png" alt="刷题马拉松大赛" class="exam-adv">
	</div>

	<div class="big-container">
		<!-- 当前页面路径 -->
		<div class="crumbs-path">
			<a href="index.html">首页</a>
			<span>></span>
			<span>当前考试</span>
		</div>

		<!-- 左边栏 -->
		<div class="left left-content">
			<div class="normal-box">
				<h3 class="red-pot-title"><a>今日箴言</a></h3>
				<div class="normal-content">
					<span id="proverb">
					 时间的步伐有三种：未来姗姗来迟，现在像箭一般飞逝，过去永远静立不动。
					 </span>
					 <span class="proverb-author right">——席勒</span>
				</div> 
			</div>

			<div class="normal-box">
				<h3 class="red-pot-title"><a>当前考试</a></h3>
				<table>
					<tbody>
						<tr>
							<th width="300">题目</th>
							<th width="100">通过人数</th>
							<th width="120">剩余时间</th>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>1小时12分</td>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>2天1小时12分</td>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>2天1小时12分</td>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>2天1小时12分</td>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>2天1小时12分</td>
						</tr>

						<tr>
							<td><a href="exam_doing.html">初二中考</a></td>
							<td>23</td>
							<td>2天1小时12分</td>
						</tr>
					</tbody>
				</table>

				<!-- 分页 -->
				<ul class = "pagination-ul">
					<li class = "first-page"><a href = "javascript:void(0)">首页</a></li>
					<li class = "prev-page"><a href = "javascript:void(0)">上一页</a></li>
					<li class = "page-number active"><a href = "javascript:void(0)"><p>1<p></a></li>
					<li class = "page-number"><a href = "javascript:void(0)"><p>2<p></a></li>
					<li class = "page-number"><a href = "javascript:void(0)"><p>3<p></a></li>
					<li class = "page-number"><a href = "javascript:void(0)"><p>4<p></a></li>
					<li class = "page-number"><a href = "javascript:void(0)"><p>5<p></a></li>
					<li class = "next-page"><a href = "javascript:void(0)">下一页</a></li>
					<li class = "last-page"><a href = "javascript:void(0)">末页</a></li>
				</ul>
			</div>
			<!-- 你感兴趣的 -->
			<div class="interest-course normal-box">
				<h3 class="red-pot-title">你感兴趣的</h3>
				<ul class="interest-course-imglist">
					<li>
						<a href="http://www.nowcoder.com/activity/project-courses" target="_blank">
							<img src="images/advs/activity_project_course_214x145.jpg" alt="">
							<span>牛课项目课</span>
							<div class="course-details" title="叶教授亲授项目课，求值必备,您的不二选择">
								叶教授亲授项目课，求值必备,您的不二选择
							</div>
						</a>
					</li>
					<li>
						<a href="http://www.nowcoder.com/courses/10" target="_blank">
							<img src="images/advs/course_python_217x145.png" alt="">
							<span>Python入门到开发实战</span>
							<div class="course-details" title="Python是一门简单易学，功能强大的编程语言。">
								Python是一门简单易学，功能强大的编程语言。
							</div>
						</a>
					</li>
					<li>
						<a href="https://www.nowcoder.com/courses/1" target="_blank">
							<img src="images/advs/vod_course_chengyun_217x145.png" alt="">
							<span>BAT面试算法精品课</span>
							<div class="course-details" title="程序员找工作必备——必须掌握的算法面试技巧精讲课，适合所有技术求职人员，尤其是算法、数据结构较为薄弱的同学。">
								程序员找工作必备——必须掌握的算法面试技巧精讲课，适合所有技术求职人员，尤其是算法、数据结构较为薄弱的同学。
							</div>
						</a>
					</li>
				</ul>
			</div>
			
		</div>
		

		<!-- 右边栏 -->
		<div class="right right-content">
			<div class="normal-box weather-box">
				<img src="images/weather/qintian-wanshang.png" alt="...">
				<span>周日</span>
				<p>天气凉爽，适合睡后刷题</p>
			</div>

			<div class="person-info normal-box">
				<div class="photo-box">
					<div class="radius-box">
						<img src="images/null-headimg.png" alt="">
					</div>
				</div>
				<div class="user-name">
					beanSeedling
				</div>

				<div class="person-details challenge-num-icon">
					<span>已挑战</span>
					<span class="right">38题</span>
				</div>

				<div class="person-details right-num-icon">
					<span>已答对</span>
					<span class="right">28题</span>
				</div>

				<div class="person-details exam-num-icon">
					<span>已考试</span>
					<span class="right">3次</span>
				</div>
				<!-- 正确率 -->
				<div class="pass-box">
					<p>正确率</p>
					<p>50.00%</p>
				</div>
			</div>

			<div class="normal-box popular-adv">
				<h3 class="red-pot-title">
					热门推荐
					<i class="carousel-last-icon right" title="下一页"></i>
					<i class="carousel-next-icon right" title="上一页"></i>
				</h3>

				<!-- 广告框 -->
				<div class="popular-adv-box">
					<a href="">
						<img src="images/advs/826546_1483534607215_238x923.png" alt="">
					</a>
					<a href="">
						<img src="images/advs/826546_1483534632567_238x922.png" alt="">
					</a>
					<a href="">
						<img src="images/advs/3311212_1510900554629_7D2A2B50F7E3C99128B238F40F682AEC.jpg" alt="">
					</a>
				</div>
			</div>
		</div>
	</div>



	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>