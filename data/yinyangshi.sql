SET NAMES UTF8;
DROP DATABASE IF EXISTS yinyangshi;
CREATE DATABASE yinyangshi CHARSET=UTF8;
USE yinyangshi;
CREATE TABLE yys_carousel(
cid INT PRIMARY KEY AUTO_INCREMENT,
src VARCHAR(64),
title VARCHAR(64),
url VARCHAR(64),
nid INT
);
INSERT INTO yys_carousel VALUES
(NULL,'images/banner/manhua.jpg','漫画大赛','include/2016111502.html',12),
(NULL,'images/banner/gequ.png','歌曲大赛','include/2016110501.html',15),
(NULL,'images/banner/tianji.jpg','天机谱','include/20160902.html',22),
(NULL,'images/banner/gonggao.jpg','公平运营公告','include/20160901.html',21);

CREATE TABLE news(
nid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(64),
url VARCHAR(128),
date BIGINT,
type INT
);
#新闻1，公告2，活动3，媒体4
INSERT INTO news VALUES
(NULL,'风神之佑 鬼之假面《阴阳师》新式神解析','include/2016112201.html',1479775555266,1),
(NULL,'和风雅乐绕梁《阴阳师》同人歌曲大赛火热进行中', 'include/2016111801.html',1479427200000,1),
(NULL,'阴界之门 妖气封印《阴阳师》推新玩法新副本', 'include/2016111701.html',1479340800000,1),
(NULL,'好友切磋 协同斗技《阴阳师》新资料片社交玩法大解析','include/2016112202.html', 1479775555266,1),
(NULL,'“魑魅之卷”漫画大赛启动《阴阳师》再出同人大招', 'include/2016111501.html',1479168000000,1),
(NULL,'《阴阳师》手游iOS安装包更新公告', 'include/2016111601.html',1479254400000,2),
(NULL,'关于登陆异常的解决处理', 'include/2016111201.html',1478908800000,2),
(NULL,'网易双平台新区【缥缈之旅】开服公告', 'include/2016111101.html',1478822400000,2),
(NULL,'11月11日服务器维护公告', 'include/2016111001.html',1478736000000,2),
(NULL,'魑魅之卷新资料片服开启公告','include/2016111002.html', 1478736000000,2),
(NULL,'冲上云霄！斗鱼《阴阳师》主播斗技大赛', 'include/2016111802.html',1479427200000,3),
(NULL,'“魑魅之卷”有奖漫画征集大赛火热进行中','include/2016111502.html', 1479168000000,3),
(NULL,'阴阳师携手易天谕开展捏脸大赛，活动正在进行时！','include/2016111102.html', 1478822400000,3),
(NULL,'魑魅之卷资料片活动情报大放送','include/2016110901.html', 1478649600000,3),
(NULL,'『和风雅乐』阴阳师同人歌曲大赛', 'include/2016110501.html',1478304000000,3),
(NULL,'【18183】阴阳师雨火流阵容：雨女和凤凰火无敌', 'include/2016111401.html',1478304000000,4),
(NULL,'【17173】阴阳师一目连技能介绍 一目连值不值培养', 'include/2016111402.html',1479081600000,4),
(NULL,'【17173】阴阳师般若技能介绍 般若值不值得培养','include/2016111403.html',1479081600000,4),
(NULL,'【游民星空】阴阳师阴界之门平民阵容搭配推荐','include/2016111404.html',1479081600000,4),
(NULL,'【18183】阴阳师般若式神图鉴 般若培养攻略全面分析','include/2016111405.html',1479081600000,4),
(NULL,'《阴阳师》公平运营申明','include/20160901.html',1472688000000,2),
(NULL,'阴阳寮有奖互助计划 进阶向攻略征集','include/20160902.html',1472774400000,2);

CREATE TABLE gonglue(
gid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(64),
url VARCHAR(128),
date BIGINT,
author varchar(32),
type INT
);
#新手1，御魂2，式神3，斗技4，玩法5
INSERT INTO gonglue VALUES
(NULL,'判官的实用性、御魂搭配及竞技阵容详解','javascript:void(0)',1480032000000,'醉笑陪君',3),
(NULL,'般若深度探究 御魂及特性','javascript:void(0)',1480032000000,'李心悦悦悦',3),
(NULL,'阴阳师新手迅速脱坑宝典','javascript:void(0)',1480032000000,'国师大人',1),
(NULL,'吸血姬残血反杀的终极奥义！','javascript:void(0)',1480032000000,'阿爸再爱我一次',3),
(NULL,'阴阳师协同斗技怎么玩 斗技2V2攻略介绍！','javascript:void(0)',1480032000000,'SAMA',4),
(NULL,'车神带飙车 阴阳师石距副本BOSS详解','javascript:void(0)',1480032000000,'SAMA',5),
(NULL,'感受被凤凰火支配的恐惧吧！','javascript:void(0)',1480032000000,'SAMA',3),
(NULL,'我还能爬得更高——阴界之门通关解读','javascript:void(0)',1480032000000,'红豆饼',5),
(NULL,'阴阳师新手迅速脱坑宝典','javascript:void(0)',1480032000000,'国师大人',1),
(NULL,'八百比丘尼全面分析','javascript:void(0)',1480032000000,'MoonT',1);

