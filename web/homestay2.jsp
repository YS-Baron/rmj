<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAHbaiAAFJs8JVtVg839.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunEyAXgqDAAFnNunB_WE16.jpeg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugaWAWtpWAAEFNwxX8YM475.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/25/ChAFEViunPWAJY7QAAHgX7jn-Ng23.jpeg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAGJl9AAFyMF9Z-eU161.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugbyAdveXAAEfBrTHJT8366.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugceADliQAADq0hWsf3w517.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunGKAFMm2AAFXrIfCjcY55.jpeg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeOAYstVAAGY-nLNfZc616.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAay3wAAH-zDYctow097.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAArhwAAGBN4JIobQ606.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAFHZwAAHkgP-7_B0254.jpg_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAAXS8AAF5h1S6IX8434.jpg_Z_1200_800.jpg">
                        </li>
                    </ul>
                    <div class="btn">
                        <a class="prev" href="javascript:void(0)"></a>
                        <a class="next" href="javascript:void(0)"></a>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_tt">
                        <h1>【墅家】玉龙雪山 榻榻米雪山观景房</h1>
                        <div class="detail_txt clearfix">
                            <div class="detail_sub_tt">丽江市玉龙纳西族自治县玉湖村墅家玉庐雪嵩院</div>
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
                            <dd>106.0平方米</dd>
                        </li>
                    </ul>
                </div>
                <div id="outSlideBox" class="outslidebox">
                    <div class="outslide-mask">
                        <div class="outslide">
                            <ul class="bd">
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAHbaiAAFJs8JVtVg839.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunEyAXgqDAAFnNunB_WE16.jpeg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugaWAWtpWAAEFNwxX8YM475.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/25/ChAFEViunPWAJY7QAAHgX7jn-Ng23.jpeg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAGJl9AAFyMF9Z-eU161.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugbyAdveXAAEfBrTHJT8366.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugceADliQAADq0hWsf3w517.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunGKAFMm2AAFXrIfCjcY55.jpeg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeOAYstVAAGY-nLNfZc616.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAay3wAAH-zDYctow097.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAArhwAAGBN4JIobQ606.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAFHZwAAHkgP-7_B0254.jpg_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAAXS8AAF5h1S6IX8434.jpg_Z_1200_800.jpg">
                                </li>
                            </ul>
                            <div class="nav_slide">
                                <ul class="hd clearfix">
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAHbaiAAFJs8JVtVg839.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunEyAXgqDAAFnNunB_WE16.jpeg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugaWAWtpWAAEFNwxX8YM475.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/25/ChAFEViunPWAJY7QAAHgX7jn-Ng23.jpeg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugbyAGJl9AAFyMF9Z-eU161.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugbyAdveXAAEfBrTHJT8366.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugceADliQAADq0hWsf3w517.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/12/ChAFFViunGKAFMm2AAFXrIfCjcY55.jpeg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeOAYstVAAGY-nLNfZc616.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAay3wAAH-zDYctow097.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAArhwAAGBN4JIobQ606.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/33/FD/ChAFFViugeSAFHZwAAHkgP-7_B0254.jpg_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/34/11/ChAFEViugeSAAXS8AAF5h1S6IX8434.jpg_Z_1200_800.jpg"></div>
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
                            <li> <i class="icon_supports dryer"></i>烘干机</li><!--烘干机-->
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
                            <li> <i class="icon_supports bathtub"></i>热水浴缸</li><!--热水浴缸-->

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
                            <li> <i class="icon_supports heater"></i>暖气</li><!--暖气-->
                            <!--电器-->
                            <!--卫浴-->

                            <!--设施-->
                            <li> <i class="icon_supports access"></i>门禁系统</li><!--门禁系统-->
                            <!--电器-->
                            <!--卫浴-->

                            <!--设施-->
                            <li> <i class="icon_supports book_tab"></i>书桌</li><!--书桌-->
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
                            丽江墅家玉庐·雪嵩院座落在玉龙雪山脚下依山傍水，风景如画的玉湖村。昔日木氏土司在此营建夏宫，修造玉龙书院，围养鹿场，足见自然环境造化。洛克先生亦钟情与此，长居27年，将所有眷念汇作《中国西南古纳西王国》，呈现给世人。丽江墅家玉庐·雪嵩院以地形为基础，以地貌为辅佐，践行天人合一理念。依山傍水，抬望终年皑皑的雪山巍峨，低头整个村落尽收眼底，远眺丽江古城繁荣全貌，将所有美好景致一收纳。大大的落地窗取代了传统纳西民居的昏暗，从日出到日落，温润阳光抚摸过每一寸角落，清爽空气流转在每一方空间。雪山融水绕屋潺潺，扶疏花木遍野。象征着吉祥的纳西悬鱼元素镶嵌，老船木有着斑驳的历史感。住店客人享用早餐及下午茶，蓝天雪山伴您在墅家玉庐共度丽江好时光。
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
                                3,499元
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
                                    早餐、急救包、停车位、允许吸烟、可做饭、可带萌宠
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
                            玉柱擎天:木氏土司夏宫: 曾经的木氏土司夏宫距雪嵩院不过百米，如今当年的建筑早已坍塌消失不见，但千年古树、高山湖泊群依旧在。清澈见底的湖水倒映着近处的雪山，树荫葱茏，是客人最喜欢的清晨与傍晚散步的后花园。
                            <br/>
                            <br/>古村落: 村落朴素自然，在繁华的丽江旅游业下依旧保持它千百年前的韵味。所有当地人的房子都用石头砌筑，含金量极高的矿石铺砌的羊肠小道穿行其间，几乎每一户人家都养狗、都种花。
                            <br/>
                            <br/>玉湖: 东北的玉湖与西北的雪嵩院遥相呼应。挑一个阳光灿烂的清晨，穿过整个村落的北部，大概半个小时就可以散步到玉湖了。湖边的高山草甸，散养的奶牛悠闲散着步，沉沉低鸣声快速消逝在巍峨的雪山里，天地山丘之大，让每一个徒步其间的人都心情开阔起来。
                        </div>
                    </div>
                </div>
                <div class="show_more_btn ">
                    <a href="javascript:;" id="arroundBtn" class="overflowBtn">查看全部</a>
                </div>
                <div class="map_box">
                    <div id="allmap" class="map"></div>
                    <div id="position" data-longitude="100.221275" data-latitude="27.019579" class="map_title">丽江市玉龙纳西族自治县玉湖村墅家玉庐雪嵩院</div>
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
                <div id="p7Score" class="detail"  >
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
                <p class="noMessage" >暂无评论</p>
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
                <h1>￥3499/晚</h1>
            </div>
            <!-- /expense_box -->
            <!-- data_box -->
            <div class="box data_box">
                <div class="headimg_box">
                    <dt>
                        <div class="headimg">
                            <img src="http://img.ziroom.com/minsu/g2/M00/37/0B/ChAFEVizvU2AHfhcAADHOULkv88115.jpg_Z_120_120.jpg">
                        </div>
                    </dt>
                    <dd>你好，我是墅家·玉庐雪嵩院</dd>
                </div>
                <ul class="btn_box">
                    <li class="btn_left"><a href="javascript:;">身份认证</a></li>
                    <li class="btn_right"><a href="javascript:;">房源认证</a></li>
                </ul>
                <div class="txt">
                    墅家创始人兼设计师聂老师介绍：
                    聂剑平，字煜峰，号明朗。
                    别墅及度假酒店策划师、建筑师、室内设计师、家具设计师、生活美学专家；
                    游历考察欧美别墅及酒店数十年。
                    墅家人文度假品牌创始人；
                    SMART乡创联盟副秘书长；
                    簇-中国设计酒店联盟发起人及理事；
                    深圳市室内设计师协会轮值会长；
                    深圳市陈设艺术协会副会长；

                    1981-1985年同济大学建筑系建筑学专业毕业；
                    1994年  成立深圳市世纪雅典居装饰设计工程有限公司；
                    1996年 移民澳洲，与他人合作开发设计高档别墅，创立墅家Villafound品牌；
                    1998年开设家具商场，专售进口法式、美式家具，提供陈设设计服务；
                    开始与万科、招商地产、华侨城地产、中海地产、中信集团、深国投等地产商合作地产类商业设计。
                    2002年 与合伙人成立澳洲墨尔雅设计顾问有限公司，专事于精品酒店与别墅设计；
                    2011年  创办墅居生活网
                    2012年  创办深圳市墅家文化与度假有限公司
                    2014年  婺源墅家•墨娑西冲院开业
                    2015年  婺源墅家•墨娑耕心堂开业
                    2015年  墅家玉庐·雪嵩院开业
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
<input type="hidden" id="fid" value="8a9099785a59019b015a69a60c9016b9">
<input type="hidden" id="rentWay" value="0">
<input type="hidden" id="lanUid" value="51616fad-6539-41b8-9bb2-f749aa6e24be">
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
