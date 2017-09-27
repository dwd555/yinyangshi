/**
 * Created by Joshua on 2016/12/7.
 */
$(function(){
    $("#header").load("public/header.html");
    $("#banner").load("public/banner.html");
    $("#footer").load("public/footer.html");
});
$(window).scroll(function(){ //header滚动
    if($(window).scrollTop()>55){
        $("#nav_bar").addClass("fixed");
        $(".banner_logo>span").addClass("hide");
    }else{
        $("#nav_bar").removeClass("fixed");
        $(".banner_logo>span").removeClass("hide");
    }
    if($(window).scrollTop()>2640){
        $("#footerPage").addClass("animate");
    }
});
function init() {
    if (sessionStorage.getItem("href")) {
        var href = sessionStorage.getItem("href");
        $.ajax({
            url: href,
            type: "GET",
            datatype: "html",
            success: function (msg) {
                $(".news-content").html(msg);
            }
        });
    }else{
        $(".news-content").html("找不到该网页")
    }
    if(sessionStorage.getItem("nid")){
        var nid=sessionStorage.getItem("nid");
        $.ajax({
            url:'data/select-news.php',
            type:'GET',
            data:{'nid':nid},
            success:function(result){
                $(".news-title>h1").html(result.title);
                var date=new Date(parseInt(result.date)).toyysString();
                $(".news-time").html(date);
            }
        });
    }
}
var init=new init();
/****为所有的Date类型的对象添加一个新的方法输出日期****/
Date.prototype.toyysString=function(){
    var month=(this.getMonth()+1)>=10?this.getMonth()+1:"0"+(this.getMonth()+1);
    var date=this.getDate()>=10?this.getDate():"0"+this.getDate();
    return this.getFullYear()+"-"+month+"-"+date;
};