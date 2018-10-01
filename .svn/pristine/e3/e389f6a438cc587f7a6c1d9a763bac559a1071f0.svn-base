// 先导入Jquery文件
var script=document.createElement("script");  
script.type="text/javascript";  
script.src="jquery.js";  



// 校验input是否为空的函数
// 参数：元素， 校验结果输出的元素， 输出的数据(html())
function checkIsEmpty(inputElem, showElem, showHTML) {
		if (inputElem.val() == '') {
			// 显示提示信息
			showElem.html(showHTML);
			return true;
		} else {
			return false;
		}
	}


// 校验邮箱格式是否正确
// 参数：元素， 校验结果输出的元素， 输出的数据(html())
function checkMailIsRight(inputElem, showElem, showHTML) {
	var reg = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
	if (reg.test(inputElem.val())) {
		return true;
	} else {
		// 不合法时提示消息
		showElem.html(showHTML);
		return false;
	}
}

// 校验两次输入的密码是否一致
// 参数：元素，第二个密码元素， 校验结果输出的元素， 输出的数据(html())
function checkPwdIsSame(inputElem, inputAgainElem,
	 showElem, showHTML) {
	if (inputElem.val() == inputAgainElem.val()) {
		return true;
	} else {
		// 不一致时
		showElem.html(showHTML);
		return false;
	}
}

// 校验密码合法性
// 参数：元素， 校验结果输出的元素， 输出的数据(html())
function checkPwdIsLegal(inputElem,
	showElem, showHTML) {
	// 校验密码长度6-18位，字母和数字组成
	var reg = /^[a-zA-Z0-9_-]{6,18}$/;
	if (reg.test(inputElem.val())) {
		return true;
	} else {
		showElem.html(showHTML);
		return false;
	}
}

// 校验昵称合法性
// 参数：元素， 校验结果输出的元素， 输出的数据(html())
function checkNameIsLegal(inputElem,
	showElem, showHTML){
	// 校验昵称是否是5-16位由字母、数字、_或汉字组成
	var reg = /^[\u4e00-\u9fff\w]{5,16}$/;
	if (reg.test(inputElem.val())) {
		return true;
	} else {
		showElem.html(showHTML);
		return false;
	}
}