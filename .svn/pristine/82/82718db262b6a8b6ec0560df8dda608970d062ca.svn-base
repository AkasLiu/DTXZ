<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">


		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/essay_myessay.css" />
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/public/js/jquery.js" ></script>
		<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/common.js"></script>
		
	</head>
	<body>

		
		<div class = "box">
			<div class = "box-content">
				<h3 class="title">
					历史提问
				</h3>
				<ul class = "essay-ul">
					<c:forEach items="${page.data}" var="problemVos">
						<li>
							<div class="li-content">
								<img src="${problemVos.user.img}" />
								<div class = "essay-contain">
									<div class = "essay-title">
										<a href = "${pageContext.request.contextPath}/essay/answer.do?probId=${problemVos.problem.probId}" target="_parent">
											${problemVos.problem.title}
										</a>
									</div>
									<div class = "essay-foot">
										<div class = "eassay-foot-left">
											<label>发表时间</label>
											<span>
												<fmt:formatDate value="${problemVos.problem.pubTime}" type="both"/>
											</span>
											<label>最后回复</label>
											<span>一天前</span>
										</div>
										<div class = "eassay-foot-right">
											<label>回复</label>
											<span>${problemVos.answerCount}</span>
										</div>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>		
				</ul>

			<!-- 分页 -->
			<div class="pagination">
				<ul class = "pagination-ul">

					<c:if test="${page.pageNum+0 >1}">
						<li class = "first-page"><a href = "${pageContext.request.contextPath }/essay/myessay.do?pagenum=1">首页</a></li>
						<li class = "prev-page"><a href = "${pageContext.request.contextPath }/essay/myessay.do?pagenum=${pageNum-1 }">上一页</a></li>
					</c:if>
					
					<c:forEach begin="${page.start }" end="${page.end }" var="v">
						<c:choose>
							<c:when test="${v==page.pageNum }">
								<li class = "page-number active"><a href = "${pageContext.request.contextPath }/essay/myessay.do?pageNum=${v}"><p>${v}<p></a></li>
							</c:when>
							<c:otherwise>
								<li class = "page-number "><a href = "${pageContext.request.contextPath }/essay/myessay.do?pageNum=${v}"><p>${v}<p></a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${page.pageNum+0<page.totalPage}">
						<li class = "next-page"><a href = "${pageContext.request.contextPath }/essay/myessay.do?pageNum=${page.pageNum-1}">下一页</a></li>
						<li class = "last-page"><a href = "${pageContext.request.contextPath }?pageNum=${page.totalPage}">末页</a></li>
					</c:if>
				</ul>
			</div>
			</div>
		</div>
		
	</body>
</html>
