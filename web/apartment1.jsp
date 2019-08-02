<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>photoinfo</title>
    <link rel="stylesheet" href="//static8.ziroom.com//phoenix/pc/css/2019/iconfont.css">
    <link rel="stylesheet" href="//static8.ziroom.com//phoenix/pc/css/2019/common.css?2019072519">
    <script type="text/javascript" src="//static8.ziroom.com/phoenix/pc/js/2019/lib/jquery.min.1.9.0.js"></script>
    <script type="text/javascript" src="//static8.ziroom.com/phoenix/pc/js/2019/lib/jquery.cookie.min.js"></script>
    <script src="//static8.ziroom.com/phoenix/pc/js/lib/2019/html5.min.js"></script>
    <link href="//at.alicdn.com/t/font_1228129_b253cd1iwks.css" rel="stylesheet">
    <link href="//static8.ziroom.com/phoenix/pc/css/2019/info.css?2019072519" rel="stylesheet"></head>
<style>
    .Z_swiper_box .Z_setup {
        position: absolute;
        right: 0;
        top: 20px;
        z-index: 10;
    }
    .Z_swiper_box .Z_setup button {
        background-color: #fff;
        border: 0;
        border-radius: 2px;
        color: #000;
        color: rgba(0,0,0,.6);
        float: right;
        font-size: 15px;
        height: 36px;
        line-height: 36px;
        margin-right: 20px;
        position: relative;
        width: 82px;
    }
</style>
<body>
<!-- Header  头部 -->


