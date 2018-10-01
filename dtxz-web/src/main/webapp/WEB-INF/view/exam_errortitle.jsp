<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>错题</title>
    <!--图标-->
    <link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_error_title.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">

    <script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/public/js/exam_error_title.js"></script>
    
    <script>
         $(document).ready(function() {
             var type = "${submitVo.type}";
             var description = "${submitVo.description}";          // 选项
             var myAnswer = " ${submitVo.myAnswer}";
             var corAnswer = "${submitVo.answer }";
             var myArr = myAnswer.split("|");
             var corArr = corAnswer.split("|");
             var optArr = description.split("|");
             /* alert(myArr);
             alert(corArr); */
             /* alert(myArr.size()); */
             if (type == "text") {
                 /* 隐藏选项框 */
                 $('.exam-question-option').css('display', 'none');
                 /* 设置正确为块独占一行 */
                 $('.answer-text').css('display', 'block');
                 $('.answer-text').height(100);
                 $('.you-answer-text').css('display', 'block');
                 $('.you-answer-text').height(100);
             }
             /* 显示答案 */
             /* 全文替换 */
             $('.answer-text').text( '正确答案:' + corAnswer.replace(/\|/g, ' '));
             $('.you-answer-text').html( '你的答案: ' + myAnswer.replace(/\|/g, ' ')  + '<span class="error-text">（错误）</span>' );
            
             /* 再对用户的选项染色 */
             for (var i = 0; i < myArr.length; i++) {
                 var optionclass = '.' + myArr[i]; 
                 /* 去掉空格 */
                 $( optionclass.replace(/\ /g, '') ).addClass('error');
             }
            
             /* 先对正确选择染色 */
             for (var i = 0; i < corArr.length; i++) {
                 var coroptionclass = '.' + corArr[i]; 
                 /* 去掉空格 */
                
                 if (coroptionclass != '.') {
                	 var obj =$( coroptionclass.replace(/\ /g, '') );
                	 obj.removeClass('error');
                	 obj.addClass('correct');
                 }
             }
              /* 显示选项 */
             $('.A-option-text').text(optArr[0]);
             $('.B-option-text').text(optArr[1]);
             $('.C-option-text').text(optArr[2]);
             $('.D-option-text').text(optArr[3]);
         });
    </script>
</head>
<body>

            <!---------------------------    头部  ------------------------------------>
        <jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

    <div class="error_title_box">
        <!-- 当前页面路径 -->
        <div class="crumbs-path">
            <a href="index.html">首页</a>
            <span>></span>
            <a href="exam_error_list.html">错题集</a>
            <span>></span>
            <span>错题</span>
        </div>
    
        <!-- 错题显示 -->
        <div class="normal-box">
            <!-- 问题内容 -->
            <div class="title-box">
                <span class="green-pot"></span>
                <span class="title-text">${submitVo.title }</span>
            </div>
            <!-- 问题答案 -->
            <div class="answer-box">
                <span class="answer-text">
                    正确答案: ${submitVo.answer }
                </span>
                <span class="you-answer-text">
                    你的答案: ${submitVo.myAnswer }
                    <span class="error-text">（错误）</span>
                </span>
                <div class="exam-question-option A">
                    <span class="A-option option">A.</span>
                    <span class="A-option-text">这是A选项</span>
                </div>
                <div class="exam-question-option B">
                    <span class="B-option option">B.</span>
                    <span class="B-option-text">这是B选项</span>
                </div>
                <div class="exam-question-option C">
                    <span class="C-option option">C.</span>
                    <span class="C-option-text">这是C选项</span>
                </div>
                <div class="exam-question-option D">
                    <span class="D-option option">D.</span>
                    <span class="D-option-text">这是D选项</span>
                </div>
    
                <!-- 附加工具 -->
                <div class="extra-tool">
                    <li class="one-tool find-error-icon">纠错</li>
                    <span class="right">|</span>
                    <li class="one-tool collect-icon">收藏</li>
                    <span class="right">|</span>
                    
                    <li class="one-tool solve-icon">求解答</li>
                    <span class="right">|</span>
                    <li class="one-tool note-icon">添加笔记</li>

                </div>
            </div>
                        
        </div>
        <!-- 右侧悬浮栏 -->
        <div class="pre-next-top-box">
            <a id="last-problem"  href="${pageContext.request.contextPath}/exam/errortitle.do">上一题</a>
            <a id="next-problem" href="${pageContext.request.contextPath}/exam/errortitle.do">下一题</a>
            <a id="back-to-top" href="javascript:;">返回顶部</a>
        </div>

    </div>
    <div class="clear"></div>
    <!-- 尾部 -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>