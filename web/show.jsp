<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1" />
    <meta name="renderer" content="webkit">
    <title>如美家</title>
    <meta name="keywords" content="如美家" />
    <meta name="description" content="如美家" />
    <link href="/favicon.ico" mce_href="favicon.ico" rel="bookmark" type="image/x-icon" />
    <link href="/favicon.ico" mce_href="favicon.ico" rel="icon" type="image/x-icon" />
    <link href="/favicon.ico" mce_href="favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <meta name="mobile-agent" content="format=html5;url=https://m.sz.centanet.com/zufang/">
    <link rel="alternate" media="only screen and(max-width:640px)" href="https://m.sz.centanet.com/zufang/">
    <script src="https://static.centanet.com/v6p30506/dist/lib/waptransfer.js?url=https://m.sz.centanet.com/zufang/"></script>




    <link href="https://static.centanet.com/v6p30506/dist/css/base.min.css?v201906111" rel="stylesheet" />
    <link href="https://static.centanet.com/v6p30506/dist/css/sidebar.min.css?v201906111" rel="stylesheet" />

    <link href="https://static.centanet.com/v6p30506/dist/css/esflist.min.css?v201906111" rel="stylesheet" />


    <script>
        var webp = !![].map && document.createElement('canvas').toDataURL('image/webp').indexOf('data:image/webp') == 0 ? "?x-oss-process=image/format,webp" : "";
        eval(function (p, a, c, k, e, d) { e = function (c) { return (c < a ? "" : e(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36)) }; if (!''.replace(/^/, String)) { while (c--) d[e(c)] = k[c] || e(c); k = [function (e) { return d[e] }]; e = function () { return '\\w+' }; c = 1; }; while (c--) if (k[c]) p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]); return p; }('3 5="t";3 6=7.1.d(b s("(^| )"+5+"=([^;]*)(;|$)"));a(!6){3 4=b y();4.w(4.u()+2);3 1=5+"="+9()+"; p="+4.k()+"; m=/;";a(n.l.F.d(/f.e/i)){1+=" G=f.e"}7.1=1}8 9(){j\'B\'.D(/[C]/g,8(c){3 r=A.z()*h|0,v=c==\'x\'?r:(r&E|o);j v.q(h)})}', 43, 43, '|cookie||var|expiresDate|cookieName|arr|document|function|uuidv4|if|new||match|com|centanet||16||return|toUTCString|location|path|window|0x8|expires|toString||RegExp|Y190cmFja2lk|getFullYear||setFullYear||Date|random|Math|xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx|xy|replace|0x3|host|domain'.split('|'), 0, {}))
    </script>
    <script src="js/jquery-1.11.1.js"></script>
    <script>
        $(function () {
            $(".sold").click(function () {
                $(this).parents(".house-item").find(".out").css("display","inline-block");
            })
        })

        // window.onload=function () {
        // var soldArr=document.getElementsByClassName("sold")[0];
        // var outArr=document.getElementsByClassName("out")[0];
        //
        //     soldArr.onclick=function () {
        //            outArr.style.display="inline-block";
        //     }
        //
        // }
    </script>
