"use strict";
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
$(setTimeout(function(){$(".slogan,.shenle,.qingmin,.banner_logo").addClass("animate")},500));//初始动画
//banner轮播动画
$.ajax({    //异步获取轮播图片
    type:"GET",
    url:"data/carousel.php",    //修改轮播图片到carousel表修改
    success:function(list){
        //console.log(list);
        var html='';    //轮播图片
        var inx='';     //轮播下标
        //console.log(list);
        if(list.length==0){return}
        for(var i=0;i<list.length;i++){
            var a=list[i];
            // html+=`
            //     <a href="${a.url}" class="banner_img"><img src=${a.src} title=${a.title}></a>
            // `;为了适配烦人的ie，放弃es6语法
            html+="<a href='"+a.url+"' data-nid='"+ a.nid+"' class='banner_img' title='"+a.title+"'><img src='"+a.src+"'></a>";
            if(i==0){
            //     inx+=`
            //     <a href="javascript:void(0)" class="on"></a>
            // `;
                inx+="<a href='javascript:void(0)' class='on'></a>";
            }else {
                // inx += `
                //     <a href="javascript:void(0)"></a>
                // `;
                inx+="<a href='javascript:void(0)'></a>";
            }
        }
        $(".full").css("width",list.length*360);//修改容器长度放图片
        $(".full").html(html);
        $(".banner_nav").html(inx);
    },
    complete:function(){    //加载完成后绑定事件
        var duration=$(".full>a").length;
        var i=0;
        var timer=setInterval(function(){
            $(".full").animate({
                left:-360*i
            },500);
            $(".banner_nav>a").eq(i).addClass("on").siblings(".on").removeClass("on");
            i++;
            if(i==duration){i=0}
        },5000);
        var t;
        $(".banner_nav>a").mouseenter(function(){
            var that=$(this);
            t=setTimeout(function(){
                var index=$(".banner_nav>a").index(that);
                that.addClass("on").siblings(".on").removeClass("on");
                $(".full").animate({
                    left:-360*index
                },500);
            },300);
        }).mouseleave(function(){clearTimeout(t)});

        $(".news_banner").hover(function(){ //当鼠标在banner上停止计时器
            clearInterval(timer);
        },function(){
            timer=setInterval(function(){
                $(".full").animate({
                    left:-360*i
                },500);
                $(".banner_nav>a").eq(i).addClass("on").siblings(".on").removeClass("on");
                i++;
                if(i==duration){i=0}
            },5000);
        });
    }
});


//异步获取新闻列表
$.ajax({
	type:"GET",
	url:"data/news.php",
	success:function(list){
		var html='';
		$.each(list,function(i,n){
			//console.log(n);
			html+="<ul>";
			for(var i=0;i<n.length;i++){
				var result=n[i];
				var type=result.type;
				type=(type==1?"新闻":(type==2?"公告":(type==3?"活动":"媒体")));
				html+="<li><a href='"+result.url+"'data-nid='"+result.nid+"'title='"+result.title+"'>-【"+type+"】 "+result.title+"</a><em>"+new Date(parseInt(result.date)).toyysString()+"</em></li>";
			}
			html+="</ul>";
		});
		$(".news_list").html(html);
	},
    complete:function(){
        $(".news_list").on("click","a",function(e){
            e.preventDefault();
            var href=$(this).attr("href");
            var data=$(this).data().nid;
            //console.log(href);
            sessionStorage.setItem("href",href);
            sessionStorage.setItem("nid",data);
            location.href="news.html";
        })
    }
});
/****为所有的Date类型的对象添加一个新的方法输出日期****/
Date.prototype.toyysString=function(){
    var month=(this.getMonth()+1)>=10?this.getMonth()+1:"0"+(this.getMonth()+1);
	var date=this.getDate()>=10?this.getDate():"0"+this.getDate();
	return this.getFullYear()+"-"+month+"-"+date;
};

//异步获取攻略更多
$.ajax({
    type:"GET",
    url:"data/gonglue.php",
    success:function(list){
        var html='';
        $.each(list,function(i,result){
            var type=result.type;
            type=(type==1?"新手":(type==2?"御魂":(type==3?"式神":(type==4?"斗技":"玩法"))));
            html+="<li> <a href='"+result.url+"' title='"+result.title+"'> <p> <i></i> <span>【"+type+"】 "+result.title+"</span> </p> <em>作者："+result.author+"</em> </a> </li>";
        });
        $("ol.more").html(html);
    }
});
function supportWebp(){

}

