/**
 * Created by Joshua on 2016/11/25.
 **/
"use strict";
$(".video>a,.guide-video").on("click",function(e){
    e.preventDefault();
    $("#modal-video").css("display","block");
    $("#pm-video").attr({"src":"video/"+$(this).attr("href"),"autoplay":"true"});
});
$(".close").click(function (e) {
    $(this).parent().css("display","none");
    $("#pm-video").attr("src","");
});
$("#pm-video,.play-button").click(function () {
   var video=document.getElementById("pm-video");
   if(video.paused){
        video.play();
       $(".play-button").hide();
   }else{
       video.pause();
       $(".play-button").show();
   }
});