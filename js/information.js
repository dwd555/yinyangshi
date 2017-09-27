//封装创建新闻列表方法
function createNewsList(url,data){
    $.ajax({
        type:'GET',
        url:url,
        data:{'type':data},
        success:function(list){
            var html='';
            $.each(list,function(i,v){
                //console.log(i,v);
                var type=v.type;
                type=(type==1?"新闻":(type==2?"公告":(type==3?"活动":"媒体")));
                html+="<div class='list-item'><div class='item-content'><a data-nid='"+v.nid+"' href='"+v.url+"' class='link'><h3>"+new Date(parseInt(v.date)).toyysString()+" "+v.title+"</h3> <span class='category'>"+type+"</span> </a> </div> </div>";
            });
            $(".news-list").html(html);
        },
        complete:function(){
            $(".link").on("click",function(e){
                e.preventDefault();
                var href=$(this).attr("href");
                var data=$(this).data().nid;
                sessionStorage.setItem("href",href);
                sessionStorage.setItem("nid",data);
                location.href="news.html";
            })
        }
    });
}
//初始化页面
function initList(){
    var data=sessionStorage.getItem("type")-1;
    if(data==null || data==0 || data==-1){
        createNewsList("data/news-list.php");
        $(".content-nav li").eq(0).addClass("active").siblings(".active").removeClass("active")
    }else{
        createNewsList("data/type-list.php",data);
        //console.log(data);
        $(".content-nav li").eq(data).addClass("active").siblings(".active").removeClass("active")
    }
    sessionStorage.removeItem("type");
}
var initList=new initList();

$(".content-nav li>a").on("click",function(e){
    e.preventDefault();
    $(this).parent().addClass("active").siblings(".active").removeClass("active");
    var type=$(this).attr("href");
    if(type==0){
        createNewsList("data/news-list.php");
    }else {
        createNewsList("data/type-list.php",type);
    }
});