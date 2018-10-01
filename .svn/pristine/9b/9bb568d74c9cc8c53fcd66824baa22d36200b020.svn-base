
$(document).ready(function(){

    $('#uploadInput').change(function(){

        $('#uploadform').ajaxSubmit({
        	  url: "/uploadimg.do",
        	  type:"post",
        	  success: function(msg){
        	    $("#headimg").attr("src",msg);
        	  }
        	});
    });
})
