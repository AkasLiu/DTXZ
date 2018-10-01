<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js" ></script>
		<script src="${pageContext.request.contextPath}/public/js/common.js"></script>
		
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
				<c:forEach items="${page.data}" var="problemVos">
					<section class="question_list">
						<c:if test="${problemVos.answerCount == 0}">
							<div class="answer null">
						</c:if>
						<c:if test="${problemVos.answerCount != 0}">
							<div class="answer exist">
						</c:if>
							<p>${problemVos.answerCount}</p>
							<span>回答</span>
						</div>
						<div class="summary">
							<div class="author">
								<a href="#">${problemVos.user.nickname}</a>
								<span>
								<fmt:formatDate value="${problemVos.problem.pubTime}" type="both"/>
								</span>
							</div>
							<div class="title">
								<span><i></i>5</span>
								<a href="${pageContext.request.contextPath}/essay/answer.do?probId=${problemVos.problem.probId}"> ${problemVos.problem.title} </a>
							</div>
						</div>
					</section>
				</c:forEach>
				
				
				<!-- 分页 -->
				<div class="pagination">
					<ul class = "pagination-ul">
						<c:if test="${page.pageNum+0 >1}">
							<li class = "first-page"><a href = "${pageContext.request.contextPath }/essay/question.do?pagenum=1">首页</a></li>
							<li class = "prev-page"><a href = "${pageContext.request.contextPath }/essay/question.do?pagenum=${pageNum-1 }">上一页</a></li>
						</c:if>
						
						<c:forEach begin="${page.start }" end="${page.end }" var="v">
							<c:choose>
								<c:when test="${v==page.pageNum }">
									<li class = "page-number active"><a href = "${pageContext.request.contextPath }/essay/question.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:when>
								<c:otherwise>
									<li class = "page-number "><a href = "${pageContext.request.contextPath }/essay/question.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
	
						<c:if test="${page.pageNum+0<page.totalPage}">
							<li class = "next-page"><a href = "${pageContext.request.contextPath }/essay/question.do?pageNum=${page.pageNum-1}">下一页</a></li>
							<li class = "last-page"><a href = "${pageContext.request.contextPath }/essay/question.do?pageNum=${page.totalPage}">末页</a></li>
						</c:if>
					</ul>
				</div>
				
				
				
				
			</div>

				
				<!--右边-->
				<div class="question_right">
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
			</div>
		</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

		
		<!--左边-->
		<div class="alert">
			<a href="${pageContext.request.contextPath}/essay/quiz.do">立即提问</a>
		</div>
		

	</body>
</html>
