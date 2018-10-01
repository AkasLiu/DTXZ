<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人中心</title>


	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<!--链入基本初始化-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<!--本页面样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal.css">

	<!--链入jquery-->
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/user_personal.js"></script>

</head>
<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


<div class="main container">
		<dl class="menu fl">
			<dt>
				<h3>个人中心</h3>
			</dt>
			<dd class="active">
				<a class="baseinfo-link" href="user_baseinfo.html" target="content">基本资料</a>
			</dd>
			<dd>
				<a class="myessay-link" href="essay_myessay.html" target="content">我的问题</a>
			</dd>
			<dd>
				<a class="classmanage-link" href="user_classmanager.html" target="content">班级管理</a>
			</dd>
			<dd>
				<a class="myexam-link" href="exam_myexam.html" target="content">我的考试</a>
			</dd>
		</dl>

		<!--右边-->
		<iframe name="content" src="user_baseinfo.html" frameborder="0"></iframe>

	</div>

	<!------------------------尾部------------------------->
	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>


</body>
</html>