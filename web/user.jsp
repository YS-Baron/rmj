<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>如美租客</title>
    <link href="css/user.css" rel="stylesheet">
</head>
<body>
<header class="Z_layout_head" id="Z_layout_head">
    <div class="Z_layout_main">
        <div class="Z_container Z_header_main">
            <h1 class="Z_logo_box">
                <a href="/">
                    <!-- 首页logo 区别于其他页面logo -->
                    <img class="Z_logo" id="Z_logo" src="images/index-image/logo.png" alt="" />
                </a>
            </h1>
            <!-- 顶部导航 -->
            <ul class="Z_nav_box">
                <li><a href="index.jsp" class="ani " >首页</a></li>
                <li><a href="user.jsp" class="ani active " >租房</a></li>

                <li><a href="javascript:;" class="become_houser" target="_blank">成为房东</a></li>
            </ul>
            <div class="Z_login_top" id="loginEntyWrapper">
                <a href="login.jsp" class="Z_exit" rel="nofollow" id="zLogin">登录</a>
                <a href="javascript:;" class="Z_exit_line">|</a>
                <a href="register.jsp" class=" Z_exit" rel="nofollow" id="zRegister">注册</a>
            </div>
            <div class="Z_login_top" style="display: none">
                <a href="#" class=" Z_headtop_tel" rel="nofollow"></a>
                <a href="#" class=" Z_exit" rel="nofollow" id="tRegister">退出</a>
            </div>
        </div>
    </div>
</header>

<section class="Z_content">
    <!-- search box -->
    <div class="Z_container Z_search_box">
        <div class="Z_search_main">
            <input type="text" class="Z_search_input" id="Z_search_input" placeholder="请输入地址、小区等..." value="" />
            <a href="javascript:void(0)" class="Z_search_btn Z_search_submit Z_btn_ani" id="Z_search_submit"><i class="z_i"></i>开始找房</a>
            <!-- 热门搜索 -->
        </div>
    </div>
    <!-- filter -->
    <div class="Z_filter">
        <ul class="f-box">
            <li class="f-item">
                <strong class="title">找房方式</strong>
                <div class="opt">
                    <div class="opt-type ">
                        <span class="opt-name">地址</span>
                        <div class="child-opt">
                            <a class="item parent-title" href="javascript:;">地址</a>
                            <div class="wrapper">
                                <a class="item " href="//sz.ziroom.com/z/d23008679/">北京</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008672/">上海</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008674/">深圳</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008678/">杭州</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008677/">广州</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008676/">南京</a>
                            </div>
                        </div>
                    </div>
                    <div class="opt-type ">
                        <span class="opt-name">区域</span>
                        <div class="child-opt">
                            <a class="item parent-title" href="javascript:;">区域</a>
                            <div class="wrapper">
                                <a class="item " href="//sz.ziroom.com/z/d23008679/">南山区</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008672/">宝安区</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008674/">福田区</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008678/">罗湖区</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008677/">龙华区</a>
                                <a class="item " href="//sz.ziroom.com/z/d23008676/">龙岗区</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="f-item">
                <strong class="title">租金</strong>
                <div class="opt">
                    <a class="active" href="//sz.ziroom.com/z/r0/">不限</a>
                    <a class="" href="//sz.ziroom.com/z/r1/">1500元以下</a>
                    <a class="" href="//sz.ziroom.com/z/r2/">1500-2500元</a>
                    <a class="" href="//sz.ziroom.com/z/r3/">2500-4000元</a>
                    <a class="" href="//sz.ziroom.com/z/r4/">4000-6000元</a>
                    <a class="" href="//sz.ziroom.com/z/r5/">6000-8000元</a>
                    <a class="" href="//sz.ziroom.com/z/r6/">8000-10000元</a>
                    <a class="" href="//sz.ziroom.com/z/r7/">10000元以上</a>
                    <div class="price" id="range">
                        <input type="text" name="low" class="low num" value="">&nbsp;- <input type="text" name="high" class="high num" value="">&nbsp;元 <input type="button" class="confirm" value="确定">
                    </div>
                </div>
            </li>
        </ul>
    </div>

    <div class="Z_list">
        <div class="Z_list-box">
            <div class="item">
                <div class="pic-box">
                    <a href="//sz.ziroom.com/x/784236934.html" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic1.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="//sz.ziroom.com/x/784236934.html" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic2.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic3.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic4.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic5.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic6.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic2.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic6.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic1.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic3.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic5.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="pic-box">
                    <a href="photoinfo.jsp" target="_blank" class="pic-wrap"><img class="lazy" src="images/user-image/pic4.jpg" alt="深圳合租德兴城花园1790租房户型实景图"></a>
                    <span class="ico ico-video"></span>
                </div>
                <div class="info-box">
                    <h5 class="title sign"><a href="photoinfo.jsp" target="_blank">合租·德兴城花园4居室-南卧</a></h5>
                    <div class="desc">
                        <div>10.7㎡ | 6/8层</div>
                    </div>
                    <div class="price">
                        <span class="rmb">￥</span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -64.2px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -42.8px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -192.6px"></span>
                        <span class="num" style="background-image: url(//static8.ziroom.com/phoenix/pc/images/price/new-list/dff9d441e1fc59f793d5c3b68461b3ea.png);background-position: -128.4px"></span>
                        <span class="unit">/月</span>
                    </div>
                    <div class="tag">
                        <span>离地铁近</span>
                        <span>首次出租</span>
                        <span>布丁4.0</span>
                    </div>
                    <div class="tips  air-high">
                        空气质量已检测, 空置已超过30天
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    $(function () {
        $(".opt-name").click(function () {
                $(".child-opt").hide();
                $(this).parents(".opt-type").find(".child-opt").show();
                $(this).parents(".f-item").addClass("current")
            }
        )
    })
</script>

