<%@ page import="com.rmj.common.Constant" %><%--
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
    <style>
        .curr{
            color:red;
        }
    </style>
</head>
<body>

<div id="topBar">
    <div class="area clearfix">
        <div class="glbLeft">
            <ul class="top_list">
                <li class="user">
                    <img src="http://pic.ziroom.com.cn/static/images/default.png" onerror="this.src='http://i.ziroom.com/static/2014/images/gjnone.png'" width="20"  width="20" class="img">
                    <span id="username"></span>
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
                    <a href="${pageContext.request.contextPath}/logout" rel="nofollow" id="tRegister">退出</a>
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
            <a href="javascript:;" title="我的资料" id="zi">我的资料</a>
            <a href="javascript:;" title="我的空间"  id="kj">我的空间</a>
            <a href="javascript:;" title="我的账户" >我的账户</a>
        </div>
        <div class="nav_r"><a href="index.jsp">返回首页</a></div>
    </div>
</div><!--/sub-header-->

<div class="area zone_cont clearfix" style="position: relative; z-index: 1; display:none">

    <div class="slideLeft" style="margin-top: 40px">
        <ul>
            <li class="myStore"><b></b><a href="javascript:;" id="sc">我的收藏</a></li>
            <li class="myLook"><b></b><a href="javascript:;">我的约看</a></li>
            <li class="myContract"><b></b><a href="javascript:;">我的合同</a></li>
        </ul>
    </div><!--/l_aside-->

    <div class="t_spacemainboxright" style="display: none;margin-top: 40px">
        <div class="ziroom_box_right">
            <div class="ziroom_box_right_h  lh30">
                <h3>房源订阅</h3>
            </div><!--ziroom_box_right_h -->
            <div class="ziroom_box_right_c">
                <div style="margin-bottom:8px;background:#eee;height:40px;line-height:40px;padding-left:10px;" class="clearfix">

                    <div class="fl">
                        <p class="fb color_333"><a href="javascript:;" class="org" >我的收藏</a></p></div>
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
                                    <a href="javascript:;" target="_blank">
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
                <div id="pagination" style="position: absolute;left:50%;transform: translate(-50%)" ></div>
            </div><!--ziroom_box_right_c -->
        </div>
    </div>
    <div class="mainRight notFrameBox" style="margin-top: 40px">
        <!-- 个人 -->
        <div class="person clearfix">
            <div class="photo fl" id="oimg">
                <img src="">
            </div>
            <div class="information fl">
                <p class="p1">欢迎您，<span><a href="javascript:;" id="nick"></a></span></p>
                <p class="p2"><a href="javascript:;">修改个人资料</a></p>
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
    </div>
