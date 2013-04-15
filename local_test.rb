#encoding: utf-8
require 'open-uri'

cmd = "{query}"

rss_urls = {
:d => "http://www.bilibili.tv/rss-1.xml",       # 动画
:m => "http://www.bilibili.tv/rss-3.xml",       # 音乐
:g => "http://www.bilibili.tv/rss-4.xml",       # 游戏
:e => "http://www.bilibili.tv/rss-5.xml",       # 娱乐
:v => "http://www.bilibili.tv/rss-11.xml",      # 专辑
:b => "http://www.bilibili.tv/rss-13.xml"       # 新番
}

rss_url = rss_urls[cmd.to_sym]

# remote = open(URI::encode(rss_url), 'User-Agent' => 'Alfred2')
# data = remote.read
# remote.close
# 
# puts data


data = <<TEXT
<?xml version="1.0" encoding="utf-8" ?> 
<rss version="2.0"> 
<channel> 
<title>动画</title> 
<link>http://www.bilibili.tv/video/douga.html</link> 
<description>动画</description> 
<language>zh-cn</language> 
<generator><![CDATA[]]></generator> 
<webmaster>verify@mail.bilibili.tv</webmaster> 
<item> 
    <title><![CDATA[那些年我们一起追过的军火]]></title> 
    <link>http://www.bilibili.tv/video/av524028/</link> 
    <description><![CDATA[自制 纪念，军火女王（坑爹的渣浪又二压我视频。。。）]]></description> 
    <pubDate>Wed, 03 Apr 2013 22:36:46 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>就这个人</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【京阿尼】境界的彼方 宣传CM【720P】]]></title> 
    <link>http://www.bilibili.tv/video/av524006/</link> 
    <description><![CDATA[京都新作动画 CM画质提升 -。- 我要看 水泳部 啊]]></description> 
    <pubDate>Wed, 03 Apr 2013 22:22:13 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>小清水亜美</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[Bad apple 【真·记事本】]]></title> 
    <link>http://www.bilibili.tv/video/av523984/</link> 
    <description><![CDATA[二次创作 同样是记事本，为什么我的这么差 文本：http://pan.baidu.com/share/link?shareid=330780uk=3140753274]]></description> 
    <pubDate>Wed, 03 Apr 2013 22:05:12 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>kkke</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【尊礼】青与赤的交集（清明祭）]]></title> 
    <link>http://www.bilibili.tv/video/av523973/</link> 
    <description><![CDATA[自制 重新把以前做过的一个视频修改了一下，加了一点遮罩效果，希望能有双王党来为这段视频补上一个故事，UP主文笔拙计，毕竟是纯音乐的BGM，有文字渲染总是好一点，也算是清明祭奠一下尊哥]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:54:52 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>叶落独醉</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【MAD】东方龙珠传【映画公開】]]></title> 
    <link>http://www.bilibili.tv/video/av523969/</link> 
    <description><![CDATA[sm20511149 神了。。东方×龙珠。]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:53:44 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>火鸟台风</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【水墨小动画】努力吧！皇子殿下[壹]]]></title> 
    <link>http://www.bilibili.tv/video/av523966/</link> 
    <description><![CDATA[自制 乱入原著的水墨风漫画《努力吧！皇子殿下》改编而成，耗（tuo）时（yan）三个多月制作而成。]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:50:28 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>Moy_F</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【刀剑】境界线上的SAO]]></title> 
    <link>http://www.bilibili.tv/video/av523956/</link> 
    <description><![CDATA[sm20514245 ED糅合，部分手绘。（無料）]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:43:49 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>一字文</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【東方手書】寻找鵺的姐姐 第7话]]></title> 
    <link>http://www.bilibili.tv/video/av523951/</link> 
    <description><![CDATA[nm20501192 前篇：av517096 早苗回家 灭两神。。。]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:36:36 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>ttbt</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【论BGM】几分钟让你误解DEATH NOTE【第三弹】]]></title> 
    <link>http://www.bilibili.tv/video/av523929/</link> 
    <description><![CDATA[油管 我看了十分感动，又来造福社会了，这次画质不错 http://www.youtube.com/watch?v=UZuwOucxqso 上传者：xdoodlelover]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:24:01 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>假发家的银喵</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【MAD】秒速五㎝X爱转角.很好听的]]></title> 
    <link>http://www.bilibili.tv/video/av523911/</link> 
    <description><![CDATA[自制 第一次做滴。是处女座的说。吼吼。唯爱秒五...喜欢里面的 花苗。 会声会影X4弄的。其他的软件表示不会。很多地方都不怎么好...望 指教下。真心的。 然后。- -。支持下。嘻嘻]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:06:59 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>梦呓时吃棒棒糖</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【黑塔利亚/APH】v i o c e s【手描】]]></title> 
    <link>http://www.bilibili.tv/video/av523906/</link> 
    <description><![CDATA[sm12193150 前作←花冠 如果撞车了请通知一声、麻烦了m（__ __）m【以上。]]></description> 
    <pubDate>Wed, 03 Apr 2013 21:00:23 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>JY梨</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【MAD】【新手自制】一方通行X没有名字的怪物]]></title> 
    <link>http://www.bilibili.tv/video/av523897/</link> 
    <description><![CDATA[新手自制，压力比较大……当时听到这曲子的时候就觉得和一方好配……于是就做出来了……作案工具会声会影，求前辈指教QAQ]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:50:47 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>織田未央</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[龙珠z神与神 hero希望之歌 伪MAD by 龙论]]></title> 
    <link>http://www.bilibili.tv/video/av523889/</link> 
    <description><![CDATA[by 中国龙珠论坛]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:46:45 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>列特</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【黑篮手书】主要成员 children record]]></title> 
    <link>http://www.bilibili.tv/video/av523883/</link> 
    <description><![CDATA[sm20512889 算不上全员，但主要人物都出现了，良作【废话，不良搬个什么劲...反正也没人看简介的吧╮(╯_╰)╭]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:39:25 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>虾酱_t</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【複合MAD】愉悦]]></title> 
    <link>http://www.bilibili.tv/video/av523862/</link> 
    <description><![CDATA[sm20512295 作者：hibito]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:24:44 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>小透明BAKA</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[‖恋咏樱 风吹雪‖ 秒五梦一生]]></title> 
    <link>http://www.bilibili.tv/video/av523854/</link> 
    <description><![CDATA[1080后黑，和风、快节奏，自制 恋咏樱 风吹雪，相信大家都听过，但大多都没歌词向、 歌词那叫一个美哟 ，好想好想让更多的人看到 听到。感觉歌本身和秒五纯天燃同步。。。 然后我就坏掉了TOT 0.0？ 他们都说后面是亮点...]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:21:37 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>傲娇控＞。＜</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【燃】BTOOOM! 惊爆游戏 Take Down]]></title> 
    <link>http://www.bilibili.tv/video/av523841/</link> 
    <description><![CDATA[youtube 作者K4nonProject进度条傲娇注意~建议缓冲完观看~BGM视频最后有写~封面为BD卷一BK~]]></description> 
    <pubDate>Wed, 03 Apr 2013 20:08:32 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>总受小I</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【优秀动画短片】 ELECTROSHOCK.电击超人(2011)]]></title> 
    <link>http://www.bilibili.tv/video/av523816/</link> 
    <description><![CDATA[新浪 主人公BUCK因为偶然一次电击而获得了让时间凝固的超能力，为了他心中女神Mady的一句“I need a hero.”每天都穿着超人制服去试图拯救世界，但是他的笨手笨脚却让他离hero越来越远。@V电影]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:50:47 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>问路於盲</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[如何用一首歌，毁掉HUNTERxHUNTER]]></title> 
    <link>http://www.bilibili.tv/video/av523815/</link> 
    <description><![CDATA[自制 如何用一首歌，毁掉HUNTERxHUNTER]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:50:07 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>背影妖娆的猫</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【国产动画】我的小世界（中传）[2013金考拉电影节最佳短片导演]]]></title> 
    <link>http://www.bilibili.tv/video/av523814/</link> 
    <description><![CDATA[新浪 手法非常赞~ 二维加定格再加二维手绘~整体也非常流畅~]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:48:07 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>问路於盲</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【搬运】《我女友与青梅竹马的惨烈修罗场》260分钟画出冬海愛衣]]></title> 
    <link>http://www.bilibili.tv/video/av523807/</link> 
    <description><![CDATA[youtube,godees 俺の彼女と幼馴染が修羅場すぎる！ 260分で冬海愛衣描いてみた，http://www.youtube.com/watch?v=jrTKIj2GtFw]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:43:58 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>Animer</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【国产动画】糖知道（北影）]]></title> 
    <link>http://www.bilibili.tv/video/av523805/</link> 
    <description><![CDATA[新浪 阿生来到了一个陌生的地方，面对危险的环境和手中神秘的棒棒糖，他能不能回到现实世界，也许，只有糖知道……]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:39:11 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>问路於盲</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[教你如何2分钟将朋也人渣化]]></title> 
    <link>http://www.bilibili.tv/video/av523798/</link> 
    <description><![CDATA[自压 BGM:tomorrow never]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:31:16 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>o百撕不得骑姐o</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[夜降萃梦乡]]></title> 
    <link>http://www.bilibili.tv/video/av523774/</link> 
    <description><![CDATA[转自优酷 第一次搞 头都大了]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:10:07 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>二次元甚么的</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【治愈向】日在樱花庄]]></title> 
    <link>http://www.bilibili.tv/video/av523764/</link> 
    <description><![CDATA[自制 新人渣作 渣剪辑~~误解向~~壮哉我大FFFFFFFFF~~~]]></description> 
    <pubDate>Wed, 03 Apr 2013 19:03:04 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>May酱</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【自新】来自新世界 AMV Past...]]></title> 
    <link>http://www.bilibili.tv/video/av523757/</link> 
    <description><![CDATA[youtube 第一次看到这种风格的自新AMV,终于有画质高的了~作者Fuyu Aru,简介全法语就不粘过来了~BGM视频最后都有写~ 自新真的很好看o(≧v≦)o~~ 封面id=34520010]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:58:20 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>总受小I</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【MAD】钢炼FA-What I have become-SgenL]]></title> 
    <link>http://www.bilibili.tv/video/av523754/</link> 
    <description><![CDATA[原创，欧美风MAD练手作。M组新人处女作。]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:55:42 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>SgenL</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[[MAD] IP.IC [秋风AKIKAZE][第五届SKM情人基]]]></title> 
    <link>http://www.bilibili.tv/video/av523751/</link> 
    <description><![CDATA[SKM第五届情人基参赛作品 ..好吧..事实上我只是来填充一下我少得可怜的投稿列表而已]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:53:11 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>秋风AKIKAZE</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【日和】X【PSYCHO-PASS】潜在犯伝説]]></title> 
    <link>http://www.bilibili.tv/video/av523746/</link> 
    <description><![CDATA[sm19971330 ]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:47:16 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>mayo</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[时光飞逝，青春飞扬，弹指一年，仍恋冰菓]]></title> 
    <link>http://www.bilibili.tv/video/av523741/</link> 
    <description><![CDATA[自制 去年四月，我们相遇冰菓，如今时隔一年我仍怀着对冰菓的喜爱做了这个视频，我不认为我和那些大神比起来我做的视频多么完美，但我仍希望各位能赏个脸谢谢！]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:41:24 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>碧色星空</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[怀念老爹：白胡子之歌（二周目）]]></title> 
    <link>http://www.bilibili.tv/video/av523740/</link> 
    <description><![CDATA[优酷 怀念我们敬爱的老爹，上次发的那个画质有点渣，所以压了个高质的]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:38:42 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>霂色</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【海贼王】只要我们还有信念]]></title> 
    <link>http://www.bilibili.tv/video/av523734/</link> 
    <description><![CDATA[youtube editor：Roron0aPNS BGM：Kutless - What faith can do 信念究竟是什么呢 希望大家可以细细品味歌词，着实激励人心。]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:31:20 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>宿命传说</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【氷菓】~蔷薇色的纯爱物语~【MAD】]]></title> 
    <link>http://www.bilibili.tv/video/av523730/</link> 
    <description><![CDATA[氷菓で純愛ラブストーリー ～もし灰色の学生生活でなかったら～ sm18943413 冰果MAD BGM：ガーネット 下载 : pan.baidu.com/share/link?shareid=359255uk=1277734151]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:28:06 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>lev-gc</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【東方】魔理・爱丽・卡农]]></title> 
    <link>http://www.bilibili.tv/video/av523712/</link> 
    <description><![CDATA[sm2871324 魔爱小手书一枚 作者:花梨ちゃん 曲:カレ・カノ・カノン - 中村豆千代 p.s.画风熟悉说明你曲奇看多了]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:13:39 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>烤夜雀</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【Psycho Pass亲子向】一半一半 征陆智己&amp;amp;宜野座伸元]]></title> 
    <link>http://www.bilibili.tv/video/av523697/</link> 
    <description><![CDATA[自制 重投 传个渣浪画质音质都毁了……总之是因为对大叔和警花的爱而赶出来的东西，在清明节来临之际聊表敬意吧。BGM为洛天依《一半一半》，本家请走→av482844 感谢原PO主授权。渣技术，初投稿，请多指教。]]></description> 
    <pubDate>Wed, 03 Apr 2013 18:00:50 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>寂羽</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【東方手書】打工巫女灵梦8话]]></title> 
    <link>http://www.bilibili.tv/video/av523680/</link> 
    <description><![CDATA[sm20213494 气氛好奇怪。。欢迎野生字幕君。联动7话av518962]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:40:18 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>八云·泽</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【APH/黑塔利亚】法叔的胸部占卜之歌【手书】]]></title> 
    <link>http://www.bilibili.tv/video/av523672/</link> 
    <description><![CDATA[sm6758825 这首歌让法叔来唱毫无违和感XD法叔的胸部占卜讲座~~节操什么的已经完全没有了XD对话部分日语无能不过应该都能猜得到是什么内容吧]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:29:55 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>QB推销员</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【圣诞Miku】rolling girl【ProjectDIVA-extend】]]></title> 
    <link>http://www.bilibili.tv/video/av523670/</link> 
    <description><![CDATA[sm20406569 本家SAMA是sm9714351/av2386 B站是911大大投的好怀念……你没有看错 这是PROJECT DIVA的PV NICO原投稿者依旧是Millicent壕壕]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:28:52 +0000</pubDate> 
    <category>MMD·3D</category> 
    <author>浅音Anka</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【東方四格】妹抖的每天]]></title> 
    <link>http://www.bilibili.tv/video/av523667/</link> 
    <description><![CDATA[sm7288664 小故事一样，是视频作者得到原作者的许可制作的。虽然是坟不过值得分享一下w]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:27:44 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>八云·泽</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【音MAD】Home-Town Marisa]]></title> 
    <link>http://www.bilibili.tv/video/av523662/</link> 
    <description><![CDATA[sm20324318 沒有淫夢的世界真美好～ ]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:20:26 +0000</pubDate> 
    <category>二次元鬼畜</category> 
    <author>——————</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【高同步】炮姐还能再战500年]]></title> 
    <link>http://www.bilibili.tv/video/av523659/</link> 
    <description><![CDATA[自制 第2次做MAD，总算赶在炮姐第2季开播前做出来了，做了相当长时间，为了画质废了好大劲啊，技术上相对于第1个MAD提高了不少，继续努力~ 做MAD！ 应该没人求BGM了吧 = =~！]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:16:15 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>轨迹o</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【APH/黑塔利亚】【MEMORIA】一定是我打开的方式不对]]></title> 
    <link>http://www.bilibili.tv/video/av523654/</link> 
    <description><![CDATA[原创 拖了好久然后这货终于做出来了……（望天） 背景音乐是F/Z的ED1《MEMORIA》 本来想加字幕但是怎么加都觉得不合适于是求野生字幕君;w; UP主本着一颗治愈的心希望大家也能被治愈，以上（笑]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:08:45 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>Syn_纯洁悖论</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[你所不知道的脑浆炸裂女孩]]></title> 
    <link>http://www.bilibili.tv/video/av523653/</link> 
    <description><![CDATA[二次创作 啊啊，新人初投稿，没有画面真是对不起OTZ要资源的话请回复]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:08:11 +0000</pubDate> 
    <category>二次元鬼畜</category> 
    <author>作业子参上</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【DRRR腐向】ID识别符号the World of Gimmicks- 【战争组帝人受】]]></title> 
    <link>http://www.bilibili.tv/video/av523648/</link> 
    <description><![CDATA[sm14539430 少见的迷幻战争组，完成度很高的手书，色彩和画风好棒。同作者手书av521692]]></description> 
    <pubDate>Wed, 03 Apr 2013 17:04:13 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>不沉之月菲</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【兵部京介】【安兵】你与我相似]]></title> 
    <link>http://www.bilibili.tv/video/av523637/</link> 
    <description><![CDATA[自制 这其实是一只早产的生贺...【忘打tag了orz】它的前身是一只难产的完结纪念...【希望少佐能幸福...只是这样而已【从来没觉得自己有过逻辑和节奏感这种东西，可能只是喜欢某些歌词和意境吧...日语真心不会...有错误的地方还请见谅了 BGM:君は仆に似ている （你与我相似）， 如果...请自由地戳...http://vdisk.weibo.com/s/w7gWp]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:55:33 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>still球球</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【电磁炮版DRRR】某池袋的M（帝人）争夺战【op风腐向】]]></title> 
    <link>http://www.bilibili.tv/video/av523628/</link> 
    <description><![CDATA[sm12305151 打滚求第二季首领觉醒，求青叶啊]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:46:08 +0000</pubDate> 
    <category>MAD·AMV</category> 
    <author>不沉之月菲</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[【东方MMD】红魔馆四人组的[BREEZE]]]></title> 
    <link>http://www.bilibili.tv/video/av523623/</link> 
    <description><![CDATA[sm20510620 最近红萌馆快变成泳衣福利馆了。。。话说YO梦你是在打工赚UUZ的伙食费么？]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:39:44 +0000</pubDate> 
    <category>MMD·3D</category> 
    <author>白河琴美</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[六只MIKU一起高喊“不”你萌哪个]]></title> 
    <link>http://www.bilibili.tv/video/av523622/</link> 
    <description><![CDATA[sm15841269 - 【ミクさんいっぱい】がひたすらに「ぬ」を連呼【詰合せPV】。这个歌名翻译有没有更好的]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:38:45 +0000</pubDate> 
    <category>MMD·3D</category> 
    <author>COCOK7</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[战勇二期 特报PV]]></title> 
    <link>http://www.bilibili.tv/video/av523618/</link> 
    <description><![CDATA[转载自178 动画「战勇。」七月第二期特报PV 好燃的感觉……]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:29:38 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>小板栗威化</author> 
    <comments>哔哩哔哩</comments> 
</item> 
<item> 
    <title><![CDATA[战勇OVA 执事长之旅 试看]]></title> 
    <link>http://www.bilibili.tv/video/av523615/</link> 
    <description><![CDATA[转载自微博 《战勇。》BD＆DVD中的OVA《执事长之旅 其一》试看 这里纯搬运，汉化及字幕添加感谢小五桑]]></description> 
    <pubDate>Wed, 03 Apr 2013 16:27:10 +0000</pubDate> 
    <category>期刊·其他</category> 
    <author>小板栗威化</author> 
    <comments>哔哩哔哩</comments> 
</item> 

</channel> 
</rss> 
TEXT

class ItemsXMLGenerator
  
  
  def initialize
    @inner_items_str = ""
  end
  
  def addItem(params = {})
    uid = params[:uid]
    arg = params[:arg]
    title = params[:title]
    subtitle = params[:subtitle]
    
    itemStr = "\t<item uid=\"#{uid}\" arg=\"#{arg}\">\n\
    \t\t<title>#{title}</title>\n\
    \t\t<subtitle>#{subtitle}</subtitle>\n\
    \t</item>\n"
              
              @inner_items_str << itemStr

  end
  
  def to_s
    "<?xml version=\"1.0\"?>\n<items>\n#{@inner_items_str}</items>"
  end
  
end

item_exp = /<item>(.*?)<\/item>/m
title_exp = /<title><!\[CDATA\[(.*?)\]\]><\/title>/
link_exp = /<link>(.*?)<\/link>/
desc_exp = /<description><!\[CDATA\[(.*?)\]\]><\/description>/
date_exp = /<pubDate>(.*?)<\/pubDate>/
cate_exp = /<category>(.*?)<\/category>/
auth_exp = /<author>(.*?)<\/author>/


xmlGen = ItemsXMLGenerator.new

data.scan(item_exp) do |item|
  item_str = item.to_s
  item_str =~ title_exp
  title = $1
  item_str =~ link_exp
  link = $1
  item_str =~ desc_exp
  subtitle = $1
  
  params = {}
  params[:uid] = title
  params[:arg] = link
  params[:title] = title
  params[:subtitle] = rss_url
  
  xmlGen.addItem(params)
  
  # puts title
  # puts link
end


puts xmlGen

