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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">
	
	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">

	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/user_modifyInfo.js"></script>

</head>
<body>


	<div class="main">
		<h3 class="title">资料修改</h3>

		<form action="${pageContext.request.contextPath }/user/modifyinfo.do" method="post">
			<ul>
				<input type="hidden" name="userId" value="${sessionScope.loginUser.userId }">
				<li><label for="">昵称</label>&nbsp;&nbsp;<input class="txt-in" type="text" name="nickname" value="${sessionScope.loginUser.nickname }"></li>
				<li class="clearfix">&nbsp;&nbsp;
					
					<input id="radio-nan"       type="radio" name="sex" value="男"
					
						<c:if test="${sessionScope.loginUser.sex eq '男' }">
							checked="checked"
						</c:if>
					>
					<label id=lb-nan"           for="radio-nan"  class="radio-icon"></label>
					<label class="radio-txt"    for="radio-nan">男</label>
					<input id="radio-nv" type="radio" name="sex" value="女"
						<c:if test="${sessionScope.loginUser.sex eq '女' }">
							checked="checked"
						</c:if>					
					>
					<label id="lb-nv" for="radio-nv" class="radio-icon"></label>
					<label class="radio-txt"   for="radio-nv">女</label>
				</li>
				<li><label for="">年龄&nbsp;&nbsp;</label>
				<input class="txt-in" type="text" name="age" value="${sessionScope.loginUser.age }"></li>
			</ul>
			<button class="btn btn-info" type="submit">提交</button>
		</form>

	</div>

	<div class="main">
		<form id="pwdfm" action="${pageContext.request.contextPath }/user/modifypwd.do" method="post" onsubmit="return check();">
		<h3 class="title">密码修改</h3>
		<ul>
			<li><label for="oldpwd">原始密码：</label><input id="oldpwd" class="txt-in" type="password" name="oldpwd"></li>
			<li><label for="newpwd">更新密码：</label><input id="newpwd" class="txt-in" type="password" name="newpwd"></li>
			<li><label for="checkpwd">确认密码：</label><input id="newpwdcheck" class="txt-in" type="password" name="renewpwd"></li>
		</ul>
		<button id="submitPwdBtn" class="btn btn-info" type="submit">提交</button>
		</form>

	</div>



</body>
</html>