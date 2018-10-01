<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- 动态获取应用名      当前设置了/  替代应用名 -->  
<c:set var="path" value="${pageContex.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>流量分析</title>
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/public/ms/assets/css/flowannaly.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/assets/js/flowannaly.js" ></script>
	
	</head>
	<body>
	<script>
		window.pvNum=${pvNum};
		window.maxNum = ${maxNum};
	</script>
	
	
		<div class = "box">	
			<div class = "number">
				<span>${maxNum}</span>
				<c:forEach items="${nums}" var="num" varStatus="status"> 
					<span>${num}</span>
				</c:forEach>
				<span>0</span>		
			</div>
			
			<canvas class = "box-contain" id = "canvas_box" width="600" height="400">				
			</canvas>	
			
			<div class = "time">
				<c:forEach items="${pvs}" var="pv" varStatus="status"> 
					<span>${pv.getDay()}</span>
				</c:forEach>
			</div>
		</div>
	</body>
</html>