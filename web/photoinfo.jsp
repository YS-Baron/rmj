<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/photoinfo.css" />
</head>
<body>
<!-- Header  头部 -->
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
            <div class="Z_login_top" id="loginEntyWrapper" style="cursor: pointer">
                <a href="login.jsp" class="Z_exit" rel="nofollow" id="zLogin">登录</a>
                <a href="javascript:;" class="Z_exit_line">|</a>
                <a href="register.jsp" class=" Z_exit" rel="nofollow" id="zRegister">注册</a>
            </div>
            <div class="Z_login_top" style="display: none" id="login_out">
                <a href="#" class=" Z_headtop_tel" rel="nofollow"></a>
                <a href="#" class=" Z_exit" rel="nofollow" id="tRegister">退出</a>
            </div>
        </div>
    </div>
</header>
<!--初始化参数-->
<section class="Z_container Z_main">
    <!-- 房屋基本信息模块 -->
    <section class="Z_info_main">
        <div class="Z_swiper_box" id="Z_swiper_box">
            <div class="Z_setup ">
                <button type="button" name="button" id="collect" class="Z_setup_share collect">收藏 <i class="glyphicon glyphicon-heart"></i></button>
            </div>
            <div class="Z_sliders">
                <ul>

                    <li class="Z_slider" >
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A2/CtgFCV0PWdmAVogTAA1ieoUlZ4w607.jpg_C_800_600_Q80.jpg">
                    </li>
                </ul>

            </div>
            <div class="Z_swiper_thumb">
                <ul class="Z_swiper_thumb_inner Z_sliders_nav">
                    <li class="curr" data-index="0">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A2/CtgFCV0PWdmAVogTAA1ieoUlZ4w607.jpg_C_380_285_Q80.jpg">
                    </li>

                    <li class="curr" data-index="1">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A5/CtgFCV0PWiGANfntAA3YiqsY128394.jpg_C_800_600_Q100.jpg">
                    </li>
                    <li class="curr" data-index="2">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A3/CtgFCF0PWayATvBiAA2y_vngYR8119.jpg_C_380_285_Q80.jpg">
                    </li>
                    <li class="curr" data-index="3">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A7/CtgFCF0PWgmAfUNEAAz_eiq5kaI598.jpg_C_800_600_Q100.jpg">
                    </li>
                    <li class="curr" data-index="4">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A4/CtgFCF0PWbmABEqrAA7goQ9IEb8249.jpg_C_380_285_Q80.jpg">
                    </li>

                    <li class="curr" data-index="5">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A6/CtgFCV0PWjOAfQOVABDlbp-dFi0304.jpg_C_800_600_Q100.jpg">
                    </li>
                    <li class="curr" data-index="6">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A7/CtgFCF0PWgmAfUNEAAz_eiq5kaI598.jpg_C_800_600_Q100.jpg">
                    </li>
                    <li class="curr" data-index="7">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A5/CtgFCV0PWiGANfntAA3YiqsY128394.jpg_C_800_600_Q100.jpg">
                    </li>
                    <li class="curr" data-index="8">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A7/CtgFCF0PWg2AWUhQABAlOMYcmno422.jpg_C_800_600_Q100.jpg">
                    </li>

                    <li class="curr" data-index="9">
                        <img src="//img.ziroom.com/pic/house_images/g2/M00/51/CD/ChAFfVqv7EqAXguzAAKXPuyJBi4239.jpg_C_380_285_Q80.jpg">
                    </li>
                </ul>

            </div>
        </div>
        <!-- 轮播图区域 -->
        </div>
    </section>

    <!-- 右侧边栏 -->
    <aside class="Z_info_aside" >
        <h1 class="Z_name"><i class="status iconicon_sign"></i>如美友家·锦荟PARK·4居室-01卧</h1>
        <div class="Z_price">
            <span>￥</span>
            <i class="num" style="background-position:-93.72px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);" ></i>
            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);" ></i>
            <i class="num" style="background-position:-218.68px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);" ></i>
            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);" ></i>
            <span>/月（季付价）</span>
        </div>
        <p class="price_rule">服务费另计，详情见<a id="lookPayWay" href="javascript:;">付款方式</a></p>

        <ul class="Z_activity">

            <li>
                <span class="label">海燕计划</span>毕业生租房月付/0押金/送搬家</li>
            <li>
                <span class="label">签约福利</span>领2019元入住礼包/好物0元送 </li>
            <li>
                <span class="label">如美搬家</span>师傅全程搬运 价格合理透明 </li>
        </ul>
        <div class="Z_home_info">
            <div class="Z_home_b clearfix">
                <dl class="">
                    <dd>11.9㎡</dd>
                    <dt>使用面积</dt>
                </dl>
                <dl class="">
                    <dd>朝南</dd>
                    <dt>朝向</dt>
                </dl>
                <dl class="">
                    <dd>4室1厅</dd>
                    <dt>户型</dt>
                </dl>
            </div>
            <div class="Z_down" id="Z_down">
                <i class="iconfont iconicon_unfold__c_"></i>
            </div>
            <div id="aside_scrollbase"></div>
            <div id="aside_fixed">
                <div class="Z_order">
                    <p class="collecttip" style="color: #fff"><i class="iconfont iconicon_heart_outline__c_"></i>房源已被收藏</p>
                </div>
            </div>
        </div>
    </aside>
