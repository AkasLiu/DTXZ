<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<form action="">
		<ul>

			<li><label for="">班级名称</label><input class="txt-in" type="text"></li>
			<li><label for="">班级描述</label><textarea  rows="6"></textarea></li>
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
		<tr>
			<td>1</td>
			<td>衡水二中高三二班</td>
			<td>良好</td>
			<td>2017-12-30</td>
			<td>51</td>
			<td>
				<a class="btn btn-info" href="#">详情</a>
				<a class="btn btn-danger" href="#">删除</a>
			</td>
		</tr>

		<tr>
			<td>1</td>
			<td>衡水二中高三二班</td>
			<td>良好</td>
			<td>2017-12-30</td>
			<td>51</td>
			<td>
				<a class="btn btn-info" href="#">详情</a>
				<a class="btn btn-danger" href="#">删除</a>
			</td>
		</tr>
		<tr>
			<td>1</td>
			<td>衡水二中高三二班</td>
			<td>良好</td>
			<td>2017-12-30</td>
			<td>51</td>
			<td>
				<a class="btn btn-info" href="#">详情</a>
				<a class="btn btn-danger" href="#">删除</a>
			</td>
		</tr>

	</table>

</div>

</body>
</html>