</div>
<div class="clearfix area mainCon" >
    <div class="slideLeft">
        <div class="user">
            <div class="img" id="head">
                <img src="" width="100" height="100">
            </div>
            <p></p>
        </div>
        <ul>
            <li class="myUserInfo"><a href="javascript:;">个人信息</a></li>
            <li class="myCertificate"><a href="javascript:;">证件信息</a></li>
        </ul>
    </div><!--/slideLeft-->
    <div class="mainRight">
        <div class="title">个人信息</div>
        <div class="tableForm">
            <table>
                <tr class="trBorder">
                    <td width="100" >头像</td>
                    <td width="160" ><img src="" width="140" height="140" id="J-m-imgFileImg" style="border-radius: 50%" ></td>
                    <td width="600">
                        <form class="s-m-imgForm">
                            <input type="hidden" id="inn" name="id">
                            <input type="button" value="本地图片" class="ui_btn ui_org_btn" id="uploadImg">
                            <input type="button" value="确认" class="ui_btn ui_org_btn" id="uploadImg1">
                            <input type="file" name="headImage" id="J-m-imgFile" class="s-m-file">
                            <p class="gray mt10">仅支持JPG、PNG格式，文件小于3M</p>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top:40px;">昵称</td>
                    <td colspan="2" style="padding-top:40px;"><input type="text" id="nickname" class="ui_inp ui_inp_big" value=""></td>
                </tr>
                <tr style="">
                    <td>手机号</td>
                    <td colspan="2">
                        <input type="text" class="gray" id="mytel" value="" style="width: 115px" readonly>
                    </td>
                </tr>
                <tr  style="">
                    <td>邮箱</td>
                    <td colspan="2">
                        <input type="text" value="" class="gray" id="yzTel1" style="width: 162px">
                </tr>
                <tr  style="">
                    <td>密码</td>
                    <td colspan="2">
                       <div style="display: none" id="pwdbox">
                           <input type="password" id="pwd" >  <input type="button" value="确认" class="ui_btn ui_org_btn" id="changeped">
                       </div>
                        <a href="javascript:;" class="org j-m-change" id="chanmi">修改密码</a>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3">
                        <input id="save_button" type="button" value="保存" class="ui_btn ui_org_btn">
                    </td>
                </tr>
            </table>
        </div>
    </div><!--/clearfix-->

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
<script src="js/jquery-3.4.1.js"></script>
<script src="js/jquery.pagination.js"></script>
<script>
    $(function () {
        $("#sc").click(function () {
            $(".notFrameBox").hide();
            $(".t_spacemainboxright").show();
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/fav/getAll",
                data:{"tel":getCookie(),"pageNum":1,"pageSize":3},
                dataType:"json",
                success:function(data){
                    console.log(data)
                    <%--$("#pagination").pagination(data.totalRows,    //分布总数量，必须参数--%>
                        <%--{--%>
                            <%--callback: getData,  //PageCallback() 为翻页调用次函数。--%>
                            <%--prev_text: "« 上一页",--%>
                            <%--next_text: "下一页 »",--%>
                            <%--items_per_page:data.items.length,--%>
                            <%--num_edge_entries: 2,       //两侧首尾分页条目数--%>
                            <%--num_display_entries: 10,    //连续分页主体部分分页条目数--%>
                            <%--current_page: data.currentPage-1   //当前页索引--%>
                            <%--// link_to: "?id=__id__"  //分页的js中会自动把"__id__"替换为当前的数。0　--%>
                        <%--});--%>
                    <%--var classitem="";--%>
                    <%--$.each(data.items,function (i,val) {--%>
                        <%--if(val.tid==1){--%>
                            <%--var htype="合租";--%>
                        <%--}else{--%>
                            <%--htype="整租";--%>
                        <%--}--%>
                        <%--classitem+='<div class="item"> <div class="pic-box"> <a href="photoinfo.jsp?id="'+data.id+' target="_blank" class="pic-wrap"><img class="lazy ifme'+i+'" src="" alt=""></a> <span class="ico ico-video"></span> </div> <div class="info-box"> <h5 class="title sign"><a href="photoinfo.jsp" target="_blank" id="title">'+htype+'·'+val.address+'</a></h5> <div class="desc"> <div>'+val.area+'㎡ | '+val.roomNum+'室</div> </div> <div class="price"> <span class="rmb">￥</span><span class="num">'+val.price+'</span><span class="unit">/月</span></div><div class="tag"><span class="ta1">'+val.province+'</span><span class="ta2">'+val.city+'</span><span class="ta3">布丁4.0</span></div><div class="tips  air-high">'+val.description +'</div> </div> </div>';--%>
                        <%--$.ajax({--%>
                            <%--type:"post",--%>
                            <%--url:'${pageContext.request.contextPath}/hou/findhid',--%>
                            <%--data:{"hid":val.id},--%>
                            <%--dataType:"json",--%>
                            <%--success:function(data){--%>
                                <%--if(data.length>0){--%>
                                    <%--for(var i=0;i<data.length;i++){--%>
                                        <%--$(".item").find(".ifme"+i).attr("src","${pageContext.request.contextPath}"+data[i].image)--%>
                                    <%--}--%>
                                <%--}--%>
                            <%--}--%>
                        <%--})--%>
                    <%--});--%>
                    <%--$(".Z_list-box").html(classitem);--%>
                }
            });
        });
        $("#kj").click(function () {
            $(".mainCon").hide();
            $(".zone_cont").show();
            $(".t_spacemainboxright").hide();
            $(".notFrameBox").show()
        });
        $("#chanmi").click(function () {
            $(this).hide();
            $(this).prev().show();
        });
        $("#nickname").focus(function () {
            $(this).val("")
        });
        $("#yzTel1").focus(function () {
            $(this).val("")
        });
        $("#zi").click(function () {
            $(".zone_cont").hide();
            $(".mainCon").show();
        });
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/user/get",
            data:{"name":getCookie("user_cookie")},
            dataType:"json",
            success:function(data){
                $("#mytel").val(data.tel);
                $("#nickname").val(data.nickname);
                $("#nick").html(data.nickname);
                $("#yzTel1").val(data.email);
                $("#head>img").attr("src","${pageContext.request.contextPath}/"+data.image);
                $(".trBorder img").attr("src","${pageContext.request.contextPath}/"+data.image);
                $("#oimg>img").attr("src","${pageContext.request.contextPath}/"+data.image);
                var id=data.id;
                $("#inn").val(id);
                $("#uploadImg1").click(function () {
                    var form = new FormData($('.s-m-imgForm'));
                    form.append("headImage",$("#J-m-imgFile")[0].files[0]);
                    form.append("id",$("#inn").val());
                    $.ajax({
                        type:"post",
                        url:"${pageContext.request.contextPath}/user/udpateHead",
                        data:form,
                        processData:false,
                        contentType:false,
                        success:function(data){
                            location.reload();
                        }
                    })
                });
                $("#changeped").click(function () {
                    var email= $("#yzTel1").val();
                    var password=$("#pwd").val();
                        $.ajax({
                            type:"post",
                            url:"${pageContext.request.contextPath}/user/updatePwd",
                            data:{"id":id,"password":password,"email":email},
                            dataType:"json",
                            success:function(data){
                                if(data.msg=="邮箱不能为空"){
                                    $("#yzTel1").val(data.msg);
                                    $("#yzTel1").addClass("curr");
                                }else{
                                    $("#pwdbox").html(data.msg);
                                    $("#pwdbox").addClass("curr");
                                }
                            }
                        })
                });
                $("#save_button").click(function () {
                    var email= $("#yzTel1").val();
                    var name= $("#nickname").val();
                    $.ajax({
                        type:"post",
                        url:"${pageContext.request.contextPath}/user/updateNormal",
                        data:{"id":id,"nickname":name,"email":email},
                        dataType:"json",
                        success:function(data){
                            console.log(data)
                        }
                    })
                })
            }
        });
        $(".delete").click(function () {
            $(".delete_box").show();
            $(".cancel").click(function () {
                $(".delete_box").hide();
            });
            $(".confirm").click(function () {
                $(this).parents(".content_cs").hide();
            })
        });
        function getCookie() {
            var session = <%=session.getAttribute(Constant.USER_SESSION)%>
            return session
        }
        if(getCookie()!=null){
            $("#username").html(getCookie("user_cookie"));
        }
        $("#loginEntyWrapper").click(function () {
            if(getCookie()!=null){
                window.location.href="myinfo.jsp"
            }
        })

    })

</script>

