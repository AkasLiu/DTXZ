<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>大题小作-中学生的刷题神器</title>

	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<!--链入基本初始化-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">

	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<!--链入本页面样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/index.css">
	<!--链入jquery-->
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<!--jquery-ui-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/jquery-ui.min.css">

	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery-ui.min.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/Marquee.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/common.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/utils.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/index.js"></script>


</head>
<body>

<!-- 头部 -->
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>




<script>
    changeNav(0);
</script>


<!--------------------------主内容---------------------------------->
<div class="main container">
	<div class="fl">

		<!--快捷导航-->
		<div class="quick-nav">
			<ul>
				<li class="quickexam">
					<a  href="${pageContext.request.contextPath}/exam/curexam.do">快速模考</a>
				</li>
				<li class="shuati">
					<a href="${pageContext.request.contextPath}/essay/question.do">刷题模式</a>
				</li>
				<li class="myessay">
					<a href="${pageContext.request.contextPath}/user/personal.do?target=myessay">我的提问</a>
				</li>
				<li class="error-title">
					<a href="${pageContext.request.contextPath}/exam/errorunion.do">错题集</a>
				</li>
				<li class="history">
					<a href="${pageContext.request.contextPath}/exam/historyexam.do">历史考试</a>
				</li>

			</ul>

		</div>

		<!--问题求解-->
		<div class="essay-box">
			<h3>问题求助</h3>
			<!--<div class="detail">-->
			<div class="detail">
				<form action="${pageContext.request.contextPath }/essay/handleQuiz.do?title=问题求助" method="post">
					<textarea rows="5" name="content"></textarea>
					<div class="imgupload">
						<input type="file">
					</div>
					<button class="fr btn btn-info" type="submit">提交</button>
				</form>
			</div>

		</div>

		<!-----------------------------热门问题---------------------------------->
		<div class="hot-box">
			<!-- width: 290px -->
			<h3>热门问题</h3>
			<ul>
				<c:forEach items="${problemVos}" var="problemVos">
					<li>
						<div class="li-content">
							<img src="${problemVos.user.img}"/>
							<div class="essay-contain">
								<div class="essay-title">
									<a href="${pageContext.request.contextPath }/essay/answer.do?probId=${problemVos.problem.probId}">
										${problemVos.problem.title}
									</a>
								</div>
								<div class="essay-foot">
									<div class="eassay-foot-left">
										<label>发表时间</label>
										<span>
											<fmt:formatDate value="${problemVos.problem.pubTime}" type="both"/>
										</span>
									</div>
									<div class="eassay-foot-right">
										<label>回复</label>
										<span>${problemVos.answerCount}</span>
									</div>
								</div>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>

		</div>

		<!--当前模考-->
		<div class="curr-exam">
			<h3>当前模考</h3>

			<div class="exam-list">
				<ul class="">
					<li><a href="#">
						<h4>衡水中学第一次模考</h4>
						<div class="headimg">
							<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
						</div>
						<p>隔壁老王</p>
						<p>倒计时：<span class="clock" date="2018-01-20 20:00:00"></span></p>
					</a>
					</li>
					<li><a href="#">
						<h4>衡水中学第二次模考</h4>
						<div class="headimg">
							<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
						</div>
						<p>隔壁老王</p>
						<p>倒计时：<span class="clock" date="2018-01-20 20:00:00"></span></p>
					</a>
					</li>
					<li><a href="#">
						<h4>衡水中学第三次模考</h4>
						<div class="headimg">
							<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
						</div>
						<p>隔壁老王</p>
						<p>倒计时：<span class="clock" date="2018-01-20 20:00:00"></span></p>
					</a>
					</li>
					<li><a href="#">
						<h4>衡水中学第四次模考</h4>
						<div class="headimg">
							<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
						</div>
						<p>隔壁老王</p>
						<p>倒计时：<span class="clock" date="2018-01-20 20:00:00"></span></p>
					</a>
					</li>
					<li>
						<a href="#">
							<h4>衡水中学第五次模考</h4>
							<div class="headimg">
								<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
							</div>
							<p>隔壁老王</p>
							<p>倒计时：<span class="clock" date="2018-01-20 20:00:00"></span></p>
						</a>
					</li>
				</ul>
			</div>

			<div class="listgo flipx " id="goleft"></div>
			<div class="listgo" id="goright"></div>

			<script>
                //TODO 轮播错位的bug
                $('.exam-list').Marquee({
                    distance: 169,
                    time: 3,
                    direction: 'left',
                    btnGo: {left: '#goleft', right: '#goright'},
                });

			</script>

		</div>

	</div>

	<!--主内容右边-->
	<div class="fr">
		<!--天气-->
		<div class="weather-box">
			<img src="${pageContext.request.contextPath}/public/images/weather/qintian-wanshang.png" alt="...">
			<span>周四</span>
			<p>天气晴朗,适合刷题</p>

		</div>
		<!--  加载用户面板 -->
		<c:if test="${!empty loginUser}">
			<div id="infoBox" class="info-box">
			</div>
			<script>
				getInfoBox();
			</script>
		</c:if>
		
		
	</div>
</div>

<!-- 尾部 -->
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>