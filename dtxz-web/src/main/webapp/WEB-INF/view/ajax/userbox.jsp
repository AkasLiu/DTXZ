<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
			<a href="${pageContext.request.contextPath }/user/personal.do" class="headimg">
				<img src="${userVo.img}" alt="...">
			</a>
			<a href="${pageContext.request.contextPath }/user/personal.do" class="nikename">${userVo.nickname }
				<!--<i class="female-tip"></i>-->
				
				<c:choose>
					<c:when test="${userVo.sex=='女' }">
						<i class="male-tip"></i>
					</c:when>
					<c:otherwise>
						<i class="famale-tip"></i>
					</c:otherwise>		
				</c:choose>
			</a>

			<div class="profile-box">
				<span>答题:${userVo.answerSum }</span>|
				<span>考试:${userVo.examSum }</span>|
				<span>排名:${userVo.rankSum }</span>
			</div>

			<ul class="mess-box">
				<li>
					<p>被采纳</p>
					<p>${userVo.accessSum }</p>
				</li>
				<li>
					<p>获赞</p>
					<p>${userVo.examSum }</p>
				</li>
				<li>
					<p>正确率</p>
					<p>

						<fmt:formatNumber type="percent" value="${userVo.correctSum}" maxFractionDigits="2" ></fmt:formatNumber>
					</p>
				</li>
				<li>
					<p>平均排名</p>
					<p>
						<fmt:formatNumber type="number" value="${userVo.rankSum/userVo.examSum }" maxFractionDigits="2"></fmt:formatNumber>
					</p>
				</li>

			</ul>

			<ul class="chengjibang">
			
				<c:forEach items="${userVo.exams }" var="e">
					<li><a href="#"><span>
						<fmt:formatDate value="${e.begintime }" pattern="MM-dd" />
					</span>${e.title }</a></li>
				</c:forEach>
			</ul>
		
</body>
</html>