</head>
<body>
<div class="section-wrap section-search visible-desktop" style="background-color: #fff;">
    <div class="section">
        <a href="/" title="如美家"><img src="images/img1/logo.png" width="160px" height="80px"></a>
        <div class="clear"></div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/template" id="suggestListTemplete">
    <ul>
        {{#each @root}}
        <li data-url="{{url}}" data-tag="{{{tag}}}" data-tagcode="{{tagcode}}"> <div class='csearch'><span><b data-tag="{{{tag}}}" data-url="{{url}}">{{{tag}}}</b></span><span>{{{pN2}}}</span><span>{{{pN1}}}</span><label>{{aboutNumStr}}</label></div></li>
        {{/each}}
    </ul>
</script>
<div class="section-wrap section-houselists">
    <div class="section">
        <div class="house-item clearfix" id="house1">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008151025.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180506/092544_1d949751-b855-43b6-959f-e5ac32214c46_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="乐城租房3500元/月" title="乐城租房3500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008151025.html" title="精装两房 全齐家私家电 正地铁口 大社区" target="_blank" class="cBlueB">精装两房 全齐家私家电 正地铁口 大社区</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdssuvyt/" target="_blank" title="乐城租房">乐城</a><span class="line">|</span>
                    <span>2室2厅</span>
                    <span class="line">|</span>
                    <span>51.54平</span>
                </p>
                <p class="house-txt">
                    <span>西南</span><span>高层</span><span>豪装</span><span></span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/henggang/">横岗</a>&nbsp;
                    3号线荷坳站C出口
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)荷坳站312米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">
            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008237599.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190320/114511_a6b55b75-d019-48b4-82d1-a265343aa6ea_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="茵悦之生花园三期租房5000元/月" title="茵悦之生花园三期租房5000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008237599.html" title="茵悦之生 精装三房，带超大入户 南北通透 看房有钥匙" target="_blank" class="cBlueB">茵悦之生 精装三房，带超大入户 南北通透 看房有钥匙</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaabahj/" target="_blank" title="茵悦之生花园三期租房">茵悦之生花园三期</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>89平</span>
                </p>
                <p class="house-txt">
                    <span>西</span><span>低层</span><span>豪装</span><span>2003年</span>
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    布吉街道三联社区松源路1号(中海怡翠山庄北侧)
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>5000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">
            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcb0008099626.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180117/121245_a8002b26-88f1-4309-afc1-6f503313e3b2_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="东方瑞景苑租房2000元/月" title="东方瑞景苑租房2000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcb0008099626.html" title="双地铁口 出行方便 东方瑞景苑 精装一房 看房方便 拎包入住" target="_blank" class="cBlueB">双地铁口 出行方便 东方瑞景苑 精装一房 看房方便</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaabijd/" target="_blank" title="东方瑞景苑租房">东方瑞景苑</a><span class="line">|</span>
                    <span>1室1厅</span>
                    <span class="line">|</span>
                    <span>32.27平</span>
                </p>
                <p class="house-txt">
                    <span>未知</span><span>中层</span><span>精装</span><span>2014年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙平东路（平冈中学对面）
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>距龙岗线(3号线)南联站836米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>2000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcn0008257768.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180320/120100_b5f2efbf-d42a-4690-9cfa-feba4956bd3f_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="远洋新干线租房4300元/月" title="远洋新干线租房4300元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcn0008257768.html" title="南联地铁口豪装大三房，业主我很熟，价格还有很大空间，看房方便" target="_blank" class="cBlueB">南联地铁口豪装大三房，业主我很熟，价格还有很大空间</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaacfca/" target="_blank" title="远洋新干线租房">远洋新干线</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>80平</span>
                </p>
                <p class="house-txt">
                    <span>未知</span><span>中层</span><span>豪装</span><span>2014年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗区龙岗街道
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>距龙岗线(3号线)南联站414米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>4300</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcb0007991567.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20181012/071145_92ab92f4-9895-405f-84e4-557ba5a27875_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="千林山居I区(万科清林径)租房3000元/月" title="千林山居I区(万科清林径)租房3000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcb0007991567.html" title="急降15万&#x2B;价格可谈&#x2B;南向看别墅区&#x2B;视野无遮挡&#x2B;价可谈" target="_blank" class="cBlueB">急降15万+价格可谈+南向看别墅区+视野无遮挡</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjjbge/" target="_blank" title="千林山居I区(万科清林径)租房">千林山居I区(万科清林径)</a><span class="line">|</span>
                    <span>2室2厅</span>
                    <span class="line">|</span>
                    <span>78.95平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>中层</span><span>豪装</span><span>2014年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗龙城街道五联村连心路与朱古石路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlhd0008211832.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20170915/115406_bbff71b9-b394-4915-a727-a28aa7ea6690_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="百仕达东郡租房9500元/月" title="百仕达东郡租房9500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlhd0008211832.html" title="真实出租◥百仕达东郡，西南两房，钥匙在手，随时看房" target="_blank" class="cBlueB">真实出租◥百仕达东郡，西南两房，钥匙在手，随时看房</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaafadd/" target="_blank" title="百仕达东郡租房">百仕达东郡</a><span class="line">|</span>
                    <span>2室2厅</span>
                    <span class="line">|</span>
                    <span>81平</span>
                </p>
                <p class="house-txt">
                    <span>西北</span><span>低层</span><span>豪装</span><span>2004年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/luohu/">罗湖</a>-<a href="/zufang/baishida/">百仕达</a>&nbsp;
                    泰宁路北侧
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距环中线(5号线)太安站514米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>9500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbad0007896808.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190110/080951_09f10e49-87b3-4f4e-99c5-50a8e550f480_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="熙龙湾二期租房15000元/月" title="熙龙湾二期租房15000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbad0007896808.html" title="熙龙湾二期3&#x2B;2房 全齐出租 带拎包入住精装修" target="_blank" class="cBlueB">熙龙湾二期3+2房 全齐出租 带拎包入住精装修</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaabbbj/" target="_blank" title="熙龙湾二期租房">熙龙湾二期</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>113.64平</span>
                </p>
                <p class="house-txt">
                    <span>东南</span><span>中层</span><span>豪装</span><span>2010年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/baoan/">宝安</a>-<a href="/zufang/xinan/">新安</a>&nbsp;
                    宝安中心区甲岸路与海秀路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span><span class='tag_gray'>距罗宝线(1号线)新安站347米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>15000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008020351.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20171117/093311_4c449440-14f8-47b3-9c3f-25f52be68852_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="桂芳园五期租房5000元/月" title="桂芳园五期租房5000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008020351.html" title="（朝西南）舒适三房，干净整洁，家私家电齐全，拎包入住省钱省心" target="_blank" class="cBlueB">（朝西南）舒适三房，干净整洁，家私家电齐全</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjffcb/" target="_blank" title="桂芳园五期租房">桂芳园五期</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>77.78平</span>
                </p>
                <p class="house-txt">
                    <span>西南</span><span>中层</span><span>豪装</span><span>2003年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    龙岗区布吉中翠路与深惠公路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>距龙岗线(3号线)大芬站493米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>5000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbad0008204522.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180814/121537_009ba686-d3d6-419e-ba52-9fb752e1610f_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="壹方玖誉(三期)租房6000元/月" title="壹方玖誉(三期)租房6000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbad0008204522.html" title="壹方玖誉豪华装修三房家私齐三地铁线壹方城" target="_blank" class="cBlueB">壹方玖誉豪华装修三房家私齐三地铁线壹方城</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdsspwow/" target="_blank" title="壹方玖誉(三期)租房">壹方玖誉(三期)</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>95.07平</span>
                </p>
                <p class="house-txt">
                    <span>东北</span><span>中层</span><span>毛坯</span><span>2018年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/baoan/">宝安</a>-<a href="/zufang/xinan/">新安</a>&nbsp;
                    深圳市宝安区新安街道新湖路
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>6000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcn0007866432.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20170903/081632_55da855c-8243-4be4-bbab-526c7b0b83b6_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="中海康城国际租房3200元/月" title="中海康城国际租房3200元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcn0007866432.html" title="中海康城花园，南北通透，空房出租，三房，看房提前电话" target="_blank" class="cBlueB">中海康城花园，南北通透，空房出租，看房提前电话</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaaahia/" target="_blank" title="中海康城国际租房">中海康城国际</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>89.08平</span>
                </p>
                <p class="house-txt">
                    <span>东北</span><span>中层</span><span>豪装</span><span>2009年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗中心城黄阁路转清辉路
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3200</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szftb0008178616.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20181012/041950_b2d03c14-0033-40a6-9432-00d3cd1d856c_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="香蜜湖水榭花都三期租房40000元/月" title="香蜜湖水榭花都三期租房40000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szftb0008178616.html" title="有钥匙！水榭花都三期豪装4房 厅出大阳台 高层看湖景安静" target="_blank" class="cBlueB">有钥匙！水榭花都三期豪装4房 厅出大阳台 高层看湖景</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaaeicd/" target="_blank" title="香蜜湖水榭花都三期租房">香蜜湖水榭花都三期</a><span class="line">|</span>
                    <span>4室2厅</span>
                    <span class="line">|</span>
                    <span>191.38平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>精装</span><span>2002年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/futian/">福田</a>-<a href="/zufang/xiangmihu/">香蜜湖</a>&nbsp;
                    香蜜湖度假村香梅路与红荔西路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>距蛇口线(2号线)香梅北站542米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>40000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008202263.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190403/124359_26d8f694-cd0f-48d1-83e8-bd852b6031cb_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="龙珠花园租房3500元/月" title="龙珠花园租房3500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008202263.html" title="业主诚心放租 小3房 装修不错 朝向好 楼层高 阳光充足" target="_blank" class="cBlueB">业主诚心放租 小3房 装修不错 朝向好 楼层高 阳光充足</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjfibh/" target="_blank" title="龙珠花园租房">龙珠花园</a><span class="line">|</span>
                    <span>2室1厅</span>
                    <span class="line">|</span>
                    <span>51.12平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>豪装</span><span>1997年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    深惠路与龙珠路交汇处，布吉镇南门墩旁
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距环中线(5号线)布吉站542米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0007926413.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190403/124329_db5397d3-74b9-419d-a8be-ab22199d667c_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="龙珠花园租房3800元/月" title="龙珠花园租房3800元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0007926413.html" title="2房出租，家私电器齐全，龙珠60平方，高层，东南向，户型靓" target="_blank" class="cBlueB">2房出租，家私电器齐全，龙珠60平方，户型靓</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjfibh/" target="_blank" title="龙珠花园租房">龙珠花园</a><span class="line">|</span>
                    <span>2室2厅</span>
                    <span class="line">|</span>
                    <span>60平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>豪装</span><span>1997年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    深惠路与龙珠路交汇处，布吉镇南门墩旁
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>距环中线(5号线)布吉站542米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3800</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcb0008186415.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190219/022427_53c43018-3e94-47bd-9306-596a71215d01_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="首创八意府(万科翰邻城)租房6500元/月" title="首创八意府(万科翰邻城)租房6500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                        <i class="manager_label">经理推荐</i>
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcb0008186415.html" title="万科翰邻城，红本在手，6米长阳台朝南看花园" target="_blank" class="cBlueB">万科翰邻城，红本在手，6米长阳台朝南看花园</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaabdcj/" target="_blank" title="首创八意府(万科翰邻城)租房">首创八意府(万科翰邻城)</a><span class="line">|</span>
                    <span>4室2厅</span>
                    <span class="line">|</span>
                    <span>89平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>中层</span><span>豪装</span><span>2011年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗中心城北区
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>6500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szftb0008214682.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180726/101349_584f31da-c144-4157-851d-d5e650be44b0_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="香域中央花园租房25000元/月" title="香域中央花园租房25000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szftb0008214682.html" title="香域中央 豪装四房 南北通透  看公园 位置非常安静拎包入住" target="_blank" class="cBlueB">香域中央 豪装四房 南北通透  看公园 位置非常安静</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaadhdg/" target="_blank" title="香域中央花园租房">香域中央花园</a><span class="line">|</span>
                    <span>4室2厅</span>
                    <span class="line">|</span>
                    <span>175平</span>
                </p>
                <p class="house-txt">
                    <span>南北通</span><span>低层</span><span>豪装</span><span>2005年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/futian/">福田</a>-<a href="/zufang/xiangmihu/">香蜜湖</a>&nbsp;
                    福田香蜜湖农园路与泽田路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span><span class='tag_gray'>距蛇口线(2号线)侨香站216米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>25000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008237507.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20171215/013238_beb1ef96-0446-48b8-8c3d-b0e707ccce04_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="茵悦之生花园二期租房4800元/月" title="茵悦之生花园二期租房4800元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008237507.html" title="茵悦之生 精装三房，带超大入户 南北通透 拎包入住" target="_blank" class="cBlueB">茵悦之生 精装三房，带超大入户 南北通透 拎包入住</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjijcb/" target="_blank" title="茵悦之生花园二期租房">茵悦之生花园二期</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>81.33平</span>
                </p>
                <p class="house-txt">
                    <span>未知</span><span>高层</span><span>简装</span><span>2003年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    布吉布龙公路东布吉镇松源路1号(中海怡翠山庄北侧)
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>4800</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcn0008237726.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190403/122637_c1e0684e-c6d8-4925-acba-026e4f315ca1_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="星河时代花园B区租房5000元/月" title="星河时代花园B区租房5000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcn0008237726.html" title="星河时代诚心出租 精装三房 大运地铁口 龙岗cocoaprk" target="_blank" class="cBlueB">星河时代诚心出租 精装三房 大运地铁口 龙岗cocoaprk</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjcife/" target="_blank" title="星河时代花园B区租房">星河时代花园B区</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>85.73平</span>
                </p>
                <p class="house-txt">
                    <span>东南</span><span>低层</span><span>豪装</span><span>2012年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗区中心城
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)爱联站755米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>5000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008239022.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190512/105859_a2fdbd33-cc50-4944-b4d7-d599e45086d9_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="景园租房4300元/月" title="景园租房4300元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008239022.html" title="景园三居室 户型实用采光好 厨卫全明赠送多 九年制无税" target="_blank" class="cBlueB">景园三居室 户型实用采光好 厨卫全明赠送多 九年制</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdsstsyz/" target="_blank" title="景园租房">景园</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>72平</span>
                </p>
                <p class="house-txt">
                    <span>北</span><span>中层</span><span>简装</span><span>2008年</span>
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    布吉中心北，布龙路与景芬路交接处
                </p>
                <p class="labeltag">

                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>4300</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlhd0007968148.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190620/085451_7e111529-ab23-4625-ad52-c16c4c9a7ef7_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="阳光天地家园租房6800元/月" title="阳光天地家园租房6800元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlhd0007968148.html" title="阳光天地—————有更多房源没照片的等待着你 适合办公" target="_blank" class="cBlueB">阳光天地——有更多房源没照片的等待着你 适合办公</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdssssvz/" target="_blank" title="阳光天地家园租房">阳光天地家园</a><span class="line">|</span>
                    <span>1室1厅</span>
                    <span class="line">|</span>
                    <span>46平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>豪装</span><span>2003年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/luohu/">罗湖</a>-<a href="/zufang/cuizhu/">翠竹</a>&nbsp;
                    田贝四路北
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)田贝站266米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>6800</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlhd0008088591.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190420/084239_532a1bfb-1920-4edb-a128-3abbcf2e07e6_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="金丽豪苑租房4000元/月" title="金丽豪苑租房4000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlhd0008088591.html" title="深中学位房 满2无税 看房方便" target="_blank" class="cBlueB">深中学位房 满2无税 看房方便</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjdihe/" target="_blank" title="金丽豪苑租房">金丽豪苑</a><span class="line">|</span>
                    <span>1室1厅</span>
                    <span class="line">|</span>
                    <span>43平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>精装</span><span>1998年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/luohu/">罗湖</a>-<a href="/zufang/cuizhu/">翠竹</a>&nbsp;
                    翠竹贝丽南路与田贝三路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)田贝站319米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>4000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlhd0008212599.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190329/022839_54299ec4-a05a-4d06-90cb-02cf04ddf240_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="百仕达花园二期租房7500元/月" title="百仕达花园二期租房7500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
                <a class="icons-video" href="/zufang/szlhd0008212599.html" target="_blank"></a>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlhd0008212599.html" title="百仕达二期 朝南两房 位置安静 部分家私可配齐  随时入住" target="_blank" class="cBlueB">百仕达二期 朝南两房 位置安静 部分家私可配齐</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaadjaa/" target="_blank" title="百仕达花园二期租房">百仕达花园二期</a><span class="line">|</span>
                    <span>2室2厅</span>
                    <span class="line">|</span>
                    <span>73.5平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>中层</span><span>豪装</span><span>2000年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/luohu/">罗湖</a>-<a href="/zufang/baishida/">百仕达</a>&nbsp;
                    东晓路南段，罗湖太安路98号
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距西丽线(7号线)太安站435米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>7500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbax0006970566.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20190514/120957_9ce693b1-7c3e-46e3-a6e8-6f6b03bf9724_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="金港华庭租房10000元/月" title="金港华庭租房10000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbax0006970566.html" title="金港华庭豪华装修 沃尔玛 麦当劳 电影院 双地铁1-11号线" target="_blank" class="cBlueB">金港华庭豪华装修 沃尔玛 麦当劳 电影院 双地铁1-11号</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdsssxzw/" target="_blank" title="金港华庭租房">金港华庭</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>119平</span>
                </p>
                <p class="house-txt">
                    <span>南</span><span>高层</span><span>豪装</span><span>2008年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/baoan/">宝安</a>-<a href="/zufang/xixiang/">西乡</a>&nbsp;
                    宝安大道与银田路交界处（西乡客运站正对面）
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距罗宝线(1号线)西乡站712米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>10000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008195160.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180324/024151_bad7aa8d-c425-4dde-99ab-ff1b671440d8_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="桂芳园五期租房7000元/月" title="桂芳园五期租房7000元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008195160.html" title="桂芳园中的别墅 满五唯一 送天台花园 业主诚心卖 看房方便" target="_blank" class="cBlueB">桂芳园中的别墅 满五唯一 送天台花园 业主诚心卖</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdjjffcb/" target="_blank" title="桂芳园五期租房">桂芳园五期</a><span class="line">|</span>
                    <span>5室3厅</span>
                    <span class="line">|</span>
                    <span>148.58平</span>
                </p>
                <p class="house-txt">
                    <span>西南</span><span>高层</span><span>豪装</span><span>2003年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    龙岗区布吉中翠路与深惠公路交汇处
                </p>
                <p class="labeltag">
                    <span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)大芬站493米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>7000</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szlgzxcb0008245777.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20180322/124845_c431df68-b5c4-4001-b40e-e967083681dd_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="海航城租房4500元/月" title="海航城租房4500元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szlgzxcb0008245777.html" title="海航城地铁口 3房2厅精准修朝北 客厅出阳台采光好 交通便利" target="_blank" class="cBlueB">海航城地铁口 3房2厅精准修朝北 客厅出阳台采光好</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaadafg/" target="_blank" title="海航城租房">海航城</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>85.24平</span>
                </p>
                <p class="house-txt">
                    <span>西北</span><span>低层</span><span>豪装</span><span>2016年</span>
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/longgangzhongxincheng/">龙岗中心城</a>&nbsp;
                    龙岗区深惠路与碧新路交汇处东北
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)南联站284米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>4500</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <div class="house-item clearfix">
            <p class="item-photo fl">
                <a href="/zufang/szbjhgph0008250534.html" target="_blank">
                    <img class="lazy" data-original="https://img0sz.centainfo.com/images/20171207/015126_786bce9e-74bd-4024-8666-81e7934756fa_300x210_c.jpg" src="https://static.centanet.com/v6p30506/images/error/220x165_loading.gif?v201906111" alt="中城康桥花园一期租房3300元/月" title="中城康桥花园一期租房3300元/月" style="display: inline-block;">
                </a>
                <span class="top_tip">
                            </span>
            </p>
            <div class="item-info fl">
                <h4 class="house-title">
                    <a href="/zufang/szbjhgph0008250534.html" title="中城康桥花园 地铁口 可灵活租期 实用三房 家私齐全" target="_blank" class="cBlueB">中城康桥花园 地铁口 可灵活租期 实用三房 家私齐全</a>
                    <span class="out" style="display: none;height: 29px;width: 80px;text-align: center;background-color: red;color: #fff;">出租中</span>
                </h4>
                <p class="house-name">
                    <span class="hot_sz"></span>
                    <a href="/xiaoqu/xq-prrdaafeja/" target="_blank" title="中城康桥花园一期租房">中城康桥花园一期</a><span class="line">|</span>
                    <span>3室2厅</span>
                    <span class="line">|</span>
                    <span>78.72平</span>
                </p>
                <p class="house-txt">
                    <span>东南</span><span>高层</span><span>豪装</span><span>2000年</span>整租
                </p>
                <p class="house-txt">
                    <a href="/zufang/longgang/">龙岗</a>-<a href="/zufang/buji/">布吉</a>&nbsp;
                    布吉镇丹竹头村
                </p>
                <p class="labeltag">
                    <span class='tag_yh'></span><span class='tag_gray'>随时可看</span><span class='tag_gray'>距龙岗线(3号线)丹竹头站281米</span>
                </p>
            </div>
            <div class="item-pricearea fr">
                <p class="price-nub cRed tc"><span>3300</span>元/月</p>
                <input type="button" value="发布房源" class="sold"  style="cursor: pointer; height: 36px; width: 200px; text-align: center;margin-top: 10px;background-color: orange;font-size: 23px;border-radius: 5px;">

            </div>
            <div class="clear"></div>
        </div>
        <script type="text/javascript">
            var mapPostData =[{"Lat":22.68218,"Lng":114.2308,"Name":"乐城","Price":"11套","Url":"/xiaoqu/xq-prrdssuvyt/zf/"},{"Lat":22.637406,"Lng":114.116767,"Name":"茵悦之生花园三期","Price":"3套","Url":"/xiaoqu/xq-prrdaabahj/zf/"},{"Lat":22.735386,"Lng":114.275177,"Name":"东方瑞景苑","Price":"15套","Url":"/xiaoqu/xq-prrdaabijd/zf/"},{"Lat":22.725198,"Lng":114.270208,"Name":"远洋新干线","Price":"3套","Url":"/xiaoqu/xq-prrdaacfca/zf/"},{"Lat":22.755794,"Lng":114.23696,"Name":"千林山居I区(万科清林径)","Price":"10套","Url":"/xiaoqu/xq-prrdjjjbge/zf/"},{"Lat":22.575204,"Lng":114.145552,"Name":"百仕达东郡","Price":"25套","Url":"/xiaoqu/xq-prrdaafadd/zf/"},{"Lat":22.552668,"Lng":113.897812,"Name":"熙龙湾二期","Price":"7套","Url":"/xiaoqu/xq-prrdaabbbj/zf/"},{"Lat":22.616931,"Lng":114.147909,"Name":"桂芳园五期","Price":"16套","Url":"/xiaoqu/xq-prrdjjffcb/zf/"},{"Lat":0.0,"Lng":0.0,"Name":"壹方玖誉(三期)","Price":"26套","Url":"/xiaoqu/xq-prrdsspwow/zf/"},{"Lat":22.713282,"Lng":114.213339,"Name":"中海康城国际","Price":"62套","Url":"/xiaoqu/xq-prrdaaahia/zf/"},{"Lat":22.556007,"Lng":114.043622,"Name":"香蜜湖水榭花都三期","Price":"13套","Url":"/xiaoqu/xq-prrdaaeicd/zf/"},{"Lat":22.608978,"Lng":114.132278,"Name":"龙珠花园","Price":"18套","Url":"/xiaoqu/xq-prrdjjfibh/zf/"},{"Lat":22.608978,"Lng":114.132278,"Name":"龙珠花园","Price":"18套","Url":"/xiaoqu/xq-prrdjjfibh/zf/"},{"Lat":22.736664,"Lng":114.235765,"Name":"首创八意府(万科翰邻城)","Price":"9套","Url":"/xiaoqu/xq-prrdaabdcj/zf/"},{"Lat":22.555922,"Lng":114.022938,"Name":"香域中央花园","Price":"25套","Url":"/xiaoqu/xq-prrdaadhdg/zf/"},{"Lat":22.635982,"Lng":114.118029,"Name":"茵悦之生花园二期","Price":"5套","Url":"/xiaoqu/xq-prrdjjijcb/zf/"},{"Lat":22.700451,"Lng":114.234517,"Name":"星河时代花园B区","Price":"18套","Url":"/xiaoqu/xq-prrdjjcife/zf/"},{"Lat":22.626107,"Lng":114.132047,"Name":"景园","Price":"5套","Url":"/xiaoqu/xq-prrdsstsyz/zf/"},{"Lat":22.574019,"Lng":114.133945,"Name":"阳光天地家园","Price":"10套","Url":"/xiaoqu/xq-prrdssssvz/zf/"},{"Lat":22.57175,"Lng":114.134254,"Name":"金丽豪苑","Price":"15套","Url":"/xiaoqu/xq-prrdjjdihe/zf/"},{"Lat":22.579818,"Lng":114.139285,"Name":"百仕达花园二期","Price":"21套","Url":"/xiaoqu/xq-prrdaadjaa/zf/"},{"Lat":22.588433,"Lng":113.867839,"Name":"金港华庭","Price":"10套","Url":"/xiaoqu/xq-prrdsssxzw/zf/"},{"Lat":22.616931,"Lng":114.147909,"Name":"桂芳园五期","Price":"16套","Url":"/xiaoqu/xq-prrdjjffcb/zf/"},{"Lat":22.729927,"Lng":114.274548,"Name":"海航城","Price":"13套","Url":"/xiaoqu/xq-prrdaadafg/zf/"},{"Lat":22.626902,"Lng":114.152136,"Name":"中城康桥花园一期","Price":"5套","Url":"/xiaoqu/xq-prrdaafeja/zf/"}]
        </script>
    </div>
