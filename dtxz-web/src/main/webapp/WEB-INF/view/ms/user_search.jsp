<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- 动态获取应用名      当前设置了/  替代应用名 -->  
<c:set var="path" value="${pageContex.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户查询</title>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap-responsive.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/style.css" />
	    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/js/jquery.min.js"></script>  
	
	</head>
	<body>
		<form class="form-inline definewidth m20" action="${pageContext.request.contextPath}/ms/user/searchUser.do" method="post">
			用户名：<input name="userName" class="abc input-default" value=""></input>&nbsp;&nbsp;
			<button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
		</form>
		<table class="table table-bordered table-hover definewidth m10">
		    <thead>
			    <tr>
			        <th>编号</th>
			        <th>用户名</th>
			        <th>邮箱</th>
			        <th>头像</th>
			        <th>角色</th>
			        <th>最后登录时间</th>
			        <th>发言状态</th>
			        <th class = "operate_th">操作</th>
			        <th class = "delete_th">编辑</th>
			    </tr>
		    </thead>
			<c:forEach items="${users}" var="user" varStatus="status"> 
				<tr>
					<td>${status.index + 1}</td>
					<td>${user.getNickname()}</td>
					<td>${user.getEmail()}</td>
					<td>${user.getImg()}</td>
					<td>${user.getRank()}</td>
					<td>${user.getRecentLoginTime()}</td>
					<td><font color="green">${user.getStatus()}</font></td>
					<td class = "operate_td">
							<a href="${pageContext.request.contextPath}/ms/user/updateUser.do?userId=${user.getUserId()}">屏蔽</a>
					</td>
					<td class = "delete_td">
							<a href="${pageContext.request.contextPath}/ms/user/deleteUser.do?userId=${user.getUserId()}" style = "color:red;">删除</a>
					</td>
				</tr>
			</c:forEach>  
		</table>
	</body>
</html>