<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>资格认证</title>

	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<!--链入基本按钮库-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<!--链入前台公共样式-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">


	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_certificate.css">



</head>
<body>

	<div class="main">
		<h3 class="title">身份认证</h3>
		<form action="">
			<ul>

				<li><label for="">真实姓名</label><input type="text"></li>
				<li><label for="">职业</label><input type="text"></li>
				<li><label for="">认证信息</label><input type="text"></li>
				<li><label for="">图片证明</label>
					<div class="fileupload">
						<input type="file">
					</div>
				</li>



			</ul>
			

			<button class="btn btn-primary" type="submit">认证</button>

		</form>






	</div>






</body>
</html>