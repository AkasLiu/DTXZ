<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>资格认证</title>

	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">
	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_certificate.css">

	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/user_certificate.js"></script>

</head>
<body>
	<div class="main">
		<h3 class="title">身份认证</h3>
		<form action="${pageContext.request.contextPath}/user/certificate.do" >
			<ul>
				<li><label class="fix-label" for="txt1">真实姓名</label><input id="txt1" type="text" class="txt-in" name="title" value="${authen.title }"></li>
				<li><label class="fix-label" for="txt2">职业</label><input id="txt2" type="text" class="txt-in" value="老师" readonly="readonly" name="job"></li>
				<li><label class="fix-label" for="txt3">认证信息</label><input id="txt3"  type="text" class="txt-in" name="info" value="${authen.info }"></li>
				<li><label class="fix-label" for="uploadInput">图片证明</label>
					<input id="imgIn" type="hidden" name="img" >
					<label for="uploadInput" class="file-lable"></label>
				</li>

			</ul>
		<c:if test="${empty authen}">		
			<button class="btn btn-primary" type="submit">认证</button>
		</form>
		<form id="uploadform" method="post" enctype="multipart/form-data">
			<input id="uploadInput"  type="file" name="certfile">
		</c:if>
		</form>


		<div class="rcImg">
			<c:choose>
				<c:when test="${empty authen.img }">
				
					<img id="showImg" src="${pageContext.request.contextPath}/public/images/girl-bg.jpg" alt="...">
				</c:when>
				<c:otherwise>
				
					<img id="showImg" src="${authen.img}" alt="...">
				</c:otherwise>
			
			 </c:choose>
			
		
		</div>
	</div>

</body>
</html>