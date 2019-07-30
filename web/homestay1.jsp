<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 19:45
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
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2AWHgeAAzl7I1eMh8721.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMiAFGNRAAzfpFvb1Ns185.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMiAJlSeAA0ewptSCqg638.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMqAGn9CAA9MNSkVaY0506.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMqAb5ppAA26-sDkNSY844.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMuAKN5pAA44Mo96ugM482.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMyAMBIcAAzVcuOeJNc723.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMyAFmlNAAxfveedb0I558.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPM2ADdDJAA8RDEwRx4k607.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPN-AMNKWAA8486kfGWU860.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOmAcfuLAA2kvahCv68502.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPOqAUudRAAzuGI3oIa4848.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOyATp-OAAzHb3TJrXE035.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2ASRIqAA23-E3wIgU848.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO6AWyEbAA3JB0RLwIA826.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO-AGtNKAA7mKjZyuWU319.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRGAbOTGAAwJabQEr2M783.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPRKAVDiwAAwNmZdfW2s906.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRKAVJlzAAyS9MG1wc4002.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPROAdEDkAA01Jw96LX0080.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSOAC72RAA6bJHlet54731.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSSACx0jAA6RaJBmjcc479.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSWABE74AA7WkkTTkS8478.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSWAW9rzAAyBrh1p1uA251.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSaAT-jqAA-8JL-Ge5k136.JPG_Z_1200_800.jpg">
                        </li>
                        <li class="slide_item">
                            <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSeAC6EbAA7aisfxC24213.JPG_Z_1200_800.jpg">
                        </li>
                    </ul>
                    <div class="btn">
                        <a class="prev" href="javascript:void(0)"></a>
                        <a class="next" href="javascript:void(0)"></a>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_tt">
                        <h1>般若民宿 设计师作品之园林观景屋</h1>
                        <div class="detail_txt clearfix">
                            <div class="detail_sub_tt">丽江市古城区玉龙白沙古镇岩脚村1号般若民宿</div>
                            <div class="star_box clearfix">
                                <ul class="stars clearfix"  data-val="5.0"  >
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                    <li class="star"></li>
                                </ul>
                                (1条评价)
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
                            <dd>30.0平方米</dd>
                        </li>
                    </ul>
                </div>
                <div id="outSlideBox" class="outslidebox">
                    <div class="outslide-mask">
                        <div class="outslide">
                            <ul class="bd">
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2AWHgeAAzl7I1eMh8721.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMiAFGNRAAzfpFvb1Ns185.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMiAJlSeAA0ewptSCqg638.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMqAGn9CAA9MNSkVaY0506.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMqAb5ppAA26-sDkNSY844.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMuAKN5pAA44Mo96ugM482.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMyAMBIcAAzVcuOeJNc723.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMyAFmlNAAxfveedb0I558.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPM2ADdDJAA8RDEwRx4k607.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPN-AMNKWAA8486kfGWU860.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOmAcfuLAA2kvahCv68502.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPOqAUudRAAzuGI3oIa4848.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOyATp-OAAzHb3TJrXE035.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2ASRIqAA23-E3wIgU848.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO6AWyEbAA3JB0RLwIA826.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO-AGtNKAA7mKjZyuWU319.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRGAbOTGAAwJabQEr2M783.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPRKAVDiwAAwNmZdfW2s906.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRKAVJlzAAyS9MG1wc4002.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPROAdEDkAA01Jw96LX0080.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSOAC72RAA6bJHlet54731.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSSACx0jAA6RaJBmjcc479.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSWABE74AA7WkkTTkS8478.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSWAW9rzAAyBrh1p1uA251.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSaAT-jqAA-8JL-Ge5k136.JPG_Z_1200_800.jpg">
                                </li>
                                <li class="slide_item">
                                    <img _src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSeAC6EbAA7aisfxC24213.JPG_Z_1200_800.jpg">
                                </li>
                            </ul>
                            <div class="nav_slide">
                                <ul class="hd clearfix">
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2AWHgeAAzl7I1eMh8721.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMiAFGNRAAzfpFvb1Ns185.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMiAJlSeAA0ewptSCqg638.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMqAGn9CAA9MNSkVaY0506.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMqAb5ppAA26-sDkNSY844.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMuAKN5pAA44Mo96ugM482.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPMyAMBIcAAzVcuOeJNc723.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPMyAFmlNAAxfveedb0I558.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3E/ChAFEVhBPM2ADdDJAA8RDEwRx4k607.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPN-AMNKWAA8486kfGWU860.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOmAcfuLAA2kvahCv68502.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPOqAUudRAAzuGI3oIa4848.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPOyATp-OAAzHb3TJrXE035.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPO2ASRIqAA23-E3wIgU848.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO6AWyEbAA3JB0RLwIA826.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPO-AGtNKAA7mKjZyuWU319.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRGAbOTGAAwJabQEr2M783.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPRKAVDiwAAwNmZdfW2s906.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPRKAVJlzAAyS9MG1wc4002.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPROAdEDkAA01Jw96LX0080.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSOAC72RAA6bJHlet54731.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSSACx0jAA6RaJBmjcc479.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSWABE74AA7WkkTTkS8478.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/3F/ChAFEVhBPSWAW9rzAAyBrh1p1uA251.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSaAT-jqAA-8JL-Ge5k136.JPG_Z_1200_800.jpg"></div>
                                        <div class="bg"></div>
                                    </li>
                                    <li class="slide_item">
                                        <div class="img_box"><img src="http://img.ziroom.com/minsu/g2/M00/0E/2B/ChAFFVhBPSeAC6EbAA7aisfxC24213.JPG_Z_1200_800.jpg"></div>
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
                            她，就在山脚下，是去丽江福国寺或者文海的必经之地，安安静静的，也不慌张，但光凭外部简约的设计，明显的风格就能将你吸引。    厨房每日免费供应三餐，当然你也可以自己动手做饭；在院子里品茗一杯茶，听核桃随风落地而响的声音；在室外泳池里游个泳，一切仿佛都可以重头来过；爬到二楼，雪山和向日葵就这样一起落入眼前，脚下是丽江最古老的村落；傍晚，恰好有一场烧烤趴，就着火光看着夜晚的星空，重拾儿时珍贵的记忆。    般若的房间外部风格统一，但内部却各有千秋，星空房、田园风光房、雪上观景房等等，能满足您的住宿需求及偏好。选用无印良品的床品加上香港海马乳胶床垫，力求给旅途劳顿的您一个最舒适的“家”。每个房间的通风采光都较好，24小时热水，纯天然竹制的牙刷，就在般若唤醒您的全新一天！床品保证一客一换，公共用品进行消毒处理。除了这些，民宿还提供免费的停车位，免费接站等服务。雪山脚下，束河北面，般若民宿，静等你来。
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
                                800元
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
                                    早餐、家庭晚餐、急救包、可做饭
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
                            交通
                            <br/>丽江福国寺 驾车约8分钟
                            <br/>文海 驾车约57分钟
                            <br/>玉水寨 驾车约19分钟
                            <br/>玉柱擎天风景区 驾车约22分钟
                            <br/>白沙古镇 步行约9分钟
                            <br/>丽江三义机场 驾车约1小时
                            <br/>丽江火车站 驾车约36分钟
                            <br/>丽江高快客运站 驾车约21分钟
                            <br/>丽江客运站 驾车约29分钟
                        </div>
                    </div>
                </div>
                <div class="show_more_btn ">
                    <a href="javascript:;" id="arroundBtn" class="overflowBtn">查看全部</a>
                </div>
                <div class="map_box">
                    <div id="allmap" class="map"></div>
                    <div id="position" data-longitude="100.224037" data-latitude="26.959808" class="map_title">丽江市古城区玉龙白沙古镇岩脚村1号般若民宿</div>
                </div>
            </div>
            <!-- /part5 -->
            <!-- part6 -->
            <div id="part6" class="part part6">
                <div class="detail clearfix">
                    <div class="detail_left">房屋守则</div>
                    <div class="detail_right">
                        <div class="detail_rules">
                            入住时间：当日14：00以后<br/>退房之前：次日12：00之前<br/>请勿大声喧哗，如若晚归，请保持安静<br/>请保持屋内整洁，勿在床上吸烟<br/>不接受16岁以下客人单独入住<br/>切勿轻易搭讪古城闲杂人员
                        </div>
                    </div>
                </div>
            </div>
            <!-- /part6 -->
            <!-- part7 -->
            <div id="part7" class="part part7">
                <ul class="part7_tt clearfix">
                    <li class="active">本房源评价(1)</li>
                    <li class="all_rooms">房东的所有评价(1)</li>
                </ul>
                <div id="p7Score" class="detail" style="display: block;">
                    <div class="score_box clearfix">
                        <div class="score_left">
                            <div class="score_main">
                                <dt> <span>5.0</span>/5分 </dt>
                                <dd class="star_box lg">
                                    <ul class="stars" data-val="5.0">
                                        <li class="star active"></li>
                                        <li class="star active"></li>
                                        <li class="star active"></li>
                                        <li class="star active"></li>
                                        <li class="star active"></li>
                                    </ul>
                                </dd>
                            </div>
                        </div>
                        <div class="score_right">
                            <ul class="score_list clearfix">
                                <li>整洁卫生  5.0分</li>
                                <li>描述相符  5.0分</li>
                                <li>房东印象  5.0分</li>
                                <li>交通位置  5.0分</li>
                                <li>性价比  5.0分</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <ul id="commentList" class="comment_list"><li class="comment_li clearfix"><div class="comment_left"><div class="headimg"><img src="http://pic.ziroom.com.cn/static/images/girl.png"></div></div><div class="comment_right"><div class="comment_item"><ul class="comment_tt clearfix"><li class="comment_tt_name c_g">自如客8a8ca</li><li class="comment_tt_date c_6">入住时间：2017-05</li></ul><div class="comment_txt">非常喜欢般若，房子主人非常友善，热情，从我们到丽江，中间进出古镇都是车接车送，为我们做丰盛的餐食，介绍当地的特色，总之让我们的出行非常的愉快，以后有机会相信会再相聚的。</div></div></div></li></ul>
                <p class="noMessage" style="display: none;">暂无评论</p>
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
                <h1>￥800/晚</h1>
            </div>
            <!-- /expense_box -->
            <!-- data_box -->
            <div class="box data_box">
                <div class="headimg_box">
                    <dt>
                        <div class="headimg">
                            <img src="http://img.ziroom.com/minsu/g2/M00/0B/73/ChAFFVg2zASAaTByAAY5Gi9__Y8666.jpg_Z_120_120.jpg">
                        </div>
                    </dt>
                    <dd>你好，我是飞阳</dd>
                </div>
                <ul class="btn_box">
                    <li class="btn_left"><a href="javascript:;">身份认证</a></li>
                    <li class="btn_right"><a href="javascript:;">房源认证</a></li>
                </ul>
                <div class="txt">
                    云游四方的设计师。在丽江白沙古镇寻了处老房子，自己亲手设计建造，养一匹马，种下一片向日葵。踏实生活，认真公益。一个人的日子，云里来云里去，不活在别人的嘴里，也不活在别人的眼里。自由，是不活在别人的想象里。
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
<input type="hidden" id="fid" value="8a90997758943b6d0158960e5d6d081b">
<input type="hidden" id="rentWay" value="0">
<input type="hidden" id="lanUid" value="503e4c2f-f222-43ed-b505-eda595e78d75">
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

