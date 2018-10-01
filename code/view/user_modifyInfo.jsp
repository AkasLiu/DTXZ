<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">

</head>
<body>


	<div class="main">
		<h3 class="title">资料修改</h3>

		<form action="">
			<ul>
				<li><label for="">昵称</label><input type="text"></li>
				<li><label for="">性别</label>
					男<input type="radio" name="sex" value="男">&nbsp;&nbsp;&nbsp;&nbsp;
					女<input type="radio" name="sex" value="女">
				</li>
				<li><label for="">年龄</label><input type="text"></li>
			</ul>
			<button class="btn btn-info" type="submit">提交</button>
		</form>


	</div>

	<div class="main">

		<h3 class="title">密码修改</h3>
		<ul>
			<li><label for="oldpwd">原始密码：</label><input type="password"></li>
			<li><label for="newpwd">更新密码：</label><input type="password"></li>
			<li><label for="checkpwd">确认密码：</label><input type="password"></li>
		</ul>
		<button class="btn btn-info" type="submit">提交</button>
	</div>



</body>
</html>