<!--初始化参数-->
<!--<input type="hidden" value="" id="yk_name">-->
<!--<input type="hidden" value="" id="yk_phone">-->
<section class="Z_container Z_main">
    <!-- 房屋基本信息模块 -->
    <section class="Z_info_main">
        <div class="Z_swiper_box" id="Z_swiper_box">
            <div class="Z_setup ">
                <button type="button" name="button" id="collect" class="Z_setup_share collect">收藏 <i class="glyphicon glyphicon-heart"></i></button>
            </div>
            <div class="Z_sliders">
                <a class="prev change_btn" href="javascript:void(0)">
                    <i class="iconfont iconicon_pageturning_left_x "></i>
                </a>
                <ul id="limg">
                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.1.jpg"alt="上海其灵自如寓" >--%>
                    <%--</li>--%>
                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.2.jpg"alt="上海其灵自如寓" >--%>
                    <%--</li>--%>

                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.3.jpg" alt="上海其灵自如寓" >--%>
                    <%--</li>--%>
                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.4.jpg" alt="上海其灵自如寓" >images/--%>
                    <%--</li>--%>
                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.5.jpg" alt="上海其灵自如寓" >--%>
                    <%--</li>--%>

                    <%--<li class="Z_slider" data-type="image" data-t="图片">--%>
                        <%--<img src="images/img1/apart1.6.jpg" alt="上海其灵自如寓" >--%>
                    <%--</li>--%>
                </ul>
                <a class="next change_btn" href="javascript:void(0)">
                    <i class="iconfont iconicon_pageturning_right_"></i>
                </a>
            </div>
            <div class="Z_swiper_thumb">
                <a class="prev" href="javascript:void(0)">
                    <i class="iconfont iconicon_pageturning_left_x "></i>
                </a>
                <ul class="Z_swiper_thumb_inner Z_sliders_nav" id="simg">
                    <%--<li class="" data-index="1">--%>
                        <%--<img src="images/img1/apart1.1.jpg">--%>
                    <%--</li>--%>
                    <%--<li class="" data-index="2">--%>
                        <%--<img src="images/img1/apart1.2.jpg">--%>
                    <%--</li>--%>

                    <%--<li class="" data-index="3">--%>
                        <%--<img src="images/img1/apart1.3.jpg">--%>
                    <%--</li>--%>
                    <%--<li class="" data-index="4">--%>
                        <%--<img src="images/img1/apart1.4.jpg">--%>
                    <%--</li>--%>
                    <%--<li class="" data-index="5">--%>
                        <%--<img src="images/img1/apart1.5.jpg">--%>
                    <%--</li>--%>
                    <%--<li class="" data-index="6">--%>
                        <%--<img src="images/img1/apart1.6.jpg">--%>
                    <%--</li>--%>
                </ul>
                <a class="next" href="javascript:void(0)">
                    <i class="iconfont iconicon_pageturning_right_"></i>
                </a>
            </div>
        </div>
        <!-- 轮播图区域 -->

        <!-- 10号提供部分 -->
        <div class="Z_page_navs_base">
            <div id="Z_page_nav" class="Z_page_nav">
                <div class="active_line"></div>
                <ul class="clearfix Z_page_navs">
                    <li class="active" data-id="homedesc"><a href="javascript:void(0)"  nofllow>房源简介</a></li>
                    <li  data-id="areacheck"><a href="javascript:void(0)" nofllow>空气检测结果</a></li>
                    <li data-id="rentinfo" ><a href="javascript:void(0)" nofllow>租约信息</a></li>
                    <li data-id="meetinfo"><a href="javascript:void(0)" nofllow>租客信息</a></li>
                    <li data-id="areashop"><a href="javascript:void(0)"  nofllow>周边配套</a></li>
                </ul>

            </div>
        </div>
        <div class="Z_isection scrollid" id="homedesc">
            <h2 class="Z_info_title ">房源简介</h2>
            <p class="house_sourcecode mt10">编号  SZZRGY0819447176_05</p>
            <div class="Z_rent_desc">
            </div>
            <div class="Z_info_icons ">
                <dl>
                    <dd><i class="iconfont iconzhinengsuo"></i></dd>
                    <dt>智能锁</dt>
                </dl>
                <dl>
                    <dd> <i class="iconfont iconzhuozi"></i> </dd>
                    <dt>桌子</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconluyouqi"></i></dd>
                    <dt>路由器</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconyizi"></i></dd>
                    <dt>椅子</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconxiyiji"></i></dd>
                    <dt>洗衣机</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconyouyanji"></i></dd>
                    <dt>油烟机</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconweibolu"></i></dd>
                    <dt>微波炉</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconbingxiang"></i></dd>
                    <dt>冰箱</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconreshuiqi"></i></dd>
                    <dt>热水器</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconyigui"></i></dd>
                    <dt>衣柜</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconchuangdian"></i></dd>
                    <dt>床垫</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconchuang"></i></dd>
                    <dt>床</dt>
                </dl>
                <dl>
                    <dd><i class="iconfont iconzhongyangkongtiao"></i></dd>
                    <dt>中央空调</dt>
                </dl>
            </div>
            <div class="clearfloat"></div>
        </div>
        </div>
        <div class="Z_isection mt60 scrollid" id="areacheck">
            <h2 class="Z_info_title mb20">空气检测结果</h2>
            <div class="Z_info_body">
                <ul class="jiance">
                    <li><span class="info_label">空置时长</span>  <span class="info_value">承诺空置30天，已超过30天</span></li>

                    <li><span class="info_label">检测日期</span>  <span class="info_value">2019-07-07</span></li>
                    <li><span class="info_label">检测报告</span>  <a class="info_value_active text_underline" alt="房屋空气质量检测报告" title="房屋空气质量检测报告" href="https://special.ziroom.com/2018/air_test_report/index.html?code=GUEOlYe3BVklYl8tVzZhGncGt14W0cnOSnveuLpW0qI" target="_blank" >房屋空气质量检测报告</a></li>
                </ul>
            </div>
        </div>
        <div class="Z_isection mt60 scrollid" id="rentinfo">
            <h2 class="Z_info_title mb20">租约信息</h2>
            <div class="Z_info_body">
                <ul class="jiance">
                    <li><span class="info_label">可入住日期</span> <span class="info_value">随时入住</span></li>
                    <li><span class="info_label">签约时长</span> <span class="info_value">可长租1年</span></li>
                </ul>
            </div>
        </div>
        <div class="Z_isection mt60 scrollid" id="meetinfo">
            <h2 class="Z_info_title mb20" >租客信息</h2>
            <div class="Z_info_body">
                <ul class="rent_list clearfix">
                    <li class="rented clearfix">
                        <div class="headimg">
                            <img src="https://image.ziroom.com/g2m1/M00/64/78/ChAFBluE_FaATtIRAAAoKZ4EKLY876.png" alt="">
                        </div>
                        <div class="info">
                            <p class="person"><span class="housename">01卧</span> <span class="time">刚刚入住</span> </p>
                            <p class="person mt10"><span>女</span>
                                <i class="i"></i><span>白羊座</span>
                                <i class="i"></i><span>商贸百货</span>
                            </p>
                        </div>
                    </li>
                    <li class="rent">
                        <a href="/z/vr/62338192.html">
                            <div class="headimg">
                                <img src="//img.ziroom.com/pic/house_images/g2m2/M00/FB/9F/CtgFCVz5KJyAUnx9AB7TyEOMfdU880.JPG_C_380_285_Q80.jpg" alt="">
                            </div>
                            <div class="info">
                                <p class="person"><span class="housename">02卧</span> <span class="price">
                                <span>￥</span>
                                                                            <i class="num" style="background-position:-160.2px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-142.4px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-142.4px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-106.8px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <span>/月</span></span> </p>
                                <p class="person mt10">
                                    <span>11.9㎡</span>
                                    <i class="i"></i><span>北</span>
                                    <i class="i"></i><span>首次出租</span>
                                </p>
                            </div>
                        </a>
                    </li>
                    <li class="rent">
                        <a href="/z/vr/62338193.html">
                            <div class="headimg">
                                <img src="//img.ziroom.com/pic/house_images/g2m2/M00/FB/A1/CtgFCFz5KI-AbM1GACGjs_PM7hA125.JPG_C_380_285_Q80.jpg" alt="">
                            </div>
                            <div class="info">
                                <p class="person"><span class="housename">03卧</span> <span class="price">
                                <span>￥</span>
                                                                            <i class="num" style="background-position:-160.2px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-142.4px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <i class="num" style="background-position:-106.8px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/f1a291465473a575e4a75cb2e9cf82c2.png);"></i>
                                                                            <span>/月</span></span> </p>
                                <p class="person mt10">
                                    <span>6.9㎡</span>
                                    <i class="i"></i><span>东</span>
                                    <i class="i"></i><span>首次出租</span>
                                </p>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>



        <!-- 10号提供部分 -->
    </section>

    <!-- 右侧边栏 -->
    <aside class="Z_info_aside" >
        <h1 class="Z_name"><i class="status iconicon_sign"></i><span></span></h1>
        <div class="Z_price">
            <span>￥</span>
           <span id="pri"></span>
            <span>/月（季付价）</span>
        </div>


        <ul class="Z_activity">

            <li>
                <span class="label">海燕计划</span>毕业生租房月付/0押金/送搬家券</li>
            <li>
                <span class="label">签约福利</span>领2019元入住礼包/好物0元送</li>
            <li>
                <span class="label">如美搬家</span>师傅全程搬运 价格合理透明</li>
        </ul>
        <div class="Z_tags">
            <span class="tag1 tag"></span>
            <span class="tag2 tag "></span>
            <span class="tag3 tag"></span>
        </div>
        <div class="Z_home_info">
            <div class="Z_home_b clearfix">
                <dl class="marea">
                    <dd></dd>
                    <dt>使用面积</dt>
                </dl>
                <dl class="">
                    <dd>朝南</dd>
                    <dt>朝向</dt>
                </dl>
                <dl class="">
                    <dd>LOFT</dd>
                    <dt>户型</dt>
                </dl>
            </div>

            <ul class="Z_home_o">
                <li>
                    <span class="la">位置</span><span class="va wei"></span>
                </li>
                <li>
                    <span class="la">电梯</span><span class="va">有</span>
                </li>
                <li>
                    <span class="la">门锁</span><span class="va">智能门锁</span>
                </li>
                <li>
                    <span class="la">绿化</span><span class="va">30%</span>
                </li>

            </ul>
            <div class="Z_down" id="Z_down">
                <i class="iconfont iconicon_unfold__c_"></i>
            </div>


        </div>


    </aside>
    <div class="clearfloat"></div>
