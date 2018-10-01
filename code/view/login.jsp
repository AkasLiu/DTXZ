<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录界面</title>
	<!-- 图标 -->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/login.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/checkform.js"></script>

	<script>
		$(document).ready(function() {
			// 选中输入变色
			$('input').focus(function() {
				$(this).next().html('');
				// $(this).css('border-color', 'skyblue');
				$(this).removeClass('error-border');
				$(this).removeClass('right-border');
				$(this).addClass('input-border');
			});
			// $('input').blur(function() {
			// 	$(this).css('border-color', 'rgba(0, 0, 0, 0.1)');
			// });
			
			// 选项框： 登录和注册框
			$('.login-header').click(function() {
				$(this).addClass('sel-header');
				$('.register-header').removeClass('sel-header');
				$('.register-box').slideUp();
				$('.login-box').slideDown();
			});
			$('.register-header').click(function() {
				$(this).addClass('sel-header');
				$('.login-header').removeClass('sel-header');
				$('.login-box').slideUp();
				$('.register-box').slideDown();
			});

			// 验证邮箱输入框
			$('input[name="mail"]').blur(function() {
				var fun = checkIsEmpty;
				var mailfun = checkMailIsRight;
				var showHTML = '邮箱不能为空';
				var showHTML2 = '邮箱格式错误';
				if ( fun( $(this), $(this).next(), showHTML) ) {
					$(this).addClass('error-border');
				} else if (!mailfun($(this), $(this).next(), showHTML2)) {
					$(this).addClass('error-border');
				} else {
					// 清空提示信息并且框色为绿
					$(this).addClass('right-border');
				}
			});

			// 用户名校验
			$('input[name="name"]').blur(function() {
				var showHTML = '昵称不能为空';
				var showHTML2 = '昵称必须是5-16位由字母、数字、_或汉字组成';
				var fun = checkIsEmpty;
				var funNameLegal = checkNameIsLegal;
				if ( fun( $(this), $(this).next(), showHTML) ) {
					$(this).addClass('error-border');
				} else if ( !funNameLegal( $(this), $(this).next(), showHTML2 ) ) {
					$(this).addClass('error-border');
				} else {
					$(this).addClass('right-border');
				}
			});


			// 密码校验
			$('input[name="password"]').blur(function() {
				var fun = checkIsEmpty;
				var funLegal = checkPwdIsLegal;
				var showHTML = '密码不能为空';
				var showHTML2 = '密码必须是6-18位字母或数字';
				if ( fun( $(this), $(this).next(), showHTML ) ) {
					$(this).addClass('error-border');
				} else if(!funLegal( $(this), $(this).next(), showHTML2 )) {
					$(this).addClass('error-border');
				} else {
					$(this).addClass('right-border');
				}
			});

			// 重复密码校验
			$('input[name="againPassword"]').blur(function() {
				var funempty = checkIsEmpty;
				var funAgain = checkPwdIsSame;
				var showHTML = '重输入密码不能为空';
				var showHTML2 = '密码不一致';
				// 这里要表明校验的是注册框的密码框
				if (funempty( $(this), $(this).next(), showHTML )) {
					$(this).addClass('error-border');
				} else if ( !funAgain( $(this), $('.register-box input[name="password"]'), $(this).next(), showHTML2 ) ) {
					$(this).addClass('error-border');
				} else {
					$(this).addClass('right-border');
				}
			});

		});
	</script>
</head>
<body>

	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	
	<!-- 登录注册集成框 -->
	<div class="contain-box dute-box">
		<div class="box-header">
			<div class="login-header left  sel-header">
				<i class="left user-icon"></i>
				<span>登录</span>
			</div>
			<div class="register-header left">
				<i class="left register-icon"></i>
				<span>注册</span>
			</div>
		</div>
		<div class="box-content">
			<!-- 登录框 -->
			<div class="login-box">
				<!-- 登录表单 -->
				<form action="./index.html" method="post">
					<div class="form-line right">
						<label for="login-mail">邮箱</label>
						<input id="login-mail" type="text" name="mail" placeholder="请输入邮箱">
						<!-- 提示错误信息 -->
						<span class="mail-info info"></span>
					</div>
					<div class="form-line right">
						<label for="login-pwd">密码</label>
						<input id="login-pwd" type="password" name="password" placeholder="请输入密码">
						<span class="pwd-info info"></span>
					</div>
					<div class="form-line rem-box right">
						<input id="remember-pwd" type="checkbox" name="remPwd">
						<label class="icon-remember left" for="remember-pwd"></label>
						<label class="left" for="remember-pwd">记住密码</label>
						<a class="right" href="">忘记密码？</a>
					</div>
					<div class="form-line right sub-box">
						<input type="submit" value="登录" >
					</div>
				</form>
			</div>

			<!-- 注册框 -->
			<div class="register-box">
				<!-- 注册表单 -->
				<form action="">

					<div class="form-line right">
						<label for="register-name">用户名</label>
						<input id="register-name" type="text" name="name" placeholder="请输入昵称">
						<!-- 提示错误信息 -->
						<span class="name-info info"></span>
					</div>
					
					<div class="form-line right">
						<label for="register-mail">邮箱</label>
						<input id="register-mail" type="text" name="mail" placeholder="请输入邮箱">
						<!-- 提示错误信息 -->
						<span class="mail-info info"></span>
					</div>
					
					<div class="form-line right">
						<label for="register-pwd">密码</label>
						<input id="register-pwd" type="password" name="password" placeholder="请输入密码">
						<span class="pwd-info info"></span>
					</div>

					<div class="form-line right">
						<label for="register-again-pwd">重输密码</label>
						<input id="register-again-pwd" type="password" name="againPassword" placeholder="请重复输入密码">
						<span class="again-pwd-info info"></span>
					</div>

					<input type="submit" value="注册">
				</form>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>