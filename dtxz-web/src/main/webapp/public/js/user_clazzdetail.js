
$(document).ready(function(){


	$('#addUserBtn').click(function(){
	
	    $('#addUserForm').ajaxSubmit({
	        url:"/user/findUserJsonByEmail.do",
	        type:"post",
	        success:function(user){

	            if(confirm('是否添加：昵称:'+user.nickname+",邮箱:"+user.email)){
	                window.location.href='/user/addStudent.do?clazzId='+window.clazzId+'&userId='+user.userId;
	            }
	        }
	    })
	});


})

