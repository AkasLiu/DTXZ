
var msg='';

$(document).ready(function(){


    $('#pwdfm').submit(function(){

        return check();

    })

    $('#newpwdcheck').blur(function(){

        if(check()){
            $('#submitPwdBtn').css('display','inline-block');
        }else{
            $('#submitPwdBtn').css('display','none');
            alert(msg);
        }
    });
})




//校验密码
function check() {
    var ordpwd = $("#oldpwd").val();

    var newpwd = $("#newpwd").val();
    var newpwdcheck = $("#newpwdcheck").val();

    if (ordpwd === newpwd) {

        msg = '旧密码和新密码不能相同';
    } else if (newpwd != newpwdcheck) {
        msg = '确认密码和更新密码不一致';

    } else {
        return true;
    }

    return false;

}