#精选1，绘画2，COS3，视频4，小说5，高手6
CREATE TABLE tongren(
tid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(64),
url VARCHAR(128),
imgurl VARCHAR(128),
type INT
);
INSERT INTO tongren VALUES
(NULL,'不论发生什么事，我都会陪在晴明身边【作者】猫腻腻少校','javascript:void(0)','images/tongren/896e4f13-2497-4b7a-8f2f-317b11a4799a.',1),
(NULL,'【大天狗小鹿男cos】这次相遇，一定会改变一生','javascript:void(0)','images/tongren/a3209ae7-1810-43ae-ab48-99f9e8ab2f21.',1),
(NULL,'一个老梗 大天狗x般若【作者】SU馍','javascript:void(0)','images/tongren/78ce5c82-9ee2-4dd1-a8f2-ea83ce2a5c7b.',1),
(NULL,'荒川X一目连传记【作者】月下十六夜','javascript:void(0)','images/tongren/2c707c65-9b87-4eef-b2f8-c5c1a80f7a3f.',1),
(NULL,'伤害感人 诸事不顺的妖刀姬【作者】-饭团小泡泡-','javascript:void(0)','images/tongren/d68af3c2-1824-4e54-968c-28ad7a5efe15.',1),
(NULL,'完美破先手 套路再深也怕这三招【作者】真十内','javascript:void(0)','images/tongren/c1a8ce84-b804-4503-81a4-93048bf42d5c.',1),
(NULL,'新来的小哥哥 别人家的一目连【作者】AD_skyrim','javascript:void(0)','images/tongren/d510f1bd-8265-4dd7-8ddf-9d090e1bfdee.',1),
(NULL,'鬼使白一觉醒来突然发现自己长了猫耳【作者】Zierland_子斓','javascript:void(0)','images/tongren/6b9bb736-0e6c-41f2-8d05-8f8268a02e57.',1),
(NULL,'一个老梗 大天狗x般若【作者】SU馍','javascript:void(0)','images/tongren/78ce5c82-9ee2-4dd1-a8f2-ea83ce2a5c7b.',2),
(NULL,'荒川X一目连传记【作者】月下十六夜','javascript:void(0)','images/tongren/2c707c65-9b87-4eef-b2f8-c5c1a80f7a3f.',2),
(NULL,'颜控阴阳师患上小鹿依赖症【作者】桀桀-鎏水金鉴','javascript:void(0)','images/tongren/361281a4-fba7-490d-882c-1e98fa2dadd2.',2),
(NULL,'咕咕跟童男童女【作者】-copper-','javascript:void(0)','images/tongren/dd14dcfe-b0dc-4c8f-8e77-f7168b307966.',2),
(NULL,'新来的般若跟着妖狐一起练【作者】流石尸至','javascript:void(0)','images/tongren/b7a1dfb2-1820-4433-9237-baa669148bcd.',2),
(NULL,'狐狸带崽【作者】马戏团的灰猫','javascript:void(0)','images/tongren/57db4c4b-b79a-475d-905a-061d0c5b0c51.',2),
(NULL,'鬼使白一觉醒来突然发现自己长了猫耳【作者】Zierland_子斓','javascript:void(0)','images/tongren/2c707c65-9b87-4eef-b2f8-c5c1a80f7a3f.',2),
(NULL,'没有发现任何宝物【作者】银狐之殇','javascript:void(0)','images/tongren/0f2da396-1d02-4df5-b2e2-08983ec5f9eb.',2),
(NULL,'小蝴蝶【Coser】元气双夏','javascript:void(0)','images/tongren/a008f775-6ffd-4bd8-840b-703431c92d83.',3),
(NULL,'欲在枫叶林中起舞【Coser】雪瞳','javascript:void(0)','images/tongren/dcc2c220-9cd5-4788-b88b-7dda476bba96.',3),
(NULL,'【晴明神乐cos】晴明sama你为什么这么帅！','javascript:void(0)','images/tongren/1a80d585-d7ed-4f3f-9a53-df89da998298.',3),
(NULL,'#茨木天狗cos 万物生灵皆是沧海一粟','javascript:void(0)','images/tongren/71a32b67-ed1c-4244-99db-abfebfab3714.',3),
(NULL,'草与桃 两大美少女！参上！','javascript:void(0)','images/tongren/adf00cab-0d45-4edd-b967-aea8cf705a09.',3),
(NULL,'大天狗【作者】鸠居。','javascript:void(0)','images/tongren/c385524d-2a37-474d-8932-2d45647c29b4.',3),
(NULL,'<b>樱花妖【作者】__Julianne琳</b>','javascript:void(0)','images/tongren/f94eee5a-4207-4c90-89d7-a07f43a723ef.',3),
(NULL,'<b>#鬼使黑x鬼使白【作者】阿舟舟舟酱</b>','javascript:void(0)','images/tongren/738e4b56-fa00-48b8-8eb0-61ea2795a65a.',3),
(NULL,'一目连传【作者】-尘寰未了','javascript:void(0)','images/tongren/6a5b0d94-e7d2-401d-8312-8f25c8b36311.',4),
(NULL,'版本末期巅峰之战【作者】温酒-sama','javascript:void(0)','images/tongren/35f060ed-af57-48e0-88fb-286e03c8b5f6.',4),
(NULL,'SSR几率最高的七种方式【作者】阿日_MOE君','javascript:void(0)','images/tongren/6c9ea98b-0f78-4060-ad84-1e92bbfcf27c.',4),
(NULL,'般若实战【作者】氪金氪金氪','javascript:void(0)','images/tongren/ee9b1e6b-e687-4bf2-8a32-63804d9e87b5.',4),
(NULL,'【阴阳师】向暖解说：新版本式神选择与培养取向【作者】向暖的机智','javascript:void(0)','images/tongren/b42453ca-1bc3-40c2-b311-4623a1e23ef3.',4),
(NULL,'玉冰aki-百鬼阴阳抄【作者】akimotocyb','javascript:void(0)','images/tongren/cb5e636d-3add-4a2b-b3ea-11b1708e3f3e.',4),
(NULL,'一句歌毁式神【作者】棉被团子','javascript:void(0)','images/tongren/4b79379f-dcdd-4dc7-bfe1-9d146442dd6f.',4),
(NULL,'冰冷解说：阴阳师视频攻略22 狗鸟佛后期转型攻略【作者】冰冷之海','javascript:void(0)','images/tongren/7f98d900-5399-453a-9012-af8de63d5007.',4),
(NULL,'<b>哥崽篇之跳跳家族长嫂的位置，小生要定了【作者】冰狐</b>','javascript:void(0)','images/tongren/ea2543f5-8e9b-4611-bcf9-1e34164d474f.',5),
(NULL,'<b>吸血之愿【作者】鹿先知</b>','javascript:void(0)','images/tongren/d021ce15-765b-4071-bd38-1a1d6a73dcb7.',5),
(NULL,'<b>天狗蔽月【作者】鹿先知</b>','javascript:void(0)','images/tongren/a334f004-0f53-4317-b2cf-fc585f809bb4.',5),
(NULL,'<b>姑获之子【作者】鹿先知</b>','javascript:void(0)','images/tongren/de282dd9-24ba-476e-878d-8d4cce6468c0.',5),
(NULL,'<b>寻樱【作者】一条秀一</b>','javascript:void(0)','images/tongren/0f54276d-77e7-4a31-a9c2-5cf40382994c.',5),
(NULL,'<b>冥火【作者】代山歧</b>','javascript:void(0)','images/tongren/9a248d5a-eccd-46f3-b0a2-3ea15a75f7e4.',5),
(NULL,'<b>妖灯【作者】水烟袋</b>','javascript:void(0)','images/tongren/bb22e1bd-aaa6-4da0-8397-e0ccc581b8b1.',5),
(NULL,'<b>小鹿之拥 【作者】鹿先知</b>','javascript:void(0)','images/tongren/fdf602bc-690f-4853-8b17-4f0baf0aa8af.',5),
(NULL,'（漫画攻略）给20级以下萌新看的超可爱攻略','javascript:void(0)','images/tongren/36dd34ab-65d4-48ea-bb2d-e8ea373b44d1.',6),
(NULL,'阴阳师风水学：如何布置辟邪驱魔的最强结界','javascript:void(0)','images/tongren/9fb91676-314d-4c0d-9447-d00248f63d36.',6),
(NULL,'四星草轻松上5000 【作者】幻想之翼-哒哒','javascript:void(0)','images/tongren/1ff820e6-9476-4b5a-a86d-d5628565b7b7.',6),
(NULL,'兵俑攻略 【作者】一玄公子','javascript:void(0)','images/tongren/e7203533-ec29-4eba-8e0c-3d3170f204b7.',6),
(NULL,'御魂基础知识 【作者】阴阳师攻略组','javascript:void(0)','images/tongren/1a6fc5d7-ac3e-4ab2-8a35-ca31a5ed6445.',6),
(NULL,'关于斗技的基础知识 【作者】阴阳师攻略组','javascript:void(0)','images/tongren/18a8178e-4e87-4e4d-846e-b67809b8dad0.',6),
(NULL,'奶妈式神评测小合集 【作者】Yoo酱酱酱','javascript:void(0)','images/tongren/ba7b14b3-fef7-4527-8b9c-a9e320be496a.',6),
(NULL,'六星狗粮培养时间测算 【作者】am05201404','javascript:void(0)','images/tongren/33d837d2-3d78-4683-a6a6-9cd8abb83660.',6);
