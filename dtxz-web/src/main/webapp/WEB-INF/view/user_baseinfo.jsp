<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Title</title>
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">

	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_baseinfo.css"> 


	<!--链入jquery-->
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.form.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/user_baseinfo.js"></script>
	
</head>
<body>

<div class="fr content">
	<div class="baseinfo">

		<div class="head-box">
			<div class="headimg">
			<form id="uploadform" action="/uploadimg.do" enctype="multipart/form-data" method="post" >
			
				<input id="uploadInput" type="file" name="imgfile" >
			</form>
				
			<!-- 头像显示 -->
			<c:choose>
				<c:when test="${empty sessionScope.loginUser.img }">
					<img id="headimg" src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
				</c:when>
				<c:otherwise>
					<img id="headimg" src="${sessionScope.loginUser.img }" alt="...">
				</c:otherwise>
			</c:choose>
						
			</div>
		</div>
		<!--基本信息-->
		<div class="mess-box">

			<div class="name-box thdD-box">
				<div class="flip">
					<ul class="front">
						<li><label>昵称:</label>${sessionScope.loginUser.nickname }</li>
						<li><label>芳龄:</label>${sessionScope.loginUser.age }</li>
						<li><label>性别:</label>${sessionScope.loginUser.sex }</li>
						<li><label>email:</label>${sessionScope.loginUser.email }</li>
					</ul>
					<a href="${pageContext.request.contextPath}/user/modifyInfoUI.do" class="back"><i class="modify-tip"></i>修改</a>
				</div>


			</div>
			<div class="auth-box thdD-box">
				<div class="flip">
					<ul class="front">
						<li><label>真实姓名:</label>${loginUser.name }</li>
						<li><label>职业:</label>${sessionScope.loginUser.job }</li>
						<li><label>等级:</label>${sessionScope.loginUser.rank }</li>
					</ul>
					<a href="${pageContext.request.contextPath}/user/certificateUI.do" class="back"><i class="auth-tip"></i>认证</a>
				</div>

			</div>


			<!-- 班级信息 -->
			<div class="bottom-box">
				<h3 class="title">我的班级</h3>
				<ul class="clazz-ul">
					<c:forEach items="${page.data}" var="clazz" >
						<li><span>${clazz.name }</span><a href="#">${clazz.description }</a></li>
					</c:forEach>
					
				</ul>
					<!-- 分页 -->
					
				<c:if test="${page.totalPage+0>1 }">	
					
				<div class="pagination">
					<ul class = "pagination-ul">
						<c:if test="${page.pageNum+0 >1}">
							<li class = "first-page"><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pagenum=1">首页</a></li>
							<li class = "prev-page"><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pagenum=${pageNum-1 }">上一页</a></li>
						</c:if>
						
						<c:forEach begin="${page.start }" end="${page.end }" var="v">
							<c:choose>
								<c:when test="${v==page.pageNum }">
									<li class = "page-number active"><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:when>
								<c:otherwise>
									<li class = "page-number "><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
	
						<c:if test="${page.pageNum+0<page.totalPage}">
							<li class = "next-page"><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pageNum=${page.pageNum-1}">下一页</a></li>
							<li class = "last-page"><a href = "${pageContext.request.contextPath }/user/baseinfo.do?pageNum=${page.totalPage}">末页</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			</c:if>


		</div>

	</div>

</div>
</body>
</html>