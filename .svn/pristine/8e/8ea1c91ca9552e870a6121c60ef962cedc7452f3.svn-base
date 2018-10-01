


$(document).ready(function(){


    //时钟标签
    var tss=document.getElementsByClassName('clock');

    setInterval(function() {
        for(var i=0;i<tss.length;++i){

            var day=msToDay(tss[i].getAttribute('date'));

            tss[i].innerHTML=day.day+'天'+day.hour+':'+day.minute+':'+day.second;
        }

    },1000);





});


