<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- 动态获取应用名      当前设置了/  替代应用名 -->  
<c:set var="path" value="${pageContex.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>题目删除</title>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/bootstrap-responsive.min.css" />
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/ms/css/style.css" />
	    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/js/jquery.min.js"></script>
	
	</head>
	<body>
		<form class="form-inline definewidth m20" action="" method="post">
			标题：<input name="title" class="abc input-default" value=""></input>&nbsp;&nbsp;
			<button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; 
		    <button type="button" class="btn btn-primary" onclick="location='后台-帖子管理-添加帖子.html'">添加</button>&nbsp;&nbsp; 
		    <font color="red"></font>
		</form>
		<table class="table table-bordered table-hover definewidth m10">
		    <thead>
			    <tr>
							<th>编号</th>
			        <th>标题</th>
			        <th>内容</th>
			        <th>发布时间</th>
			        <th>发布人</th>
			        <th>是否置顶</th>
			        <th>回复数</th>
			        <th>点赞数</th>
			        <th>浏览数</th>
			        <th style="text-align:center;">操作</th>
			    </tr>
		    </thead>
			<tr>
				<td>1</td>
				<td>娃哈哈</td>
				<td>娃哈哈123</td>
				<td>2017-05-17 13:34:57</td>
				<td>admin</td>
				<td>是</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td style="text-align:center;">
					<a href="后台-帖子管理-修改帖子.html">修改</a>&nbsp;|                
					<a href="javascript:" onclick="">删除</a>&nbsp;|
					<a href="#">查看评论</a>             
				</td>
			</tr>
		</table>
	</body>
</html>