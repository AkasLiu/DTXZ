<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>发现</title>
		<!--图标-->
		<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	
		<!--链入基本初始化-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
		
		<!--链入前台公共样式-->	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
		
		<!--链入发现样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/found.css">	
	</head>
	<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


<!-- 		<div class="topic_banner">
			<div class="container">
			</div>
		</div>
		 -->
		
		<!--主体-->
		<div class="container">
			<div class="main_body">
				<div class="module_box">
					<div class="module_head">
						连续登录
					</div>
					<div class="module_body">
					<!--本周排行榜-->
						<table>
							<tbody>
							<tr>
								<td width="60">排行</td>
								<td width="150">用户</td>
								<td width="80">天</td>
							</tr>
							<tr>
								<td>
									<span>1</span>
								</td>
								<td>
									<a class="head-pic" href="#"><img src="${pageContext.request.contextPath}/public/images/female-tip.png" /></a>
									<div class="list-name">
										<a class="level-color-9">ARCUS</a>
									</div>
								</td>
								<td>
								453
								</td>
							</tr>
							<tr>
								<td>
									<span>1</span>
								</td>
								<td>
									<a class="head-pic" href="#"><img src="${pageContext.request.contextPath}/public/images/female-tip.png" /></a>
									<div class="list-name">
										<a class="level-color-9">ARCUS</a>
									</div>
								</td>
								<td>
								453
								</td>
							</tr>
							<tr>
								<td>
									<span>1</span>
								</td>
								<td>
									<a class="head-pic" href="#"><img src="${pageContext.request.contextPath}/public/images/female-tip.png" /></a>
									<div class="list-name">
										<a class="level-color-9">ARCUS</a>
									</div>
								</td>
								<td>
								453
								</td>
							</tr>
							<tr>
								<td>
									<span>1</span>
								</td>
								<td>
									<a class="head-pic" href="#"><img src="${pageContext.request.contextPath}/public/images/female-tip.png" /></a>
									<div class="list-name">
										<a class="level-color-9">ARCUS</a>
									</div>
								</td>
								<td>
								453
								</td>
							</tr>
							<tr>
								<td>
									<span>1</span>
								</td>
								<td>
									<a class="head-pic" href="#"><img src="${pageContext.request.contextPath}/public/images/female-tip.png" /></a>
									<div class="list-name">
										<a class="level-color-9">ARCUS</a>
									</div>
								</td>
								<td>
								453
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

		
	</body>
</html>
