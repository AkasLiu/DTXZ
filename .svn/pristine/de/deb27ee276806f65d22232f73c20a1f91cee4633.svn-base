
$(document).ready(function(){

    $('#uploadInput').change(function(){

        $('#uploadform').ajaxSubmit({
            url: "/upload.do",
            type:"post",
            success: function(msg){
                $("#showImg").attr("src",msg);
                $("#imgIn").val(msg);
            }
        });
    });
})
