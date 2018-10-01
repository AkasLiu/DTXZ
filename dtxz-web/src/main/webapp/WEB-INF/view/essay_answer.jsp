<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>回答</title>
		
		<!--图标-->
		<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
		
		<!--链入基本初始化-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/base.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/tag.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/button.css">
		
		<!--链入前台公共样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/common.css">
		
		<!--提问中的样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/essay_answer.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath }/public/style/essay_myessay.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/public/js/jquery.js" ></script>
		<script type="application/javascript" src="${pageContext.request.contextPath}/public/js/common.js"></script>

	</head>
	<body>
	
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	<!--切换标题栏-->
	<script>
        changeNav(1);
	</script>

	<!----------------------------主体------------------------------------>
	<div class="container">
		<div class="breadcrumb">
			<a href="${pageContext.request.contextPath }/essay/question.do">回答</a>
			<span> > </span>
			<span>${problemVo.problem.title}</span>
		</div>
		<!-----------------------主体左边------------------------>
		<div class="fl">
			
			<div class="answer">
				<!--显示用户信息-->
				<div class="question_head">
					<h1>${problemVo.problem.title}</h1>
					<div class="question_author">
						<a href="#">
							<img src="${problemVo.user.img}"/>
						</a>
						<div class="detail">
							<span class="nickName"><a href="#">${problemVo.user.nickname}</a></span>
						</div>
						<div class="foot">
							<span class="foot_left">编辑于<fmt:formatDate value="${problemVo.problem.pubTime}" type="both"/></span>
							<span class="foot_right">回答${problemVo.answerCount}&nbsp;&nbsp;</span>
						</div>	
					</div>
				</div>
				<!--问题具体内容-->
				<div class="question_content">
					${problemVo.problem.content}
				</div>
				<div class="question_menu">
					<a href="#">
						<span class="next">无序标签不生效问题修复方法&nbsp;&nbsp;&nbsp;</span>
						<span class="next nextq">下一个问题&nbsp;&nbsp;&nbsp;</span>	
						<i></i>
					</a>
				</div>
			</div>
			
			<!--用户回答-->
			<div class="answer_list">
				<div class="answer_list_head">
					<h1>${problemVo.answerCount}条回答</h1>
					<a href="#respondid">回答</a>
			
				</div>
				<div class="answer_list_body">
					<ul>
					<c:forEach items="${page.data}" var="answerVos">
						<li>
							<div class="answer_content">
								<c:if test="${answerVos.answer.status=='采用' }">
									<div class="agree">
											<p>最佳答案</p>
											<span></span>				
									</div>
								</c:if>
								<a href="#"><img src="${answerVos.user.img}"/></a>
								<div class="answer_detail">
									<p><a href="#">${answerVos.user.nickname}	</a></p>
									<div class="answer_dricp">
										${answerVos.answer.content}	
									</div>
									<div class="answer_action">
										<span>发表于 <fmt:formatDate value="${answerVos.answer.pubTime}" type="both"/></span>
										<a href="javascript:void(0)" class="a_reply">评论(${fn:length(answerVos.commentVos)})</a>
										<a href="${pageContext.request.contextPath}/essay/praise.do?answerId=${answerVos.answer.answerId}&probId=${problemVo.problem.probId}">
											赞(${answerVos.answer.praiseCount})
										</a>
										<c:if test="${sessionScope.loginUser.userId==problemVo.user.userId}">
											<c:if test="${answerVos.answer.status==null }">
												<a href="${pageContext.request.contextPath}/essay/agree.do?answerId=${answerVos.answer.answerId}&probId=${problemVo.problem.probId}">
													是否采用
												</a>
											</c:if>
										</c:if>
									</div>
									<div class="reply_box clearfix">
										<div class="reply_list">
											<ul>
												<li>
													<div class="reply_list_item">
														<c:forEach items="${answerVos.commentVos}" var="commentVos">
															<div class="reply_list_every">
																<div class="reply_main">
																	<div class="reply_preson">
																		<a href="#">${commentVos.user.nickname}  : </a>
																	</div>
																	<div class="reply_content">
																			${commentVos.comment.content}
																	</div>
																</div>
																<div class="reply_info">
																	<span >
																		<fmt:formatDate value="${commentVos.comment.pubTime}" type="both"/>
																	</span>					
																</div>
															</div>
														</c:forEach>
													</div>
												</li>
											</ul>
										</div>
										<div class="reply_editoBox ">
										
											<form action="${pageContext.request.contextPath}/essay/comment.do?answerId=${answerVos.answer.answerId}&probId=${problemVo.problem.probId}" method="post">
												<textarea placeholder="请输入你的观点" style="resize: none; height: 40px; width: 512px; font-size:12px; line-height: 18px;" name="content"></textarea>
												<button class="btn btn-success fr" type="submit"> 回复</button>
											</form>
											
										</div>
									</div>
								</div>
								
							</div>
						</li>
					</c:forEach>
				</div>
			</div>
			
