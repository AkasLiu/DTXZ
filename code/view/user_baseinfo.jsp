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

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_baseinfo.css">

	<!--链入jquery-->
	<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>


</head>
<body>

<div class="fr content">
	<div class="baseinfo">

		<div class="head-box">
			<div class="headimg">
				<img src="images/null-headimg.png" alt="...">
			</div>
		</div>
		<!--基本信息-->
		<div class="mess-box">

			<div class="name-box thdD-box">
				<div class="flip">
					<ul class="front">
						<li><label>昵称:</label>卖女孩的小火柴</li>
						<li><label>贵庚:</label>21</li>
						<li><label>性别:</label>女</li>
						<li><label>email:</label>656484115@qq.com</li>
					</ul>
					<a href="user_modifyInfo.html" class="back"><i class="modify-tip"></i>修改</a>
				</div>


			</div>
			<div class="auth-box thdD-box">
				<div class="flip">
					<ul class="front">
						<li><label>真实姓名:</label>风清扬</li>
						<li><label>职业:</label>学生</li>
						<li><label>等级:</label>01</li>
					</ul>
					<a href="user_certificate.html" class="back"><i class="auth-tip"></i>认证</a>

				</div>

			</div>

			<div class="bottom-box">
				<ul>
					<li><span>07-12</span><a href="#">衡水二中第三次模考第三次考试51名</a></li>
					<li><span>07-12</span><a href="#">衡水二中第三次模考第三次考试51名</a></li>
					<li><span>07-12</span><a href="#">衡水二中第三次模考第三次考试51名</a></li>
					<li><span>07-12</span><a href="#">衡水二中第三次模考第三次考试51名</a></li>
					<li><span>07-12</span><a href="#">衡水二中第三次模考第三次考试51名</a></li>

				</ul>




			</div>

		</div>

	</div>

</div>
</body>
</html>