</section>

<div class="Z_isection Z_container">
    <h2 class="Z_info_title mb30 mt30">推荐房源</h2>
    <div class="Z_info_body">
        <ul class="Z_house_list">
            <li class="Z_house_item">
                <a href="//sz.ziroom.com/x/784705541.html">
                    <div class="Z_house_img">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A2/CtgFCV0PWdmAVogTAA1ieoUlZ4w607.jpg_C_380_285_Q100.jpg" alt="深圳合租锦荟PARK2060租房户型实景图">
                    </div>
                </a>
                <div class="Z_house_info">
                    <h5><a href="//sz.ziroom.com/x/784705541.html">
                        <span class="house_status"></span>
                        <i class="status iconicon_sign"></i>
                        合租·锦荟PARK4居室-南卧</a>
                    </h5>
                    <div class="Z_house_baseinfo  clearfix">
                        <div class="base_left">
                            <p>11.9㎡ | 15/33层</p>
                        </div>
                        <div class="base_right">
                            <span>¥</span>
                            <i class="num" style="background-position:-74.7px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-174.3px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <span>/月</span>
                        </div>
                    </div>
                    <div class="house_tags clearfloat">
                        <img src="https://image.ziroom.com/g2m1/M00/42/73/ChAFBlvW2J6AZtJtAAAfl2T06pY936.png">
                        <span class="tag">短租</span>
                        <span class="tag">拿铁4.0</span>
                    </div>
                    <div class="house_other">
                        <img src="//static8.ziroom.com/phoenix/pc/images/2019/airgreen.png" >
                        空气质量已检测, 空置已超过30天                                            </div>
                </div>

            </li>
            <li class="Z_house_item">
                <a href="//sz.ziroom.com/x/741057093.html">
                    <div class="Z_house_img">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/37/93/CtgFCF01sm-AaEFLAAMb5qM4R9E021.jpg_C_380_285_Q100.jpg" alt="深圳合租锦荟PARK1990租房户型实景图">
                        <!--	                    <p class="tip">签约立减服务费219元</p>-->
                    </div>
                </a>
                <div class="Z_house_info">
                    <h5><a href="//sz.ziroom.com/x/741057093.html">
                        <span class="house_status"></span>
                        <i class="status iconicon_sign"></i>
                        合租·锦荟PARK4居室-南卧</a>
                    </h5>
                    <div class="Z_house_baseinfo  clearfix">
                        <div class="base_left">
                            <p>10.7㎡ | 25/33层</p>
                        </div>
                        <div class="base_right">
                            <span>¥</span>
                            <i class="num" style="background-position:-99.6px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-224.1px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-224.1px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <span>/月</span>
                        </div>
                    </div>
                    <div class="house_tags clearfloat">
                        <span class="tag">短租</span>
                        <span class="tag">独立卫生间</span>
                        <span class="tag">拿铁4.0</span>
                    </div>
                    <div class="house_other">
                    </div>
                </div>

            </li>
            <li class="Z_house_item">
                <a href="//sz.ziroom.com/x/784705832.html">
                    <div class="Z_house_img">
                        <img src="//img.ziroom.com/pic/house_images/g2m2/M00/70/A3/CtgFCV0PWfyAMDlgAA82BKEnnXk568.jpg_C_380_285_Q100.jpg" alt="深圳合租锦荟PARK1690租房户型实景图">
                        <!--	                    <p class="tip">签约立减服务费219元</p>-->
                    </div>
                </a>
                <div class="Z_house_info">
                    <h5><a href="//sz.ziroom.com/x/784705832.html">
                        <span class="house_status"></span>
                        <i class="status iconicon_sign"></i>
                        合租·锦荟PARK4居室-北卧</a>
                    </h5>
                    <div class="Z_house_baseinfo  clearfix">
                        <div class="base_left">
                            <p>9.9㎡ | 15/33层</p>
                        </div>
                        <div class="base_right">
                            <span>¥</span>
                            <i class="num" style="background-position:-99.6px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-174.3px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-224.1px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <i class="num" style="background-position:-0px;background-image: url(//static8.ziroom.com/phoenix/pc/images/2019/price/7995074a73302d345088229b960929e9.png);"></i>
                            <span>/月</span>
                        </div>
                    </div>
                    <div class="house_tags clearfloat">
                        <img src="https://image.ziroom.com/g2m1/M00/42/73/ChAFBlvW2J6AZtJtAAAfl2T06pY936.png">
                        <span class="tag">短租</span>
                        <span class="tag">布丁4.0</span>
                    </div>
                    <div class="house_other">
                        <img src="//static8.ziroom.com/phoenix/pc/images/2019/airgreen.png" >
                        空气质量已检测, 空置已超过30天                                            </div>
                </div>

            </li>
        </ul>
    </div>
</div>

<div id="footer">
    <div class="area">
        <div class="clearfix">
            <div class="glbLeft">
                <dl class="fList">
                    <dt>关于我们</dt>
                    <dd>
                        <a href="http://www.ziroom.com/zhaopin/index.php?r=site/about">关于如美</a>
                        <a href="http://www.ziroom.com/about/lianxi.html">联系如美</a>
                        <a href="http://www.ziroom.com/zhaopin/">加入如美</a>
                    </dd>
                </dl>
                <dl class="fList">
                    <dt>如美业务</dt>
                    <dd>
                        <a href="http://www.ziroom.com/about/fuwu.html">业务体系</a>
                        <a href="http://www.ziroom.com/about/fuwu.html">如美产品</a>
                        <a href="http://www.ziroom.com/servicecentre/">如美服务</a>
                    </dd>
                </dl>
                <dl class="fList">
                    <dt>关注如美</dt>
                    <dd>
                        <a >如美家微信</a>
                        <a >下载app</a>
                    </dd>
                </dl>
            </div><!--/glbLeft-->
        </div>


        <div class="footerBottom">
            <p>Copyright@2019 ruemejar.com  版权所有</p>
        </div>
    </div><!--/area-->
</div><!--/footer-->
<!-- FOOTER -->
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    $(function () {
        function getCookie(cookieName) {
            var strCookie = document.cookie;
            var arrCookie = strCookie.split("; ");
            for(var i = 0; i < arrCookie.length; i++){
                var arr = arrCookie[i].split("=");
                if(cookieName == arr[0]){
                    return arr[1];
                }
            }
            return null;
        }
        if(getCookie("user_cookie").length>=8){
            $("#loginEntyWrapper").html(getCookie("user_cookie"));
            $("#login_out").show();
        }
        $("#loginEntyWrapper").click(function () {
            if(getCookie("user_cookie").length>=8){
                window.location.href="myinfo.jsp"
            }
        });
        $("#tRegister").click(function () {
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/logout",
                success:function(data){

                }
            })
        })
        $("#collect").click(function () {
            $("#aside_fixed").show();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/fav/add",
            })
        });
        $(".curr").click(function () {
            $(this).parents("#Z_swiper_box").find(".Z_slider img").attr('src',$(this).children("img").attr("src"))
        });
    })

</script>