</section>
<div class="Z_isection Z_container mt60 scrollid" id="areashop">
    <h2 class="Z_info_title mb20">周边配套</h2>
    <div class="Z_info_body">
        <!-- 地图部分 -->
        <section class="Z_info_map Z_container">
            <div class="Z_map_search_main">
                <div class="map_nav" id="map_nav">
                    <span class="nav_item active">上班通勤</span>
                    <span class="nav_item">周边配套</span>
                </div>
                <div class="map_box">
                    <div class="work map_search_item active">
                        <div class="gongsi">
                            <label for="mapvalue"> <span class="la">公司</span> <input type="text" name="" placeholder="请设置你的公司" id="mapvalue"  value=""></label>
                            <div class="search_results" >
                            </div>
                        </div>
                        <ul class="ways" id="ways">
                            <li data-key="1" class="active">公交</li>
                            <li data-key="2">步行</li>
                            <li data-key="4">驾车</li>
                        </ul>
                        <div class="line_content" id="line_content"></div>
                    </div>
                    <div class="nearby  map_search_item ">
                        <ul class="nearby_nav clearfloat" id="nearby_Nav">
                            <li data-key="交通" class="active">交通</li>
                            <li data-key="商场,超市">商超</li>
                            <li data-key="学校">教育</li>
                            <li data-key="餐饮">餐饮</li>
                            <li data-key="金融">金融</li>
                            <li data-key="医院">医疗</li>
                        </ul>
                        <div class="waychange">
                            <span class="act" data-way="1">地铁</span>
                            <span data-way="2">公交</span>
                        </div>
                        <div class="seach_content" id="seach_content">

                        </div>
                    </div>
                </div>
                <div class="data_from">数据来源于百度地图</div>
            </div>
            <div class="Z_info_map_main"  id="baiduMap">

            </div>
        </section>
        <!-- 地图部分 -->
    </div>
