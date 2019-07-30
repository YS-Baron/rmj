<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width">
    <meta name="keywords" content="民宿房源搜索">
    <meta name="description" content="民宿房源搜索">

    <title>
        房源详情
    </title>
    <link rel = "Shortcut Icon" href="http://minsustatic.ziroom.com/portal/images/common/favicon.ico">

    <script type='text/javascript'>
        var _vds = _vds || [];
        window._vds = _vds;
        (function(){
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
    </script>


    <script type="text/javascript">
        var PORTAL_FRONT_URL="http://www.ziroomstay.com";
        var PORTAL_FD_URL="http://fd.ziroomstay.com"
        var SSO_USER_LOGIN_URL="http://passport.ziroom.com/login.html?return_url=";
        var SSO_USER_REGISTER_URL="http://passport.ziroom.com/register.html?return_url=";
    </script>
    <!-- 全局js -->
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/jquery-2.1.1.min.js?v=js.version.20171116"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/html5shiv.js?v=js.version.20171116"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/layer/layer.js?v=js.version.20171116"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/common.js?v=js.version.20171116"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/jquery.range.js"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/common/login.js"></script>
    <script type="text/javascript" src="http://static8.ziroom.com/fecommon/common/js/getYear.js"></script>

    <link rel="stylesheet" href="http://minsustatic.ziroom.com/portal/css/common.css?v=js.version.20171116">
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/jquery.form.js"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/jquery.SuperSlide.2.1.1-1.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=TMbMngjLXTSEcP80tADrcqzR"></script>
    <script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/search/houseDetail.js?v=js.version.20171116"></script>
    <script src="http://catcher.ziroom.com/assets/js/boomerang.min.js"></script>

    <link rel="stylesheet" type="text/css" href="http://minsustatic.ziroom.com/portal/css/detail.css?v=js.version.20171116">

</head>

<body>
<div id="subNav" class="sub_header_box">
    <div class="area">
        <ul class="sub_header point">
            <li class="part1"> <a href="#part1" rel="nofollow">图片</a> </li>
            <li class="part2"> <a href="#part2">配套设施</a></li>
            <li class="part3"> <a href="#part3">房源描述</a></li>
            <li class="part4"> <a href="#part4">预订须知</a></li>
            <li class="part5"> <a href="#part5">周边情况</a></li>
            <li class="part7"> <a href="#part7">评价</a></li>
        </ul>
    </div>
</div>
<section class="main" id="main">
    <div class="area clearfix">
        <div class="room_detail_left">
            <!-- part1 -->
            <div id="part1" class="part part1">
                <div class="slider">
                    <ul class="bd">
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDV-AXwJHABEBeHfWzZY048.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKiAYEolAAc3aoUMKGo975.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKmABiStAAeP8uVwWec722.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/BA/ChAFEViEDZ2AQ7EdAAezVuAaTZ8554.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDaGAe-BpAAqBJcM5RpM772.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSWAB5sCAA7LqYXbdCc925.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSaAcF82AA4aMB3duoM291.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDSmAWFwgAAxJ1tZaie8734.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDS2ARoazABARnzIp9KE876.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDTeAVfMfAAvBoG9gRO8185.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDX2AAggQAAXEi12k-5k146.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDX2AdmdVAAXLzTz2uB4214.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVmASk8iABJAuVXrc8Q143.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVWAPxDNABNM7_zf4Wo745.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVuAV6IlABF5FlNUPPM271.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDWSAajyAABG3srNwxvk094.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDWeAUOukABAl4vrC0sQ089.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDW2ATx75ABQv89QSs8s178.jpg_Z_1200_800.jpg">
                        </li>
                    </ul>
                    <div class="btn">
                        <a class="prev" href="javascript:void(0)"></a>
                        <a class="next" href="javascript:void(0)"></a>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_tt">
                        <h1>丽江古城  小雨的家</h1>
                        <div class="detail_txt clearfix">
                            <div class="detail_sub_tt">丽江市古城区古城</div>
                            <div class="star_box clearfix">
                                <ul class="stars clearfix"  data-val="5"  >
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                </ul>
                                (0条评价)
                            </div>
                        </div>
                    </div>
                    <ul class="detail_tags clearfix">
                        <li class="tag">
                            <dt class="icons_dt rent"></dt>
                            <dd>整套出租</dd>
                        </li>
                        <li class="tag">
                            <dt class="icons_dt person"></dt>
                            <dd> 可住2人</dd>
                        </li>
                        <li class="tag">
                            <dt class="icons_dt room"></dt>
                            <dd>1居</dd>
                        </li>

                        <li class="tag">
                            <dt class="icons_dt bed"></dt>
                            <dd>1张双人床</dd>
                        </li>

                        <li class="tag">
                            <dt class="icons_dt toliet"></dt>
                            <dd>1个卫生间</dd>
                        </li>
                        <li class="tag">
                            <dt class="icons_dt area"></dt>
                            <dd>28.0平方米</dd>
                        </li>
                    </ul>
                </div>
                <div id="outSlideBox" class="outslidebox">
                    <div class="outslide-mask">
                        <div class="outslide">
                            <ul class="bd">
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDV-AXwJHABEBeHfWzZY048.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKiAYEolAAc3aoUMKGo975.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKmABiStAAeP8uVwWec722.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/BA/ChAFEViEDZ2AQ7EdAAezVuAaTZ8554.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDaGAe-BpAAqBJcM5RpM772.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSWAB5sCAA7LqYXbdCc925.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSaAcF82AA4aMB3duoM291.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDSmAWFwgAAxJ1tZaie8734.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDS2ARoazABARnzIp9KE876.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDTeAVfMfAAvBoG9gRO8185.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDX2AAggQAAXEi12k-5k146.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDX2AdmdVAAXLzTz2uB4214.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVmASk8iABJAuVXrc8Q143.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVWAPxDNABNM7_zf4Wo745.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVuAV6IlABF5FlNUPPM271.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDWSAajyAABG3srNwxvk094.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDWeAUOukABAl4vrC0sQ089.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDW2ATx75ABQv89QSs8s178.jpg_Z_1200_800.jpg">
                                </li>
                            </ul>
                            <div class="nav_slide">
                                <ul class="hd clearfix">
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDV-AXwJHABEBeHfWzZY048.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKiAYEolAAc3aoUMKGo975.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDKmABiStAAeP8uVwWec722.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/BA/ChAFEViEDZ2AQ7EdAAezVuAaTZ8554.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDaGAe-BpAAqBJcM5RpM772.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSWAB5sCAA7LqYXbdCc925.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDSaAcF82AA4aMB3duoM291.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDSmAWFwgAAxJ1tZaie8734.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDS2ARoazABARnzIp9KE876.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDTeAVfMfAAvBoG9gRO8185.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDX2AAggQAAXEi12k-5k146.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDX2AdmdVAAXLzTz2uB4214.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVmASk8iABJAuVXrc8Q143.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVWAPxDNABNM7_zf4Wo745.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDVuAV6IlABF5FlNUPPM271.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDWSAajyAABG3srNwxvk094.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/B9/ChAFEViEDWeAUOukABAl4vrC0sQ089.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/25/A6/ChAFFViEDW2ATx75ABQv89QSs8s178.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                </ul>
                            </div>
                            <div class="close"></div>
                            <div class="btn">
                                <a class="prev" href="javascript:void(0)"></a>
                                <a class="next" href="javascript:void(0)"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /part1 -->
            <!-- part2 -->
            <div id="part2" class="part part2">
                <div class="detail clearfix">
                    <div class="detail_left">配套设施</div>
                    <div class="detail_right">
                        <ul class="support_list clearfix">
                            <!--电器-->
                            <li> <i class="icon_supports tv"></i>电视</li> <!--电视-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <li> <i class="icon_supports air"></i>空调</li><!--空调-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <li> <i class="icon_supports water"></i>饮水设备</li><!--饮水设备-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <li> <i class="icon_supports fridge"></i>冰箱</li><!--冰箱-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <li> <i class="icon_supports washing"></i>洗衣机</li><!--洗衣机-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <li> <i class="icon_supports hair_dryer"></i>电吹风</li><!--电吹风-->
                            <!--卫浴-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports shower"></i>热水淋浴</li><!--热水淋浴-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports toothbrush"></i>牙具</li><!--牙具-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports soap"></i>香皂</li><!--香皂-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports shoes"></i>拖鞋</li><!--拖鞋-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports papper"></i>手纸</li><!--卫生纸-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports tower"></i>毛巾</li><!--毛巾-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->
                            <li> <i class="icon_supports acne"></i>沐浴用品</li><!--沐浴露-->

                            <!--设施-->
                            <!--电器-->
                            <!--卫浴-->

                            <!--设施-->
                            <li> <i class="icon_supports wify"></i>无线网络</li><!--无线网络-->
                            <!--电器-->
                            <!--卫浴-->

                            <!--设施-->
                            <li> <i class="icon_supports lift"></i>电梯</li><!--电梯-->
                            <!--电器-->
                            <!--卫浴-->

                            <!--设施-->
                            <li> <i class="icon_supports access"></i>门禁系统</li><!--门禁系统-->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /part2 -->
            <!-- part3 -->
            <div id="part3" class="part part3">
                <div class="detail clearfix">
                    <div class="detail_left">房源描述</div>
                    <div class="detail_right">
                        <div class="detail_intro detail_txt overflow">
                            我自己的小别墅,绝非一般经营性质客栈,这是我自己的家。我的小别墅同时也是我做摄影的工作室。这里每一个装修都是我精心设计,每一样摆件都是我从世界各地淘回来的。我是一个爱上丽江的重庆妹子,4年前来丽江旅游留在了这里。我性格直爽,待客真诚,目前的民宿经营生活状态是我最理想和最开心的。我因为爱这里而留下,我因为爱这样的生活而经营了自己的小别墅。我希望来的客人都看到丽江美好的一面,来的客人都喜欢这儿,短暂的几天相处,我希望你我成为聊得来的朋友。或许旅途的脚步太匆忙,也没机会聊上几句,但我希望通过我用心打理的点点滴滴,照顾好你的起居住行,让你在丽江的旅途旅游舒心惬意自在。我相信不久的将来每天有朋友从各个地方回来丽江,回来找我,大家又在一起享受着丽江的美好时光。这一世 转山转水转佛塔 不为求来生 只为  在路上  与你的相逢 hi,这里有你想问的问题吗?1, 此房源是整套出租吗?答: 此房源为5室2厅别墅带超大花园,前庭后院,您订的是5室其中1室。2,此房源是双床还是大床呢?您订的是5房别墅中其中1房。有标间有大床,您在沟通的时候可以告诉我您需要什么房型。都可以安排。3, 请问有三人间或者家庭房吗?有的。 三人间和家庭房需要加钱。具体请与我沟通哦:)4,此房源可以住多少人?此房源正常可以住2名成人。小朋友1.2米以下可以与父母同住,1.2米以上需要另外多开一间房。凡入住别墅客人即可享受丽江咨询服务,凌晨或深夜订车服务、延迟退房(只要第二天没有客人入住您都可以延迟退房到晚上都没有关系,即使有客人入住的情况,您退房了也可以在客厅休息的) 我特别为自驾客人提供:免费旅游路线规划,免费私家停车位。为爱好品茶朋友提供上好普洱茶滇红茶, 为爱好品咖啡朋友提供精品云南咖啡,当然房源有wifi.一切的一切只为您在丽江有个温馨安逸的家和便捷畅快的出行和旅游!这一世 转山转水转佛塔 不为求来生 只为  在路上  与你的相逢
                        </div>
                    </div>
                </div>
                <div class="show_more_btn">
                    <a href="javascript:;" id="introBtn" class="overflowBtn">查看全部</a>
                </div>
            </div>
            <!-- /part3 -->
            <!-- part4 -->
            <div id="part4" class="part part4">
                <div class="detail clearfix">
                    <div class="detail_left">预订须知</div>
                    <div class="detail_right">
                        <ul class="reserve_list clearfix">
                            <li>
                                <span class="reserve_list_tt">预订类型 ：</span>
                                申请预订
                            </li>
                            <li>
                                <span class="reserve_list_tt">押金规则 ：</span>
                                500元
                            </li>
                            <li>
                                <span class="reserve_list_tt">最少入住天数 ：</span>
                                1天
                            </li>
                            <li>
                                <span class="reserve_list_tt">清洁费 ：</span>
                                0元/单
                            </li>
                            <li>
                                <span class="reserve_list_tt">入住时间 ：</span>
                                14点之后
                            </li>
                            <li>
                                <span class="reserve_list_tt">退房时间 ：</span>
                                12点之前
                            </li>
                            <li class="clearfix server_li">
                                <span class="reserve_list_tt" style="float:left;">服务 ：</span>
                                <div>
                                    可做饭
                                </div>
                            </li>
                            <li class="sReserve">
                                <span class="reserve_list_tt">退房政策 ：</span>
                                <a id="policyBtn" onclick="showPolicy(this)" href="javascript:;">适中退订政策 <i class="up"></i></a>
                            </li>
                        </ul>
                        <div class="policy">
                            <ul class="policyUl sReserve">
                                <li><i></i>入住日期前5天取消预订，退还房客全部房费;</li><li><i></i>如果未能在5天前取消预订，扣除房客首晚房费，及剩余未住宿天数50%的房费;</li><li><i></i>如果提前退房，扣除房客未住宿的首晚房费，及剩余未住宿天数50%的房费;</li><br/><li>说明:</li><li><i></i>取消预订截止时间为房东设置的入住时间（例如：14点），如果入住时间为周五，则入住日期前1天取消预订即为周四14点前;</li><li><i></i>入住前取消预订，退还房客全部平台服务费，入住后提前退房，按照实际入住天数收取房客平台服务费;</li><li><i></i>如果房客未入住，将退还清洁费;</li><li><i></i>房费不足以扣除违约金时，将从押金中进行扣除;</li><li><i></i>28晚或更长时间的订单默认使用长期住宿退订政策。</li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /part4 -->
            <!-- part5 -->
            <div id="part5" class="part part5">
                <div class="detail clearfix">
                    <div class="detail_left">周边情况</div>
                    <div class="detail_right">
                        <div class="detail_arround detail_txt overflow">
                            1,机场多远,火车站远吗? 可以接机接站吗?
                            <br/>机场打车50分钟,120元。火车站打车25分钟,60元。住客可以安排接机接站。比打车优惠10元。 不好意思,房费很实在,没有办法免费接机接站。
                            <br/>
                            <br/>
                            <br/>2, 距离市古城和市中心近吗?
                            <br/>丽江古城有三个。我们距离束河古镇1公里。所谓的丽江古城4公里。大部分游客其实以为丽江只有一个古城。然后到了丽江,发现丽江古城除了人流以外就是义乌商品市场。反而一去了束河发现束河美过丽江古城10倍!
                            <br/>
                            <br/>3,古城里面客栈的好与坏
                            <br/>古城要收门票80元;古城客栈睡觉不舒服很吵;古城客栈只能拖行李走进去10-40分钟很累,出去游玩走出去也远;古城客栈普通水压小水温不够烫;古城吃的贵还不好吃
                            <br/>古城客栈的好:住古城丽江逛街方便
                            <br/>
                            <br/>
                            <br/>4,别墅附近有吃的吗? 出行方便吗?
                            <br/>
                            <br/>别墅近大学, 小吃街多,超市菜市场多,美食小吃超多,还价格实惠,外卖也是美食很多很方便。
                            <br/>出行有公交至古城、市区以及束河白沙,包车我有车,给住客优惠价格用车。
                            <br/>
                        </div>
                    </div>
                </div>
                <div class="show_more_btn ">
                    <a href="javascript:;" id="arroundBtn" class="overflowBtn">查看全部</a>
                </div>
                <div class="map_box">
                    <div id="allmap" class="map"></div>
                    <div id="position" data-longitude="100.328598" data-latitude="26.859301" class="map_title">丽江市古城区古城</div>
                </div>
            </div>
            <!-- /part5 -->
            <!-- part6 -->
            <!-- /part6 -->
            <!-- part7 -->
            <div id="part7" class="part part7">
                <ul class="part7_tt clearfix">
                    <li class="active">本房源评价(0)</li>
                    <li class="all_rooms">房东的所有评价(0)</li>
                </ul>
                <div id="p7Score" class="detail">
                    <div class="score_box clearfix">
                        <div class="score_left">
                            <div class="score_main">
                                <dt> <span></span>/5分 </dt>
                                <dd class="star_box lg">
                                    <ul class="stars" data-val="">
                                        <li class="star"></li>
                                        <li class="star"></li>
                                        <li class="star"></li>
                                        <li class="star"></li>
                                        <li class="star"></li>
                                    </ul>
                                </dd>
                            </div>
                        </div>
                        <div class="score_right">
                            <ul class="score_list clearfix">
                                <li>整洁卫生  分</li>
                                <li>描述相符  分</li>
                                <li>房东印象  分</li>
                                <li>交通位置  分</li>
                                <li>性价比  分</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <ul id="commentList" class="comment_list">

                </ul>
                <p class="noMessage">暂无评论</p>
                <div class="show_more_btn" style="display: none;">
                    <a href="javascript:;" id="commentBtn">展开更多</a>
                </div>
            </div>
            <!-- /part7 -->
            <!-- 更多类似房源 -->
            <div class="more_house_box" style="display: none;">
                <div class="more_house_tt">更多类似房源</div>
                <ul class="more_house_list clearfix">
                </ul>
            </div>
            <!-- /更多类似房源 -->
        </div>
        <div class="room_detail_right">
            <!-- expense_box -->
            <div class="box expense_box">
                <h1>￥500/晚</h1>
            </div>
            <!-- /expense_box -->
            <!-- data_box -->
            <div class="box data_box">
                <div class="headimg_box">
                    <dt>
                        <div class="headimg">
                            <img src="http://img.ziroom.com/minsu/g2/M00/21/C5/ChAFFVh7TimAANNSAAUQ2vbot5Y787.jpg_Z_120_120.jpg">
                        </div>
                    </dt>
                    <dd>你好，我是爱旅行陈小雨rina</dd>
                </div>
                <ul class="btn_box">
                    <li class="btn_left"><a href="javascript:;">身份认证</a></li>
                    <li class="btn_right"><a href="javascript:;">房源认证</a></li>
                </ul>
                <div class="txt">
                    hi，一个因为喜欢自由与摄影而去了丽江开摄影工作室和民宿的人、一个没有脱离低价趣味的人,希望认识你，茫茫房海中，你点到了我。这肯定是我们修来的缘分， 我珍惜这一段缘分， 努力经营我们短暂的相处， 希望把这短暂的缘分变成美好的回忆，希望你也如此....
                </div>
                <div class="show_more_btn point">
                    <a href="#part7">查看评论</a>
                </div>
            </div>
            <!-- /data_box -->
            <!-- 日历插件 -->
            <!--calendarBox-->
            <div class="calendarBox" id="calendarBox">
                <div class="calendars">
                    <div class="calendars_bar">
                        <span id="monthBox" data-month="2016-07">2016年7月</span>
                        <!-- TODO: 判断状态  禁用增加class disabled-->
                        <a href="javascript:;" class="icon icon_prev disabled"><</a>
                        <a href="javascript:;" class="icon icon_next">></a>
                        <!-- 禁用样式 -->
                        <!-- <a href="javascript:;" class="icon icon_prev disabled"><</a>
                        <a href="javascript:;" class="icon icon_next disabled">></a> -->
                    </div>
                    <table id="calendarTab">

                    </table>
                    <div class="clear_box"> <span class="clearBtn">清空日期</span></div>
                </div>
            </div><!--/calendarBox-->
        </div>

    </div>
</section>

<footer class="footer">
    <div class="area clearfix">
        <div class="topLinks">
            <a href="http://www.ziroomstay.com/common/about">关于我们</a>
            <a href="http://www.ziroomstay.com/common/contact" target="_blank" >联系我们</a>
            <a href="http://www.ziroom.com/zhaopin/" target="_blank">加入我们</a>
            <a href="http://www.ziroomstay.com/common/protocols" class="_blank" target="_blank">平台服务协议</a>
            <a href="http://www.ziroomstay.com/common/tenantProtocols" class="_blank" target="_blank">房客服务协议</a>
            <a href="http://www.ziroomstay.com/common/landlordProtocols" class="last" target="_blank">房东服务协议</a>
        </div>
        <div class="shares">
            <ul class="clearfix">
                <li>
                    <div class="img">
                        <img src="http://minsustatic.ziroom.com/portal/images/common/weixin.png">
                    </div>
                    <span class="weixin"></span>
                </li>
                <li>
                    <div class="img">
                        <img src="http://minsustatic.ziroom.com/portal/images/common/weibo.png">
                    </div>
                    <span class="weibo"></span>
                </li>
                <li>
                    <div class="img">
                        <img src="http://minsustatic.ziroom.com/portal/images/common/ewm.png">
                    </div>
                    <span class="app"></span>
                </li>
            </ul>
        </div>
        <p id="currentYear">Copyright©2019 Ruemejar.com 版权所有 京ICP备16045409号-1</p>
    </div>
</footer>
<input type="hidden" id="endDate" >
<input type="hidden" id="startDate">
<input type="hidden" id="outDate">
<input type="hidden" id="fid" value="8a90997859a7561d0159c3c230192399">
<input type="hidden" id="rentWay" value="0">
<input type="hidden" id="lanUid" value="56c2c605-f09c-40ef-98eb-77f772dff4a0">
<input type="hidden" id="cDay" value="28">
<script type="text/javascript" src="http://minsustatic.ziroom.com/portal/js/search/rentCalendar.js"></script>
<script>
    BOOMR.init({
        beacon_url: "http://catcher.ziroom.com/beacon",
        beacon_type: "POST",
        page_key: "minsu_www_house_detail"});
</script>

<div id="goTop"></div>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-26597311-1']);
    _gaq.push(['_setLocalRemoteServerMode']);
    _gaq.push(['_trackPageview']);
    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

    (function() {
        console.log("探寻这里的秘密；\n体验这里的挑战；\n成为这里的主人；\n加入自如，加入旅居中心，你，可以影响世界。\n");
        console.log("请将简历发送至  zrsjsb@ziroom.com（ 邮件标题请以“姓名-应聘XX职位-来自console”命名）");
    })();
</script>
</body>
</html>
