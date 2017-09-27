$(function(){
        $('#main').fullpage({
            'verticalCentered': false,
            'css3': true,
            anchors: ['page1', 'page2', 'page3', 'page4'],
            'navigation': true,
            'navigationPosition': 'right',
            'navigationTooltips': ['首页', '剧情', '音乐', '玩法'],
            'showActiveTooltip': true,
            'resize': true,
            easingcss3:"ease",
            'scrollOverflow':!0
        })

});
// section5
$(".big-pic").ready(function(){
    $(".loading-gif").hide();
    $(".big-pic").show();
});
$(".wanfa-btn").on("click",function(){
    $(".wanfa-btn a").removeClass("active");
    $(this).children("a").addClass("active");
    $(".big-pic").hide();
    $(".loading-gif").show();
    var src=$(this).children("a").data().src;
    var img=new Image();
    img.src="images/guide/"+src;
    console.log(img);
    $(".big-pic").attr("src","images/guide/"+src);
    img.onload=function(){
        $(".loading-gif").hide();
        $(".big-pic").show();
    }
});
// audio
$('.audio').on('click',function(){
    var audio=$(this).data().audio;
    $('#audio-list').children("[data-audio='"+audio+"']")[0].play();
});