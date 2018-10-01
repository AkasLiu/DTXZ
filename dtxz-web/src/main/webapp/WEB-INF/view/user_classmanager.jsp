<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>班级管理</title>
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/button.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">


</head>
<body>

<div class="main">
	<h3 class="title">创建班级</h3>
	<form action="${pageContext.request.contextPath }/user/addClazz.do">
		<input type="hidden" name="teacherId" value="${sessionScope.loginUser.userId }"> 
		<ul>
			<li><label for="txt1">班级名称</label>&nbsp;&nbsp;<input id="txt1" class="txt-in" type="text" name="name"></li>
			<li><label for="txt2">班级描述</label>&nbsp;&nbsp;<textarea id="txt2" rows="6" name="description" ></textarea></li>
		</ul>
		<button type="submit" class="btn btn-info">创建</button>
	</form>
</div>

<div class="main">
	<h3 class="title">我的班级</h3>
	<table class="table-box">
		<tr>
			<th>序号</th>
			<th>班级名称</th>
			<th>班级状态</th>
			<th>开班时间</th>
			<th>班级人数</th>
			<th>操作</th>

		</tr>
		<c:forEach var="cz" varStatus="vs" items="${clazzes }">
			
		<tr>
			<td>${vs.count }</td>
			<td>${cz.name }</td>
			<td>${cz.description }</td>
			<td>2017-12-30</td>
			<td>51</td>
			<td>
				<a class="btn btn-info" href="${pageContext.request.contextPath }/user/clazzdetail.do?clazzId=${cz.clazzId}">详情</a>
<!-- 				<a class="btn btn-danger" href="#">删除</a> -->
			</td>
		</tr>
		</c:forEach>

	
	</table>

</div>

</body>
</html>