<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>试卷信息</title>
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_myexam.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/jquery.datetimepicker.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.datetimepicker.full.min.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/exam_myexam.js"></script>

	<!-- <script>
		$(document).ready(function() {
			$('.add-icon').click(function() {
				$(document).parent().;
			});
		});
	</script> -->

</head>
<body>
    <!---------------------------    头部  ------------------------------------>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>
    
	<div class="infomain">
        <div class="create-box">
            <h3 class="title">
                创建考试信息
            </h3>
            <form action="${pageContext.request.contextPath}/exam/createpaper.do" method="post">
                <div class="create-content">
                    <div class="content-header">
                        <span>试卷名称</span>
                        <input type="text" name="title">
                    </div>
                    
                    <div class="content-header">
                        <span>试卷信息</span>
                        <input type="text" name="description">
                    </div>
                    
                </div>
                <!-- <button id="create-exam" class="grey-btn" type="submit">
                    创建考试
                </button> -->
                <input type="submit" id="create-exam" value="开始创建试卷" class="grey-btn">
            </form>
        </div>
    </div>
    
    <!-- 尾部 -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>
</body>
</html>