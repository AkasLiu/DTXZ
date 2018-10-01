<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!--图标-->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	
	
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	
	<title>大题小做——考试页面</title>
	<script type="text/javascript">
	   $(document).ready(function ()  {
            /* 设置进度条 */
            var pagestr =  "${titleVo.getPage()}";
            var pageNumStr = "${titleVo.getPageNum()}";
            var page = parseInt(pagestr);
            var pageNum = parseInt(pageNumStr);
            var processbar  = (page / pageNum) *100;
            $(".process-bar").width(processbar+ "%");
            

            // 设置结束时间
            var beginTimeStr = "${exam.getBegintime()}";
            var durationStr = "${exam.getDuration()}";
            var beginTime = new Date(beginTimeStr); 
            var duration = parseInt(durationStr);
           
            var finalTime = new Date(beginTime.getTime() + duration*1000);
            
            // 倒计时
            timer = setInterval(function() {
                var nowDate = new Date();
                var timec = finalTime.getTime() - nowDate.getTime();
                // 转化为秒
                timec /= 1000;
                // 判断时间是否到了
                if (timec <= 0) {
                    clearInterval(timer);
                    $('#lasttime').text('0:0:0');
                    alert('考试结束');
                    return ;
                }

                // 时间剩余五分钟时候 标黄
                if (timec < 300) {
                    $('#lasttime').css('color', 'rgba(200, 100, 0, 0.8)');
                }

                var sec = parseInt(timec % 60);
                var minute = parseInt((timec % 3600)/60);
                // 获取总共多少小时
                var allhour = timec / (3600);
                var hour = parseInt(allhour % 24);
                var day = parseInt(allhour / 24);
                var timetext = (day != 0 ? day+' 天 ' : '') +
                    (hour != 0 ? hour + ':' : '') +
                    (minute != 0 ? minute + ':' : '') +
                    sec;
                $('#lasttime').text(timetext);
            }, 1000);

            // 展开收缩答题卡
            $('.card-unfold').click(function() {
                $(this).next().slideToggle();
                if($(this).text() == '展开答题卡') {
                    $(this).html('收起答题卡<i class="hidden-icon"></i>');
                } else {
                    $(this).html('展开答题卡');
                }
            });

            // 设置点击选项卡的时候选择单选框
            $('.exam-question-option').click(function(){
                $(this).find('input').prop('checked', true);
            });

            // 结束考试（修改input['flag']中的value为1）
            $('input[type="button"]').click(function() {
                $('input[name="flag"]').val('1');
                // 提交表单
                $('form').submit();
            });
            
        });
	</script>

</head>
<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>


	<div class="exam-box">
		<div class="exam-header">
			<div class="process">
				<div class="process-bar"></div>
			</div>
			<span>${titleVo.getPage()}/${titleVo.getPageNum()}</span>
			<span class="process-time right">
				<!-- <span class="small-info">剩余时间</span> -->
				<span id="lasttime">0:0:0</span>
			</span>
		</div>
		<div class="subject-title">
			<i></i>[<span>填空题</span>]
		</div>

		<div class="exam-question-box">
		<form id="textForm" action="${pageContext.request.contextPath}/exam/submit.do"  method="post">
                  <input type="hidden" name ="examId" value="${titleVo.getExamId()}">
                  <input type="hidden" name ="exerciseId" value="${exe.getExerciseId()}">
                  <input type="hidden" name ="page" value="${titleVo.getPage()}">
                  <input type="hidden" name ="type" value="text">
                  <input type="hidden" name ="flag" value="0" >
			<div class="exam-question-content">
				 ${exe.getTitle()}
			</div>
			<div class="exam-question-answer">
                <br>
                <div class="text-answer">
                    <span>问题答案：</span>
                    
                    <textarea class="question-input" name="textAnswer"  id="" cols="30" rows="3"
                    placeholder="请在这里输入您的答案"  ></textarea>
                </div>

            </div>
			
			<div class="form-box">
                   <!-- 最后一题时候隐藏 -->
                    <c:if test="${titleVo.getPageNum() > titleVo.getPage()}">
                       <button type="submit"  class="btn btn-blue right">
                           下一题
                       </button>           
                   </c:if>
                  <input class="btn red-btn right"   type="button"  value="提前交卷">
             </div>
		 </form>

			<div class="clear answer-sheet-box">
				<span class = "card-unfold">展开答题卡</span>
				<ul class="answer-sheet-num">
                    
                    <c:forEach var="page" begin="1" end="${titleVo.getPageNum()}"  step="1">
                        <li>
                            <c:choose> 
                                <c:when test="${page == titleVo.getPage()}">    <!--如果 -->
                                    <a href=""  class="active">
                                            ${page}
                                    </a>
                                </c:when>      
                                <c:otherwise>  <!--否则 -->    
                                  <a href="${pageContext.request.contextPath}/exam/doingUI.do?page=${page}&examId=${titleVo.getExamId()}">
                                           ${page}
                                    </a>
                                </c:otherwise> 
                               </c:choose>
                        </li>
                    </c:forEach>
                </ul>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>