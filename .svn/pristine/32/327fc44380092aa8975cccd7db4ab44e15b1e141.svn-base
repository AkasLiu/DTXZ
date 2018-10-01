<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的考试</title>
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
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
	<div class="main">
		<div class="create-box">
			<h3 class="title">
				创建考试
			</h3>
			<form action="${pageContext.request.contextPath}/exam/startexam.do" method="post">
		         
				<div class="create-content">
				    <div class="content-header">
                        <span>考试名称</span>
                        <input type="text" name="title"  placeholder="请输入考试题目">
                    </div>
				
					<div class="content-header">
						<span>选中班级</span>
						<a href="${pageContext.request.contextPath}/user/classmanager.do">
							<i class="add-icon"></i>
						</a>
					</div>
				    
					<div class="classroom-sel">
					   <c:forEach items="${clazzlist}" var="clazz">  
	                        <div class="class-option">
	                            <input type="radio" name="clazzId" id="${clazz.getClazzId()}"  value="${clazz.getClazzId()}">
	                            <label class="radio-icon" for="${clazz.getClazzId()}"></label>
	                            <label for="${clazz.getClazzId()}">${clazz.getName() }</label>
	                        </div>
                        </c:forEach>
                    </div>
					<!--  选择考卷  -->
					<div class="content-header">
						<span>选中考卷</span>
						<a href="${pageContext.request.contextPath}/exam/createinfo.do" target="_blank">
							<i class="add-icon"></i>
						</a>
					</div>

					<div class="exam-sel">
					    <c:forEach items="${eplist}" var="ep">  
                            <div class="exam-option">
                                <input type="radio" name="epId"  id="${ep.getEpId()}"  value="${ep.getEpId()}">
                                <label class="radio-icon" for="${ep.getEpId()}"  ></label>
                                <label for="${ep.getEpId()}">${ep.getTitle()}</label>
                            </div>
                        </c:forEach>
					
						
					</div>
					<div class="mgleft">
						<div class="exam-option">
							<label >开考时间:</label>
							<input class="txt-in" type="text" id="datetimepicker" name="begintime">
						</div>
					</div>

					<div class="mgleft">
						<div class="exam-option">
							<label>考试时长:</label>
							<input class="txt-in" type="text" value="60" name="duration" style="width: 60px;">
							<label class="left-absl">分钟</label>

						</div>
					</div>
				</div>   
				
			    <!-- <button id="create-exam" class="grey-btn" type="submit">
				   创建考试
			    </button> -->
			    <input  id="create-exam" class="grey-btn" type="submit" value="创建考试"></input>
			</form>
		</div>



		
	</div>
</body>
</html>