</div>
<div class="Z_isection Z_container mt30">
    <ul class="Z_light clearfix">
        <li>
            <h4>环保装修，密闭检测出租</h4>
            <p>仅友家整租房源</p>
        </li>
        <li>
            <h4>签约三天不满意，<br/>零违约金退租</h4>
            <p>转租、换租、续租、惠蕾、直租1.0、豪宅除外</p>
        </li>
        <li>
            <h4>漏水保固，<br/>补偿日租金</h4>
            <p>仅适用于友家、整租、直租和精选房源</p>
        </li>
        <li>
            <h4>退租费用，三个工作日到账</h4>
            <p>适用于所有房源</p>
        </li>
    </ul>
</div>

<div class="Z_container Z_bread mt60">
    <a href="//sz.ziroom.com/z/">上海租房</a> / <a href="//sz.ziroom.com/z/d23008676-b612400028/">闵行区都会路</a>  / <span class="current">其灵公寓</span>
    <a href="http://form.mikecrm.com/vDly14" class="deal_error">房源纠错</a>
</div>

<!-- 弹窗部分 -->

<footer>
    <div class="Z_section_fade">
        <div class="Z_container Z_footer_nav ">
            <ul class="clearfix">
                <li><a href="http://www.ziroom.com/zhaopin/index.php?r=site/about">关于我们</a></li>
                <li><a href="http://www.ziroom.com/zhaopin/index.php">社会招聘</a></li>
                <li><a href="https://special.ziroom.com/2018/zr-xzpc/index.html">校园招聘</a></li>
                <li><a href="http://www.ziroom.com/about/lianxi.html">联系如美</a></li>
                <li><a href="http://www.ziroom.com/purchase/">如美采购</a></li>
            </ul>
        </div>
        <div class="Z_hr"></div>
        <div class="Z_container  Z_footer_tab">
            <div class="Z_footer_tab_header">
                <ul class="clearfix tab_head">
                    <li class="active">友情链接</li>
                </ul>
            </div>
            <div class="Z_footer_tab_body">
                <div class="Z_footer_tab_content tab_body">
                    <ul class="clearfix">

                        <li><a href="https://sz.lianjia.com/" target="_blank">深圳房产网</a></li>

                        <li><a href="https://sz.ke.com/" target="_blank">深圳房产</a></li>

                        <li><a href="https://qd.lianjia.com/" target="_blank">青岛房产网</a></li>

                        <li><a href="https://qd.ke.com/" target="_blank">青岛房产</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="Z_hr" ></div>

    </div>
