<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>问答</title>
			
		<!--图标-->
		<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	
		<!--链入基本初始化-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
		<!--链入前台公共样式-->
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
		
		<!--问题罗列中的样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/essay_question.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/essay_myessay.css" />
		
	</head>
	<body>
		<!---------------------------    头部  ------------------------------------>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


		<!--切换标题栏-->
		<script>
            changeNav(1);
		</script>

		<!--    主体-->
		<div class="wrap">
			<div class="container">
				<div class="question_left">
					<!--    问题罗列-->
					<section class="question_list">
						<div class="answer null">
							<p>0</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a href="essay_answer.html"> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer null">
							<p>0</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a href="essay_answer.html"> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer null">
							<p>0</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a href="#"> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer exist">
							<p>1</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a href="#"> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer null">
							<p>0</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer null">
							<p>0</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer exist">
							<p>3</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer exist">
							<p>3</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list">
						<div class="answer exist">
							<p>3</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					<section class="question_list last">
						<div class="answer exist">
							<p>3</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">mzky</a>
								<span>2小时前</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a> 无序标签不生效问题修复方法 </a>
							</div>
						</div>
					</section>
					
					<ul class = "pagination-ul">
						<li class = "first-page"><a href = "javascript:void(0)">首页</a></li>
						<li class = "prev-page"><a href = "javascript:void(0)">上一页</a></li>
						<li class = "page-number show"><a href = "javascript:void(0)"><p>1<p></a></li>
						<li class = "page-number"><a href = "javascript:void(0)"><p>2<p></a></li>
						<li class = "next-page"><a href = "javascript:void(0)">下一页</a></li>
						<li class = "last-page"><a href = "javascript:void(0)">末页</a></li>
					</ul>
					
				</div>
				
				<!--右边-->
				<div class="question_right">
					<div class="fr">
						<!--天气-->
						<div class="weather-box">
							<img src="images/weather/qintian-wanshang.png" alt="...">
							<span>周三</span>
							<p>天气晴朗,适合刷题</p>
				
						</div>
				
						<div class="info-box">
							<a href="#" class="headimg">
								<img src="images/null-headimg.png" alt="...">
							</a>
							<a href="#" class="nikename">sirius
								<!--<i class="female-tip"></i>-->
								<i class="male-tip"></i>
							</a>
				
							<div class="profile-box">
								<span>答题:10</span>|
								<span>考试:23</span>|
								<span>排名:16000</span>
							</div>
				
							<ul class="mess-box">
								<li>
									<p>被采纳</p>
									<p>10</p>
								</li>
								<li>
									<p>获赞</p>
									<p>10</p>
								</li>
								<li>
									<p>正确率</p>
									<p>10%</p>
								</li>
								<li>
									<p>平均排名</p>
									<p>10</p>
								</li>
				
							</ul>
				
							<ul class="chengjibang">
								<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
								<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
								<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
								<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
							</ul>
						</div>
				
					</div>
				</div>
			</div>
		</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

		
		<!--左边-->
		<div class="alert">
			<a href="essay_quiz.html">立即提问</a>
		</div>
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/essay_myessay.js" ></script>
		
	</body>
</html>
