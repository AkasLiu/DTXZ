
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
			$('input[name="email"]').blur(function() {
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
			$('input[name="nickname"]').blur(function() {
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
			$('input[name="pwd"]').blur(function() {
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
				} else if ( !funAgain( $(this), $('.register-box input[name="pwd"]'), $(this).next(), showHTML2 ) ) {
					$(this).addClass('error-border');
				} else {
					$(this).addClass('right-border');
				}
			});


		//取消登录时密码正则校验
		$('#login-pwd').unbind('blur');
			
			
			
	});




function checkLogin(){
	
	var mb=checkIsEmpty($('#login-mail'),$('#login-mail').next(),'邮箱不能为空');
	
	var ml=checkIsEmpty($('#login-pwd'),$('login-pwd').next(),'密码不能为空');
	
	var s=!mb&&!ml;
	
	return !mb&&!ml;
}

function checkRegister(){
	
	var mail=checkIsEmpty($('#register-mail'),$('#register-mail').next(),'邮箱不能为空')
	
	var name=checkIsEmpty($('#register-name'),$('#register-name').next(),'昵称不能为空');
	var pwd=checkIsEmpty($('#register-pwd'),$('#register-pwd').next(),'密码不能为空');
	
	
	var same=checkPwdIsSame($('#register-again-pwd'),$('.register-box input[name="pwd"]'),$('#register-again-pwd').next(),'两次密码不相同');
	var legal=checkPwdIsLegal($('#register-pwd'),$('#register-pwd').next(),'密码不符合要求');
	
	if(!legal){
		alert('密码不符合要求');
	}
	
	
	return !mail&&!name&&!pwd&&same&&legal;
}

