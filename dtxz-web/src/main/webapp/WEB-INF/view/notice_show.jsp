<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>查看通知</title>
		<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css" />



		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/notice_show.css" />
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js" ></script>
		
	</head>
	<body>


	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


		<div class = "news_box">			
			<div class = "news_contain">
				<div class = "title">
					<span><img src="${pageContext.request.contextPath}/public/images/news-img.png"/>通知</span>

					<form action="${pageContext.request.contextPath }/notice/searchNotice.do" method="post" class = "searchform">
						<button class = "search" type="submit"></button>
						<input type="text" placeholder="搜索..." name = "search"/>
					</form>
				</div>
				<ul>	
				
					<c:forEach items="${messages}" var="messages">  
	        			<li>
							<a class = "list-head" href = "javascript:void(0);">
								<img alt = "头像" src = "${pageContext.request.contextPath}/public/images/news.png"/>
							</a>
							<div class = "tooltip">
								<div class = "tooltip_arrow"></div>
								<div class = "tooltip_inner">
									<div class = "chat-title">
										${messages.getContent()}
									</div>
									<div class = "letter-info">
										<p class = "letter-time">今天 15:22</p>
										<p class = "delete-letter"><a href = "${pageContext.request.contextPath }/notice/deleteNotice.do?mesId=${messages.getMesId()}" class = "delete">删除</a><p>
									</div>
								</div>
							</div>
							
							<div class = "chat-contain">
								<p class = "contain-p">
									${messages.getContent()}
								</p>
							</div>						
						</li>
					</c:forEach>  
					
					<!-- <li>
						<a class = "list-head" href = "javascript:void(0);">
							<img alt = "头像" src = "${pageContext.request.contextPath}/public/images/news.png"/>
						</a>
						<div class = "tooltip">
							<div class = "tooltip_arrow"></div>
							<div class = "tooltip_inner">
								<div class = "chat-title">
									恭喜你！注册成功！ ---1
								</div>
								<div class = "letter-info">
									<p class = "letter-time">今天 18:22</p>
									<p class = "delete-letter"><a href = "javascript:void(0);" class = "delete">删除</a><p>
								</div>
							</div>
						</div>
						
						<div class = "chat-contain">
							<p class = "contain-p">
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
							</p>
						</div>
						
					</li>
					<li>
						<a class = "list-head" href = "javascript:void(0);">
							<img alt = "头像" src = "${pageContext.request.contextPath}/public/images/news.png"/>
						</a>
						<div class = "tooltip">
							<div class = "tooltip_arrow"></div>
							<div class = "tooltip_inner">
								<div class = "chat-title">
									恭喜你！注册成功！ ---2
								</div>
								<div class = "letter-info">
									<p class = "letter-time">今天 18:22</p>
									<p class = "delete-letter"><a href = "javascript:void(0);" class = "delete">删除</a><p>
								</div>
							</div>
						</div>
						
						<div class = "chat-contain">
							<p class = "contain-p">
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
							</p>
						</div>
						
					</li>		
					<li>
						<a class = "list-head" href = "javascript:void(0);">
							<img alt = "头像" src = "${pageContext.request.contextPath}/public/images/news.png"/>
						</a>
						<div class = "tooltip">
							<div class = "tooltip_arrow"></div>
							<div class = "tooltip_inner">
								<div class = "chat-title">
									恭喜你！注册成功！ ---3
								</div>
								<div class = "letter-info">
									<p class = "letter-time">今天 18:22</p>
									<p class = "delete-letter"><a href = "javascript:void(0);" class = "delete">删除</a><p>
								</div>
							</div>
						</div>
						
						<div class = "chat-contain">
							<p class = "contain-p">
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
							</p>
						</div>
						
					</li>	
					<li>
						<a class = "list-head" href = "javascript:void(0);">
							<img alt = "头像" src = "${pageContext.request.contextPath}/public/images/news.png"/>
						</a>
						<div class = "tooltip">
							<div class = "tooltip_arrow"></div>
							<div class = "tooltip_inner">
								<div class = "chat-title">
									恭喜你！注册成功！ ---4
								</div>
								<div class = "letter-info">
									<p class = "letter-time">今天 18:22</p>
									<p class = "delete-letter"><a href = "javascript:void(0);" class = "delete">删除</a><p>
								</div>
							</div>
						</div>
						
						<div class = "chat-contain">
							<p class = "contain-p">
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
								尊敬的XXX用户，恭喜你注册成功！<br/>
							</p>
						</div>
						
					</li>	 -->
				</ul>	
			</div>
			
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/notice_show.js" ></script>
	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

	</body>
</html>
