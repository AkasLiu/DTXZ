<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>考试记录</title>
	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_history.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/common.js"></script>

</head>
<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>


	<div class="exam-his-box common-box">
		<div class="exam-his-header">
			<i class="history-icon"></i>
			考试记录
		</div>
		<div class="exam-his-content">
			<div class="exam-his-summary">
				<span>共考试：</span>
				<span class="num-active" id="exam-num">3场</span>
				<span>最高排名：</span>
				<span class="num-active" id="exam-best-ranking">2</span>
				<span>近一周答卷量：</span>
				<span class="num-active" id="exam-week-num">1场</span>
			</div>

			<table class="table-box">
				<tbody>
					<tr>
						<th>考试名称</th>
						<th>创建时间</th>
						<th>开始时间</th>
						<th>时长</th>
						<th>正确数</th>
					</tr>
					<c:if test="${hislist.size() > 0}">
						<c:forEach items="${hislist}"  var="s"  >
	                        <tr>
	                            <td>${s.getTitle()}</td>
	                            <td>${s.getCreatetime()}</td>
	                            <td>${s.getBegintime()}</td>
	                            <td>${s.getDuration()/60}分</td>
	                            <td>${s.getCorNum()}/${s.getAllNum()}</td>
	                        </tr>
	                    
	                    </c:forEach>
                    </c:if>

				</tbody>
			</table>
			<a href="" class="more-his-btn">
				加载更多
			</a>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>