$.ajax({
    type:"GET",
    url:"data/tongren.php",
    success:function(list){
        // var browser='';
        // var ua=navigator.userAgent;
        // if(ua.indexOf("MSIE")!=-1){
        //     browser="IE";
        // }else if(ua.indexOf("Firefox")!=-1){
        //     browser="Firefox";
        // }else if(ua.indexOf("OPR")!=-1){
        //     browser="Opera";
        // }else if(ua.indexOf("Chrome")!=-1){
        //     browser="Chrome";
        // }else if(ua.indexOf("Safari")!=-1){
        //     browser="Safari";
        // }
        // var version="unknown";
        // //如果browser不是unknown
        // //如果browser是Opera
        // //在ua中找OPR的位置，+3+1，保存在i中
        // //否则
        // //在ua中找browser的位置，+browser的字符个数+1，保存在i中
        // //选取ua中i位置开始的3位，转为浮点数保存在version中
        // if(browser!="unknown"){
        //     if(browser=="Opera"){
        //         var i=ua.indexOf("OPR")+3+1;
        //     }else{
        //         i=ua.indexOf(browser)+browser.length+1;
        //     }
        //     version=parseFloat(ua.substr(i,3));
        //
        // }
       // var supWebp=supportWebp();
       // console.log(supportWebp())
        function createList(picType){//封装生成列表方法
            var html='';
            $.each(list,function(i,n){
                html+="<ul class='tongren_pics clear'>";
                for(var i=0;i<n.length;i++){
                    var result=n[i];
                    html+="<li> <a href='"+result.url+"' title='"+result.title+"'> <img src='"+result.imgurl+picType+"'> <span><i></i></span> </a> <p>"+result.title+"</p> </li>";
                }
                html+="</ul>";
            });
            $(".temp_wrap").html(html);
        }
        var webp=new Image();
        webp.src="images/tongren/logo_6c14ca6.webp";
        var supWebp='';
        webp.onload=(function(){//判断浏览器是否支持webp
            supWebp=webp.width>0?1:0;
            var picType=null;
            if(supWebp==1){//支持webp才下发
                picType='webp';
            }else{
                picType='jpg';
            }
            createList(picType);

        });
        webp.onerror=(function(){
            var picType='jpg';
            createList(picType);
        })

    }
});

/**
 滚动方法封装：choose:鼠标移入的元素组，cName:鼠标移入的元素添加的class名，moveBlock：滚动的元素，step：滚动的距离
 playTime:动画时间，delayTime:延迟执行的时间(鼠标在元素上几秒后才执行动画)
 **/
function roll(choose,cName,moveBlock,step,playTime,delayTime){
    var t;
    $(choose).on("mouseenter",function(){
        var that=$(this);
        t=setTimeout(function(){
            var index=$(choose).index(that);
            that.addClass(cName).siblings().removeClass(cName);
            $(moveBlock).animate({
                left:-(index*step)+"px"
            },playTime);
        },delayTime);
    }).mouseleave(function(){clearTimeout(t)});
}
var newslist=new roll(".news_nav>li","current",".news_list",500,500,200);//新闻列表的滚动
// var strategy=new roll(".strategy_nav>a","active",".strategy-wrap",1200,500,200);//攻略的滚动
var tongren=new roll(".tongren_tab>li","on",".temp_wrap",1220,500,200);

$(".strategy_nav>a").on("mouseenter",function(){
    $(this).addClass("active").siblings(".active").removeClass("active");
    //console.log($(this).index(".strategy_nav>a"));
    $(".list,.more").eq($(this).index(".strategy_nav>a")).addClass("show").siblings(".show").removeClass("show");
});

function showDate(){
    $(".icon7>span").eq(parseInt(new Date().getDay())).css("display","inline");
}
var showDate=new showDate();

//news_nav跳转
$(".news_nav a").on("click",function(){
    var type=$(this).data().type;
    sessionStorage.setItem("type",type);
    window.open("information.html","_blank");
});

//轮播图跳转
$(".news_banner").on("click","a",function(e){
    e.preventDefault();
    var href=$(this).attr("href");
    var nid=$(this).data().nid;
    console.log(href,nid);
    sessionStorage.setItem("href",href);
    sessionStorage.setItem("nid",nid);
    window.open("news.html","_blank");
});