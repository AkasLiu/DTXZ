
$(document).ready(function(){

    $('#uploadInput').change(function(){

        $('#uploadform').ajaxSubmit({
            url: "/uploadimg.do",
            type:"post",
            success: function(msg){
                $("#showImg").attr("src",msg);
                $("#imgIn").val(msg);
            }
        });
    });
})
