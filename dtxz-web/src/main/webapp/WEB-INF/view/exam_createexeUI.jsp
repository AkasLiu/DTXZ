<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>创建试题</title>
	<link rel="shortcut icon" type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script>
		// 显示Radio答案输入框
		function showRadioBox() {
			// 隐藏其他
			$('.select-checkbox-answer').slideUp();
			$('.text-answer').slideUp();
			
			// 显示单选答案
			$('.select-radio-answer').slideDown();
			$('.select-answer-box').slideDown();
		}
		// 显示check答案输入框
		function showCheckBox() {
			// 隐藏其他
			$('.select-radio-answer').slideUp();
			$('.text-answer').slideUp();

			// 显示多选答案框
			$('.select-checkbox-answer').slideDown();
			$('.select-answer-box').slideDown();
		}
		// 显示text答案输入框
		function showTextBox() {
			// 隐藏其他
			$('.select-radio-answer').slideUp();
			$('.select-checkbox-answer').slideUp();
			$('.select-answer-box').slideUp();
			// 显示文字答案框
			$('.text-answer').slideDown();
		}

		$(document).ready(function() {
			// 默认单选题
			$('#radio-type').prop('checked', true);
			// showRadioBox();
			$('.text-answer').css('display', 'none');
			$('.select-checkbox-answer').css('display', 'none');
			
			// 监听切换答案框
			$('#radio-type').click(function() {
				showRadioBox();
			});

			$('#check-type').click(function() {
				showCheckBox();
			});

			$('#text-type').click(function() {
				showTextBox();
			});

			// 展开收缩答题卡
			$('.card-unfold').click(function() {
				$(this).next().slideToggle();
				if($(this).text() == '展开试题卡') {
					$(this).html('收起试题卡<i class="hidden-icon"></i>');
				} else {
					$(this).html('展开试题卡');
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

	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>

	<!-- 考试盒 -->
	<div class="exam-box">
		<div class="exam-header">
			
		</div>

		<div class="subject-title">
			<i></i>
			<span>[创建试题]</span>
		</div>
		<div class="exam-question-box">
			<form action="${pageContext.request.contextPath}/exam/createexe.do">
			    <input type="hidden"  name="epId" value="${epId}">
			    <input type="hidden" name="page" value="${page}">
			    <input type="hidden"  name="flag"   value="0">
				<div class="exam-question-content">
					<span>问题内容：</span>
				 	<textarea class="question-input" name="title"  id="" cols="30" rows="3"
				 	placeholder="请在这里输入您的问题"></textarea>
				</div>
				<!-- 问题类型 -->
				<div class="exam-question-type">
					<div class="type-box">
						<input type="radio" name="type"  id="radio-type"   value="radio">
						<label class="radio-icon" for="radio-type"></label>
						<label for="radio-type">单选题</label>
					</div>
					<div class="type-box">
						<input type="radio" name="type"   id="check-type"  value="check">
						<label class="radio-icon" for="check-type"></label>
						<label for="check-type">多选题</label>
					</div>
					<div class="type-box">
						<input type="radio" name="type"  id="text-type"   value="text">
						<label class="radio-icon" for="text-type"></label>
						<label for="text-type">填空题</label>
					</div>
				</div>
				<!-- 选择题选项 -->
				<div class="select-answer-box">
					<div class="text-box">
						A：<input type="text" name="aOtpion"
							placeholder="A选项的内容">
					</div>
					<div class="text-box">
						B：<input type="text" name="bOtpion"
							placeholder="B选项的内容">
					</div>
					<div class="text-box">
						C：<input type="text" name="cOtpion"
							placeholder="C选项的内容">
					</div>
					<div class="text-box">
						D：<input type="text" name="dOtpion"
							placeholder="D选项的内容">
					</div>
				</div>

				<div class="select-radio-answer">
					答案：
					<div class="answer-box">
						<input type="radio" name="radioAnswer" id="answer-raido-1"  value="A">
						<label class="radio-icon" for="answer-raido-1"></label>
						<label for="answer-raido-1">A</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="radioAnswer" id="answer-raido-2"  value="B">
						<label class="radio-icon" for="answer-raido-2"></label>
						<label for="answer-raido-2">B</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="radioAnswer" id="answer-raido-3"  value="C">
						<label class="radio-icon" for="answer-raido-3"></label>
						<label for="answer-raido-3">C</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="radioAnswer" id="answer-raido-4"   value="D">
						<label class="radio-icon" for="answer-raido-4"></label>
						<label for="answer-raido-4">D</label>
					</div>
				</div>

				<div class="select-checkbox-answer">
					答案：
					<div class="answer-box">
						<input type="checkbox" name="checkAnswer" id="answer-check-1"   value="A">
						<label class="checkbox-icon" for="answer-check-1"></label>
						<label for="answer-check-1">A</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="checkAnswer" id="answer-check-2"    value="B">
						<label class="checkbox-icon" for="answer-check-2"></label>
						<label for="answer-check-2">B</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="checkAnswer" id="answer-check-3"    value="C">
						<label class="checkbox-icon" for="answer-check-3"></label>
						<label for="answer-check-3">C</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="checkAnswer" id="answer-check-4"    value="D">
						<label class="checkbox-icon" for="answer-check-4"></label>
						<label for="answer-check-4">D</label>
					</div>
				</div>

				<div class="text-answer">
					<span>问题答案：</span>
				 	<textarea class="question-input" name="textAnswer"  id="" cols="30" rows="3"
				 	placeholder="请在这里输入您的答案"></textarea>
				</div>
			
			
			<div class="create-btn-box">
				<input class="btn red-btn"   type="button"  value="完成创建">

				<button type="submit"  class="btn btn-blue" >
					下一题
				</button>		
			</div>
			
            </form>
			
			<div class="clear answer-sheet-box">
				<span class = "card-unfold">展开试题卡</span>
				<ul class="answer-sheet-num">
					<c:forEach var="p" begin="1" end="${page-1}"  step="1">
                        <li>
                              <a href="javascript:void(0);">
                                       ${p}
                                </a>
                        </li>
                        
                    </c:forEach>
                    <li><a class="active"  href="javascript:void(0);">${page}</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>