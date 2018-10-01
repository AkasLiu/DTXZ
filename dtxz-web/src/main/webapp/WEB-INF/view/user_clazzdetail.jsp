<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>班级详情</title>
	<link rel="shortcut icon " type="images/x-icon" href="./favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/button.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/tag.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/user_personal_common.css">

	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.form.js"></script>
	<script>
		window.clazzId="${clazzId}";
	</script>
	
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/user_clazzdetail.js"></script>
	

</head>
<body>


	<div class="main">
		<h3 class="title">班级详情</h3>

		<table class="table-box">
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>昵称</th>
				<th>email</th>
				<th>最近登录</th>
			</tr>
			
			<c:forEach items="${page.data }" var="u" varStatus="vs">
				<tr>
					<td>${vs.count }</td>
					<td>${u.name }</td>
					<td>${u.nickname }</td>
					<td>${u.email }</td>
					<td>
					<fmt:formatDate value="${u.recentLoginTime }" type="both"/>
					
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<!-- 分页 -->
				<ul class = "pagination-ul">

					<c:if test="${page.pageNum+0 >1}">
						<li class = "first-page"><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pagenum=1&clazzId=${clazzId}">首页</a></li>
						<li class = "prev-page"><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pagenum=${pageNum-1 }&clazzId=${clazzId}">上一页</a></li>
					</c:if>
					
					<c:forEach begin="${page.start }" end="${page.end }" var="v">
					
						<c:choose>
							<c:when test="${v==page.pageNum }">
								<li class = "page-number active"><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pageNum=${v}&clazzId=${clazzId}"><p>${v}<p></a></li>
							</c:when>
							<c:otherwise>
								<li class = "page-number "><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pageNum=${v}&clazzId=${clazzId}"><p>${v}<p></a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${page.pageNum+0<page.totalPage}">
						<li class = "next-page"><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pageNum=${page.pageNum+1}&clazzId=${clazzId}">下一页</a></li>
						<li class = "last-page"><a href = "${pageContext.request.contextPath }/user/clazzdetail.do?pageNum=${page.totalPage}&clazzId=${clazzId}">末页</a></li>
					</c:if>
				</ul>
		
	</div>


	<div class="main">
		<h3 class="title">添加学生</h3>

		<form id="addUserForm" method="post" action="#" >
			<label class="email-in">学生邮箱:</label>
			<input class="txt-in" id="email-in" type="text" name="email">
			<button id="addUserBtn" type="button" class="btn btn-success">查询</button>
		</form>

	</div>







</body>
</html>