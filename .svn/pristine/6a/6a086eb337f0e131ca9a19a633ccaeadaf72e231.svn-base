<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- 动态获取应用名      当前设置了/  替代应用名 -->  
<c:set var="path" value="${pageContex.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户认证</title>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/js/jquery.min.js"></script>  

</head>
	<body>
		<form class="form-inline definewidth m20" action="${pageContext.request.contextPath}/ms/user/selectCertificate.do" method="post">
			用户名：<input name="userName" class="abc input-default" value=""></input>&nbsp;&nbsp;
			<button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
		</form>
		<table class="table table-bordered table-hover definewidth m10">
		    <thead>
			    <tr>
			        <th>编号</th>
			        <th>用户名</th>
			        <th>真实姓名</th>
			        <th>职业</th>
			        <th>认证信息</th>
			        <th>资格证</th>
			        <th style="text-align:center;">是否通过</th>
			    </tr>
		    </thead>
			<c:forEach items="${userCertificates}" var="userCertificate" varStatus="status"> 
				<tr>
					<td>${status.index + 1}</td>
					<td>${userCertificate.getNickname()}</td>
					<td>${userCertificate.getName()}</td>
					<td>${userCertificate.getJob()}</td>
					<td>${userCertificate.getInfo()}</td>
					<td>${userCertificate.getImg()}</td>
					<td style="text-align:center;">
						<a href="${pageContext.request.contextPath}/ms/user/passCertificate.do?authenId=${userCertificate.getAuthenId()}">是</a>
						/
						<a href="${pageContext.request.contextPath}/ms/user/noPassCertificate.do?authenId=${userCertificate.getAuthenId()}">否</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>