</footer>
<!-- FOOTER -->
<link rel="stylesheet" href="//static8.ziroom.com/phoenix/pc/css/2019/video-js.min.css">
<script type="text/javascript" src="//static8.ziroom.com/fecommon/library/polyfill/polyfill.min.js"></script>
<script src="//static8.ziroom.com/phoenix/pc/js/2019/lib/layer.js"></script>
<script src='//static8.ziroom.com/phoenix/pc/js/2019/lib/jquery.SuperSlide.2.1.3.js'></script>
<script src='//static8.ziroom.com/phoenix/pc/js/2019/lib/jquery.lazyload.min.js'></script>
<script src="//static8.ziroom.com/phoenix/pc/js/2019/lib/scrollreveal.js"></script>
<script src="//static8.ziroom.com/phoenix/pc/js/2019/lib/videojs-ie8.min.js"></script>
<script src='//static8.ziroom.com/phoenix/pc/js/2019/lib/video.min.js'></script>
<script type="text/javascript">
    // baidu&gio
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?4f083817a81bcb8eed537963fc1bbf10";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

    var _vds = _vds || [];
    window._vds = _vds;
    (function(){
        _vds.push(['uid', '']);
        _vds.push(['setAccountId', '8da2730aaedd7628']);
        (function() {
            var vds = document.createElement('script');
            vds.type='text/javascript';
            vds.async = true;
            vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(vds, s);
        })();
    })();
    (function(para) {
        var p = para.sdk_url, n = para.name, w = window, d = document, s = 'script',x = null,y = null;
        w['sensorsDataAnalytic201505'] = n;
        w[n] = w[n] || function(a) {return function() {(w[n]._q = w[n]._q || []).push([a, arguments]);}};
        var ifs = ['track','quick','register','registerPage','registerOnce','trackSignup', 'trackAbtest', 'setProfile','setOnceProfile','appendProfile', 'incrementProfile', 'deleteProfile', 'unsetProfile', 'identify','login','logout','trackLink','clearAllRegister'];
        for (var i = 0; i < ifs.length; i++) {
            w[n][ifs[i]] = w[n].call(null, ifs[i]);
        }
        if (!w[n]._t) {
            x = d.createElement(s), y = d.getElementsByTagName(s)[0];
            x.async = 1;
            x.src = p;
            w[n].para = para;
            y.parentNode.insertBefore(x, y);
        }
    })({
        sdk_url:"//static.sensorsdata.cn/sdk/1.13.10/sensorsdata.min.js",
        name: 'sensors',
        server_url:'//tianyanimport.ziroom.com:8106/sa?project=production',
        heatmap_url: "//static.sensorsdata.cn/sdk/1.13.10/heatmap.min.js",
        web_url:"//tianyan.ziroom.com",
        heatmap: {
            clickmap:'default',
            scroll_notice_map:'not_collect'
        }
    });
    sensors.registerPage({
        platformType:'PC',
        cid:440300})
    sensors.quick('autoTrack');
</script>
<script src="//api.map.baidu.com/api?v=2.0&amp;ak=CB9b776692623d30a148b5c5dc2b75a6&amp;callback=initMap"></script>
<script src="//static8.ziroom.com/phoenix/pc/js/2019/info.js?2019072519"></script>
</body>
</html>
<script>
    $(function () {
        $.ajax({
            type:"post",
            url:'${pageContext.request.contextPath}/hou/getid',
            data:{"id":7},
            dataType:"json",
            success:function(data){
                $(".Z_name").find("span").html(data.address);
                $(".marea").find("dd").html(data.area+"㎡");
                $("#pri").html(data.price);
                $(".tag1").html(data.province);
                $(".tag2").html(data.city);
                $(".tag3").html(data.roomNum+"室");
                $(".wei").html(data.province+data.city);
                $(".Z_rent_desc").html(data.description);
            }
        })
        $.ajax({
            type:"post",
            url:'${pageContext.request.contextPath}/hou/findhid',
            data:{"hid":7},
            dataType:"json",
            success:function(data){
                if(data.length>0){
                    var limg='';
                    var simg='';
                    $.each(data,function (i,val) {
                        limg+='<li class="Z_slider" data-type="image" data-t="图片"> <img src="${pageContext.request.contextPath}'+val.image+'"alt="" > </li>'
                        simg+='<li class="" data-index="3"> <img src="${pageContext.request.contextPath}'+val.image+'"> </li>'
                    });
                    $("#limg").html(limg);
                    $("#simg").html(simg);
                }
            }
        })
    })
</script>
