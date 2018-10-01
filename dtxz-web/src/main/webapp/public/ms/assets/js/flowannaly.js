(function (){
 
	window.addEventListener("load", function(){
		
//		console.log(window.pvNum);
//		console.log(pvNum[0]);
		
		var data = [pvNum[0], pvNum[1], pvNum[2], pvNum[3], pvNum[4], pvNum[5]];
		
		// 获取上下文
        var canvas_box = document.getElementById("canvas_box");
        var context = canvas_box.getContext("2d");	   
    	
    	// 描绘边框
        var grid_cols = data.length;
//		            var grid_rows = 4;
//		            var cell_height = canvas_box.height / grid_rows;
        var cell_width = canvas_box.width / grid_cols;          
  		
  		// 将数据换算为坐标
 		var points = [];
  		for( var i=0; i < data.length; i++){
  			if(i == 0){
  				var v= data[i];
        		var px = cell_width / 2;
        		var py = canvas_box.height - canvas_box.height*(v / maxNum);
        		points.push({"x":px,"y":py});
  			}else{
        		var v= data[i];
        		var px = cell_width *　(i + 1) - cell_width / 2;
        		var py = canvas_box.height - canvas_box.height*(v / maxNum);
        		points.push({"x":px,"y":py});
    		}
  		}
        // 绘制折现
        context.beginPath();
        context.moveTo(points[0].x, points[0].y);
        for(var i= 1; i< points.length; i++){
            context.lineTo(points[i].x,points[i].y);
        }	 
        context.lineWidth = 1;
        context.strokeStyle = "blue";
        context.stroke();
 
 		//绘制坐标图形
  		for(var i in points){
    		var p = points[i];
    		context.beginPath();
   		 	context.arc(p.x,p.y,2,0,2*Math.PI);
            //实心圆
        	context.fillStyle = "#000";
	        //空心圆
//	        context.strokeStyle = "#000";
			context.stroke();
			context.fillStyle="black";
			context.fill();
  		}
  		//添加文字
  		for(var i in points){  
  			var p = points[i];
    		context.beginPath();
    		context.fillStyle="black";
    		context.font="16px 楷体";
    		context.fillText(data[i], p.x - 10, p.y - 10);
  		}
	},false);
})();