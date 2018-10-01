<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>错题集</title>
	<!--图标-->
    <link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_error_union.css">
    <script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/public/js/exam_curexam.js"></script>

</head>
<body>

	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	<!-- 广告 -->
    <div class="adv-box">
        <img src="${pageContext.request.contextPath}/public/images/advs/hackathon_banner.png" alt="刷题马拉松大赛" class="exam-adv">
    </div>

    <div class="big-container">
        <div class="left left-content">
            <div class="normal-box weather-box">
                <img src="${pageContext.request.contextPath}/public/images/weather/qintian-wanshang.png" alt="...">
                <span>周日</span>
                <p>天气凉爽，适合睡后刷题</p>
            </div>

            <div class="person-info normal-box">
                <div class="photo-box">
                    <div class="radius-box">
                        <img src="images/null-headimg.png" alt="">
                    </div>
                </div>
                <div class="user-name">
                    beanSeedling
                </div>

                <div class="person-details challenge-num-icon">
                    <span>已挑战</span>
                    <span class="right">38题</span>
                </div>

                <div class="person-details right-num-icon">
                    <span>已答对</span>
                    <span class="right">28题</span>
                </div>

                <div class="person-details exam-num-icon">
                    <span>已考试</span>
                    <span class="right">3次</span>
                </div>
                <!-- 正确率 -->
                <div class="pass-box">
                    <p>正确率</p>
                    <p>50.00%</p>
                </div>
            </div>

            <div class="normal-box popular-adv">
                <h3 class="red-pot-title">
                    热门推荐
                    <i class="carousel-last-icon right" title="下一页"></i>
                    <i class="carousel-next-icon right" title="上一页"></i>
                </h3>

                <!-- 广告框 -->
                <div class="popular-adv-box">
                    <a href="">
                        <img src="${pageContext.request.contextPath}/public/images/advs/826546_1483534607215_238x923.png" alt="">
                    </a>
                    <a href="">
                        <img src="${pageContext.request.contextPath}/public/images/advs/826546_1483534632567_238x922.png" alt="">
                    </a>
                    <a href="">
                        <img src="${pageContext.request.contextPath}/public/images/advs/3311212_1510900554629_7D2A2B50F7E3C99128B238F40F682AEC.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>

        <!-- 右边栏错题 -->
        <div class="right-content right normal-box">
            <h3 class="red-pot-title"><a>错题集</a></h3>
            <table>
                <tbody>
                    <tr>
                        <th width="475">错题题目</th>
                        <th width="50">正确答案</th>
                    </tr>

					<c:forEach items="${page.data}" var="s" varStatus="vs">
					
	                    <tr>
	                        <td><a href="${pageContext.request.contextPath}/exam/errortitle.do?submitId=${s.submitId}&exerciseId=${s.exerciseId}">${s.title }</a></td>
	                        <td>${s.answer}</td>
	                    </tr>
                    
					</c:forEach>
                    
                    
                </tbody>
            </table>

 				<!-- 分页 -->
				<div class="pagination">
					<ul class = "pagination-ul">
						<c:if test="${page.pageNum+0 >1}">
							<li class = "first-page"><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pagenum=1">首页</a></li>
							<li class = "prev-page"><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pagenum=${pageNum-1 }">上一页</a></li>
						</c:if>
						
						<c:forEach begin="${page.start }" end="${page.end }" var="v">
							<c:choose>
								<c:when test="${v==page.pageNum }">
									<li class = "page-number active"><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:when>
								<c:otherwise>
									<li class = "page-number "><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pageNum=${v}"><p>${v}<p></a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
	
						<c:if test="${page.pageNum+0<page.totalPage}">
							<li class = "next-page"><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pageNum=${page.pageNum-1}">下一页</a></li>
							<li class = "last-page"><a href = "${pageContext.request.contextPath }/exam/errorunion.do?pageNum=${page.totalPage}">末页</a></li>
						</c:if>
					</ul>
				</div>
            
            
            
            
            
        </div>
    </div>
    <div class="clear"></div>
	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>