<!-- 分页 -->
			<div class="pagination">
				<ul class = "pagination-ul">

					<c:if test="${page.pageNum+0 >1}">
						<li class = "first-page"><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=1">首页</a></li>
						<li class = "prev-page"><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=${pageNum-1 }">上一页</a></li>
					</c:if>
					
					<c:forEach begin="${page.start }" end="${page.end }" var="v">
						<c:choose>
							<c:when test="${v==page.pageNum }">
								<li class = "page-number active"><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=${v}"><p>${v}<p></a></li>
							</c:when>
							<c:otherwise>
								<li class = "page-number "><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=${v}"><p>${v}<p></a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${page.pageNum+0<page.totalPage}">
						<li class = "next-page"><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=${page.pageNum-1}">下一页</a></li>
						<li class = "last-page"><a href = "${pageContext.request.contextPath }/essay/answer.do?probId=${problemVo.problem.probId }&pageNum=${page.totalPage}">末页</a></li>
					</c:if>
				</ul>
			</div>
			
			
			
			
			
			
			<!--回答-->
			<div class="respond" id="respondid">
				<form action="${pageContext.request.contextPath}/essay/response.do?probId=${problemVo.problem.probId}" method="post">
					<textarea name="answerContent"></textarea>
					</br>
					<button class="btn btn-info fr" type="submit" class="sub" >回答</button>
				</form>		
			</div>
		</div>

		<!---------------------主体右边------------------------->
		<div class="fr">
		<!--天气-->
		<div class="weather-box">
			<img src="${pageContext.request.contextPath}/public/images/weather/qintian-wanshang.png" alt="...">
			<span>周四</span>
			<p>天气晴朗,适合刷题</p>

		</div>

		<div class="info-box">
			<a href="#" class="headimg">
				<img src="${pageContext.request.contextPath}/public/images/null-headimg.png" alt="...">
			</a>
			<a href="#" class="nikename">${problemVo.user.nickname}
				<!--<i class="female-tip"></i>-->
				<i class="male-tip"></i>
			</a>

			<div class="profile-box">
				<span>答题:10</span>|
				<span>考试:23</span>|
				<span>排名:16000</span>
			</div>

			<ul class="mess-box">
				<li>
					<p>被采纳</p>
					<p>10</p>
				</li>
				<li>
					<p>获赞</p>
					<p>10</p>
				</li>
				<li>
					<p>正确率</p>
					<p>10%</p>
				</li>
				<li>
					<p>平均排名</p>
					<p>10</p>
				</li>

			</ul>

			<ul class="chengjibang">
				<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
				<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
				<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
				<li><a href="#"><span>09-20</span>衡水二中2017第五次模考第4名</a></li>
			</ul>
		</div>

	</div>
		
	</div>

	

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

	</body>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/public/js/essay_myessay.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/public/js/essay_answer.js" ></script>
	
</html>
