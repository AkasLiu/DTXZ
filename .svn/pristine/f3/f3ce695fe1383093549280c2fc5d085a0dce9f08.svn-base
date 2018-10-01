<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!---------------------------    头部  ------------------------------------>
<div class="header">
	<div class="container">
		<h3 class="logo fl">
			<a href="${pageContext.request.contextPath}/index.do">
				<span>大题小作</span>
			</a>
		</h3>

		<ul class="nav-list">
			<li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
			<li><a href="${pageContext.request.contextPath}/essay/question.do">问答</a></li>
			<li><a href="${pageContext.request.contextPath}/exam/curexam.do">模考</a></li>
			<li><a href="${pageContext.request.contextPath}/found.do">发现</a></li>
		</ul>

		
				
				
		<div class="head-box fr">
			<c:choose>
				<c:when test="${!empty sessionScope.loginUser }">
					<div class="headimg">
						<img src="${sessionScope.loginUser.img}" alt="...">
					</div>
					<ul>
						<li><a class="personal-tip" href="${pageContext.request.contextPath}/user/personal.do">个人中心</a></li>
						<li><a class="inmail-tip" href="${pageContext.request.contextPath}/notice/show.do">查看信息</a></li>
						<li><a class="inmail-tip" href="${pageContext.request.contextPath}/finance/rechargeUI.do">充值金币</a></li>
						<li><a class="unsign-tip" href="${pageContext.request.contextPath}/relogin.do">退出登录</a></li>
					</ul>
				</c:when>
				<c:otherwise>
				
					<a class="login-link" href="/loginUI.do">登录</a>
					
				</c:otherwise>
			</c:choose>
			
			
			
			
		</div>
	</div>
</div>