</div>
<div class="mappopcont" id="mapDialog" style="display:none;width:815px;">
    <div class="secondhandpop_top">地图显示</div>
    <div class="secondhandpop_mid">
        <div class="mapboxcont">
            <div id="map" style="width:815px;height:500px;"></div>
        </div>
    </div>
    <span class="js_nclose popupclose"></span>
</div>


<div class="popupbg"></div>
<script src="https://static.centanet.com/v6p30506/dist/lib/jquery.js?v201906111"></script>
<script src="https://static.centanet.com/v6p30506/dist/lib/handlebars.min.js?v201906111"></script>
<script>
    CNTGLOBAL = {
        cityCode:"0755",
        appName:"centanet.com",
        appDownLoad: "/app/download/",
        imageError250x190: "https://static.centanet.com/v6p30506/images/error/250x190_error.jpg?v201906111",
        imageErrror800x600:"https://static.centanet.com/v6p30506/images/error/800x600_error.jpg?v201906111",
        imageErrror660x460:"https://static.centanet.com/v6p30506/images/error/660x460_error.jpg?v201906111",
        imageErrror750x500:"https://static.centanet.com/v6p30506/images/error/750x500_error.jpg?v201906111",
        imageError100x100:"https://static.centanet.com/v6p30506/images/error/100x100_error.jpg?v201906111",
        imageUser210x315: "https://static.centanet.com/v6p30506/images/error/210x315_user.jpg?v201906111",
        imageLoad660x480:"https://static.centanet.com/v6p30506/images/error/660x480_loading.gif?v201906111",
        imageLoad20x20:"https://static.centanet.com/v6p30506/images/error/20x20_loading.gif?v201906111",
        imageNone:"https://static.centanet.com/v6p30506/images/error/none.png?v201906111",
        version: "v201906111",
        staticServer:"https://static.centanet.com/v6p30506/",
        adMediaId:"34"
    };
