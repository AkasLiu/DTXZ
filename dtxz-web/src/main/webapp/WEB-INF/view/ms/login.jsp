<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <title>dtxzMs登录</title>
 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/assets/css/admin-login.css" />
</head>
<body>

	<div class="form-signin" style="text-align:center;">
        <h3 class="form-signin-heading">大题小做管理系统</h3>
        <form action="${pageContext.request.contextPath}/ms/login.do" method="post">
	        <input type="text" name="userName" class="input-block-level" placeholder="请输入账号">
	        <input type="password" name="userPass" class="input-block-level" placeholder="请输入密码">        
	        <button class="btn btn-large btn-primary" id="submitBtn" type="submit" style="width:250px;">登录</button><br/>
			<span style="color:red;"></span>
		</form>
    </div>
</body>

</html>