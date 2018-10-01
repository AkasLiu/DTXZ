

$('#addUserBtn').click(function(){

    $('#addUserForm').ajaxSubmit({
        url:"",
        type:"post",
        success:function(msg){

            var user=JSON.parse(msg);
            console.log(user);

            if(confirm('是否添加：昵称:'+user.nickname+",邮箱:"+user.email)){
                window.location.href='/user/addStudent?clazzId=${clazzId}&userId='+user.userId;
            }
        }
    })
})