</script>
<script type="text/template" id="userTemplate">
    <div class="login-info">
        {{#if islogin}}
        <a class="first" data-userid="{{userId}}" href="//passport.centanet.com/care/ershoufang/?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429"><i class="user-ico"></i>{{phone}}</a> <a href="/cntapi/logout/?r=93441668" rel="nofollow">退出</a>
        {{else}}
        <a class="first" href="//passport.centanet.com/login?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429"><i class="user-ico"></i>我的中原</a>
        {{/if}}
        <div class="login_tip" style="display: none;">
            <div class="mui-mbar-arr">◆</div>
            <a href="//passport.centanet.com/login?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429" style="display:{{#if phone}}none{{else}}block{{/if}}" class="yellow_btn">登录</a>
            <a href="//passport.centanet.com/entrust?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429">我的房源</a>
            <a href="//passport.centanet.com/searchhistory?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429">我的意向</a>
            <a href="//passport.centanet.com/care/ershoufang/?reurl=http://sz.centanet.com/zufang/?sem=baidu&amp;hmpl=BSPYMHJ93011429">我的关注</a>
        </div>
    </div>
</script>

<script src="//api.map.baidu.com/api?v=2.0&ak=fO3poTFwCWyEoFONHcdjgL8DvDg7x2Gx"></script>


<script type="text/javascript">
    var pageConfig = {
        postIds:" 4cdbbe15-4dd3-c83c-2cc4-08d701504428,006e240a-6ae0-c737-62cb-08d705239171,0b8d5ffd-d6b8-cdde-df1c-08d70048f800,8dbe4762-f9a1-c6f1-a971-08d705fca002,6a7688f3-d45c-ca6a-9841-08d6fb91ada1,c2de6cd2-39fc-cefa-e0f9-08d7041745c1,052dd605-ab78-ce04-0629-08d6f7dd9177,c8c11239-7160-c506-3f05-08d6fcfe6ba0,71c5b51f-6505-c3b3-a9c2-08d703a5e4ae,d3b1d232-c9fe-c941-d217-08d6f6b28e56,5aac0fe2-d6a7-ca45-2ede-08d7028eb4ff,3ba80c3f-c387-c11f-f46c-08d70391fcbd,6c8de9ac-8fdd-c3ba-96c0-08d6f9163912,94f0a28a-7953-c064-d131-08d702dd46c5,bd866a2d-228a-c3b8-f689-08d70429d058,80a6217d-7747-c76d-ec19-08d70522d611,4a8ac2ef-cc5b-cd1c-d588-08d70524e92e,c0851a51-6dab-c785-7bea-08d7052ef8c0,58a21325-0f31-c831-453c-08d6faae327e,a494017c-afce-c4ab-52f9-08d6ffba2424,423ba86d-0b6b-c29c-b4ba-08d70419b3f7,d6b959d0-972c-cee0-1700-08d6d847df45,0062190c-d39f-c22a-1359-08d703526f21,6c4261d6-4459-c04b-edac-08d705a4f41e,6dfd1d9c-87e0-c6f3-4b9a-08d705be9614",
        source: "zufang",
        screenType:"zufang"
    };
</script>



<script src="https://static.centanet.com/v6p30506/dist/manifest.js?v201906111"></script>
<script src="https://static.centanet.com/v6p30506/dist/centanet-commons.js?v201906111"></script>

<script src="https://static.centanet.com/v6p30506/dist/view/ershoufang/list.js?v201906111"></script>



<script src="//talk.centanet.com/v5p2/chat_v6/js/chat.js?v201906111" async defer></script>

<script type="text/javascript">

    var _hmt = _hmt || [];
    var _paq = _paq || [];
    var pkBaseURL  = "//sznewpiwik.centanet.com/stat/";
    (function(){
        /* 百度统计代码 */
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?5ba699e44b8a99227ac7a04f91a66196";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);

        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
        /*piwik*/
        var piwikScript = window["document"]["createElement"]("script");
        piwikScript["type"] = "text/javascript";
        piwikScript["charset"] = "utf-8";
        piwikScript["defer"] = "defer";
        piwikScript["onload"] = function(){
            try {
                var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 41);
                piwikTracker.trackPageView();piwikTracker.enableLinkTracking();
            } catch( err ) {}
        };
        piwikScript["src"] = pkBaseURL + "piwik.js";
        var head = document.head || document.getElementsByTagName('head')[0];
        head.appendChild(piwikScript);
    })();
</script>
<noscript><p><img src="//sznewpiwik.centanet.com/stat/piwik.php?idsite=41" style="border:0" alt="" /></p></noscript>
</body>
</html>