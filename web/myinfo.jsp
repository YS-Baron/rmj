<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>我的如美家</title>
    <meta content="width=1200, initial-scale=1, maximum-scale=1, user-scalable=1" name="viewport" />
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/myinfo.css" />
</head>
<body>

<div id="topBar">
    <div class="area clearfix">
        <div class="glbLeft">
            <ul class="top_list">
                <li class="user">
                    <img src="http://pic.ziroom.com.cn/static/images/default.png" onerror="this.src='http://i.ziroom.com/static/2014/images/gjnone.png'" width="20"  width="20" class="img">
                    13767150623
                    <i class="line"></i>
                    <b class="icon"></b>
                    <div class="con">
                        <a href="javascript:;">个人空间</a>
                        <a href="javascript:;">编辑资料</a>
                        <a href="javascript:;">我的约看</a>
                        <!--<a href="http://i.ziroom.com/index.php?uri=integral/integral&amp;myIntegral=0">我的积分</a>-->
                    </div>
                </li>
                <li>
                    <a href="http://passport.ziroom.com/logout.html" rel="nofollow">退出</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div id="header">
    <div class="area clearfix">
        <h1 class="logo">
            <a href="index.html">
                <img src="images/index-image/logo.png" width="150" height="43">
            </a>
        </h1>
        <div class="nav">
            <a href="javascript:;" title="我的资料">我的资料</a>
            <a href="javascript:;" title="我的空间" class="active" id="kj">我的空间</a>
            <a href="javascript:;" title="我的账户" >我的账户</a>
        </div>
        <div class="nav_r"><a href="index.jsp">返回首页</a></div>
    </div>
</div><!--/sub-header-->

<div class="area zone_cont clearfix" style="position: relative; z-index: 1;">

    <div class="slideLeft">
        <ul>
            <li class="myStore"><b></b><a href="javascript:;" id="sc">我的收藏</a></li>
            <li class="myLook"><b></b><a href="javascript:;">我的约看</a></li>
            <li class="myContract"><b></b><a href="javascript:;">我的合同</a></li>
        </ul>
    </div><!--/l_aside-->





    <div class="t_spacemainboxright" style="display: none">
        <div class="ziroom_box_right">
            <div class="ziroom_box_right_h  lh30">
                <h3>房源订阅</h3>
            </div><!--ziroom_box_right_h -->
            <div class="ziroom_box_right_c">
                <div style="margin-bottom:8px;background:#eee;height:40px;line-height:40px;padding-left:10px;" class="clearfix">

                    <div class="fl">
                        <p class="fb color_333"><a href="javascript:;" class="org" onclick="del()">我的收藏</a></p></div>
                    <div class="fr page_c" id="page_show"></div>
                </div>
                <table class="collect_sheet" width="100%" cellspacing="0" cellpadding="0">
                    <tbody id="tbody">
                    <tr class="ttl_cs">
                        <td class="td_firsr">房源信息</td>
                        <td class="td_second">价格</td>
                        <td class="td_second">状态</td>
                        <td class="td_second">收藏时间</td>
                        <td class="td_second">收藏人气</td>
                        <td class="td_second">操作</td>
                    </tr>
                    <tr class="content_cs">
                        <td>
                            <div class="left_imgs clearfix">
                                <div class="imgs">
                                    <a href="//sz.ziroom.com/z/vr/62066279.html" target="_blank">
                                        <img src="http://pic.ziroom.com/house_images/g2m1/M00/25/F7/v180x135_ChAFBlx2Wg-AJu-pAAKX2muAfZI181.jpg" onerror="this.src='http://pic.ziroom.com/static/images/slist_1207/small_pzz.jpg'" width="137" height="91">
                                    </a>
                                </div>
                                <div class="txt_li">
                                    <p class="p1"><a href="javascript:;" target="_blank">龙华区清湖4号线(龙华线)龙华富通天骏4居室</a></p>
                                    <p class="p2">7/11层 | 10.5 平方米 |合租</p>
                                </div>
                            </div>
                        </td>
                        <td class="price_c">1890元/月</td>
                        <td>可入住</td><td>2019-07-08</td>
                        <td>3</td>
                        <td>
                            <div class="de_v_box" style="position:relative">
                                <a href="javascript:;" class="delete">删除</a>
                                <div class="delete_box" style="display:none;">
                                    <p class="con_de">确认要删除该收藏吗？</p>
                                    <div class="d_btn">
                                        <a href="javascript:;" class="confirm">确认</a>
                                        <a href="javascript:;" class="cancel">取消</a>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="page_collect"></div>
            </div><!--ziroom_box_right_c -->
        </div>
    </div>
    <div class="mainRight notFrameBox">
        <!-- 个人 -->
        <div class="person clearfix">
            <div class="photo fl">
                <img src="http://i.ziroom.com/static/2014/images/gjnone.png" onerror="this.src='http://i.ziroom.com/static/2014/images/gjnone.png'">
            </div>
            <div class="information fl">
                <p class="p1">下午好，<span><a href="javascript:;">如美客</a></span></p>
                <p class="p2"><a href="http://passport.ziroom.com/index.php?r=user/index">修改个人资料</a></p>
                <p class="p3">
                    <span class="active">已绑定手机号</span>
                    <span>未绑定邮箱</span>
                </p>
            </div>
            <div class="line fr"></div>
            <div class="wallet fr"><p class="p1">钱包余额</p><p class="p2"><span>¥</span><a href="javascript:;">0</a></p></div>
        </div>

        <!-- 履行中合同 -->
        <div class="contract">
            <h5>履行中合同</h5>
            <p class="noContent">您还没有履行中的合同，快去签约吧！</p>
        </div>

        <!-- 最近收藏 -->
        <div class="collection">
            <h5>最近收藏</h5>
            <ul class="clearfix"><li><a href="http://www.ziroom.com/z/vr/62066279"><div class="img"><img src="http://pic.ziroom.com/house_images/g2m1/M00/25/F7/ChAFBlx2Wg-AJu-pAAKX2muAfZI181.jpg" onerror="this.src='http://www.ziroom.com//static/images/slist_1207/yuanwei-up.jpg'" width="285" height="190"></div><div class="clearfix"><p class="name fl">龙华区清湖4号线(龙华线)龙华富通天骏4居室-南卧</p><p class="price fr">¥1890/月</p></div></a></li></ul>
        </div>    </div>
</div><!--t_spacemainbox -->


<!--页脚-->
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

</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    $(function () {
        $("#sc").click(function () {
            $(".notFrameBox").hide();
            $(".t_spacemainboxright").show()
        })
        $("#kj").click(function () {
            $(".t_spacemainboxright").hide();
            $(".notFrameBox").show()
        })
        $(".delete").click(function () {
            $(".delete_box").show();
            $(".cancel").click(function () {
                $(".delete_box").hide();
            })
            $(".confirm").click(function () {
                $(this).parents(".content_cs").hide();
            })
        })
    })

</script>
