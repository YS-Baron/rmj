<%@ page import="com.rmj.common.Constant" %><%--
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
    <link href="css/pagination.css" rel="stylesheet">
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

            </ul>
            <div class="Z_login_top" id="loginEntyWrapper" style="cursor: pointer">
                <a href="login.jsp?from=user.jsp" class="Z_exit" rel="nofollow" id="zLogin">登录</a>
                <a href="javascript:;" class="Z_exit_line">|</a>
                <a href="register.jsp" class=" Z_exit" rel="nofollow" id="zRegister">注册</a>
            </div>
            <div class="Z_login_top" style="display: none" id="login_out">
                <a href="#" class=" Z_headtop_tel" rel="nofollow"></a>
                <a href="${pageContext.request.contextPath}/logout" class=" Z_exit" rel="nofollow" id="tRegister">退出</a>
            </div>
        </div>
    </div>
</header>

<section class="Z_content">
    <!-- search box -->
    <div class="Z_container Z_search_box">
        <div class="Z_search_main">
            <input type="text" class="Z_search_input" id="Z_search_input" placeholder="请输入具体地址..." value="" />
            <a href="javascript:void(0)" class="Z_search_btn Z_search_submit Z_btn_ani" id="Z_search_submit" style="text-decoration: none"><i class="z_i"></i>开始找房</a>
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
                        <span class="opt-name">省份</span>
                    </div>
                    <div class="opt-type ">
                        <span class="opt-name">城市</span>
                        <div class="child-opt">
                            <select class="form-control"  id="selProvince" onchange="changeCity()">
                                <option></option>
                            </select>
                                <select class="form-control" id="selCity">
                                    <option></option>
                                    </select>
                        </div>
                    </div>
                </div>
            </li>
            <li class="f-item">
                <strong class="title">类型</strong>
                <div class="opt">
                    <div class="price" id="ztype">
                        <span class="left" style="margin-right: 20px;"><input type="checkbox"  id="he">合租</span>  <input type="checkbox" name="ztype" id="zheng">整租
                    </div>
                </div>
            </li>
            <li class="f-item">
                <strong class="title">租金</strong>
                <div class="opt">
                    <a class="active sele" href="javascript:;">不限</a>
                    <a class="" href="javascript:;">1500元以下</a>
                    <a class="" href="javascript:;">1500-2500元</a>
                    <a class="" href="javascript:;">2500-4000元</a>
                    <a class="" href="javascript:;">4000-6000元</a>
                    <a class="" href="javascript:;">6000-8000元</a>
                    <a class="" href="javascript:;">8000-10000元</a>
                    <a class="" href="javascript:;">10000元以上</a>
                    <div class="price" id="range">
                        <input type="text" name="low" class="low num" value="0" placeholder="0">&nbsp;- <input type="text" name="high" class="high num" value="">&nbsp;元
                    </div>
                </div>
            </li>
            <li class="f-item">
                <strong class="title">面积</strong>
                <div class="opt">
                    <div class="price" id="area">
                        <input type="text" name="low" class="low num" value="0" placeholder="0">&nbsp;- <input type="text" name="high" class="high num" value="">&nbsp;㎡
                    </div>
                </div>
            </li>
        </ul>
    </div>

    <div class="Z_list">
        <div class="Z_list-box">

        </div>
    </div>
        <div id="pagination" style="position: absolute;left:50%;transform: translate(-50%)" ></div>
</section>
</body>
</html>

<script src="js/jquery-1.11.1.js"></script>
<script src="js/jquery-3.4.1.js"></script>
<script src="js/jquery.pagination.js"></script>
<script>
    var cityList = new Array();
    cityList['北京市'] = ['朝阳区','东城区','西城区', '海淀区','宣武区','丰台区','怀柔','延庆','房山'];
    cityList['上海市'] = ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'];
    cityList['广州省'] = ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市'];
    cityList['深圳市'] = ['福田区', '罗湖区', '盐田区', '宝安区', '龙岗区', '南山区'];
    cityList['重庆市'] = ['俞中区', '南岸区', '江北区', '沙坪坝区', '九龙坡区', '渝北区', '大渡口区', '北碚区'];
    cityList['天津市'] = ['和平区', '河西区', '南开区', '河北区', '河东区', '红桥区', '塘古区', '开发区'];
    cityList['江苏省'] = ['南京市','苏州市','无锡市'];
    cityList['浙江省'] = ['杭州市','宁波市','温州市'];
    cityList['四川省'] = ['成都市','绵阳市'];
    cityList['海南省'] = ['海口市','三亚市'];
    cityList['福建省'] = ['福州市','厦门市','泉州市','漳州市'];
    cityList['山东省'] = ['济南市','青岛市','烟台市'];
    cityList['江西省'] = ['南昌市','九江市'];
    cityList['广西省'] = ['柳州市','南宁市'];
    cityList['安徽省'] = ['合肥市','芜湖市'];
    cityList['河北省'] = ['邯郸市','石家庄市'];
    cityList['河南省'] = ['郑州市','洛阳市'];
    cityList['湖北省'] = ['武汉市','宜昌市'];
    cityList['湖南省'] = ['长沙市','衡阳市'];
    cityList['陕西省'] = ['西安市','宝鸡市'];
    cityList['山西省'] = ['太原市','大同市'];
    cityList['黑龙江省'] = ['哈尔滨市','大庆市'];
    function changeCity(){
        var province=document.getElementById("selProvince").value;
        var city=document.getElementById("selCity");
        city.options.length=0; //清除当前city中的选项
        for (var i in cityList){
            if (i == province){
                for (var j in cityList[i]){
                    city.add(new Option(cityList[i][j],cityList[i][j]),null);
                }
            }
        }
    }
    function allCity(){
        var province=document.getElementById("selProvince");
        for (var i in cityList){
            province.add(new Option(i, i),null);
        }
    }
    window.onload=allCity;
        window.onpageshow = function(event) {
            if (event.persisted) {
                window.location.reload();
            }
        }
        function getCookie() {
            var session = <%=session.getAttribute(Constant.USER_SESSION)%>
            return session
        }
        if(getCookie()!=null){
            $("#loginEntyWrapper").html(getCookie());
            $("#login_out").show();
        }
        $("#loginEntyWrapper").click(function () {
            if(getCookie()!=null){
                window.location.href="myinfo.jsp"
            }
        });
        $(".opt-name").click(function () {
                $(".child-opt").show();
                $(this).parents(".f-item").addClass("current")
            });
    var sPrice=-1;
    var ePrice=-1;
    var sArea=-1;
    var eArea=-1;
    var province="";
    var city="";
    var address="";
    $.ajax({
        type:"get",
        url:"${pageContext.request.contextPath}/hou/findUser",
        data:{"tid":0,"sPrice":sPrice,"ePrice":ePrice,"sArea":sArea,"eArea":eArea,"province":province,"city":city,"address":address,"pageNum":1,"pageSize":12},
        dataType:"json",
        success:function(data){
            $("#pagination").pagination(data.totalRows,    //分布总数量，必须参数
                {
                    callback: getData,  //PageCallback() 为翻页调用次函数。
                    prev_text: "« 上一页",
                    next_text: "下一页 »",
                    items_per_page:data.items.length,
                    num_edge_entries: 2,       //两侧首尾分页条目数
                    num_display_entries: 10,    //连续分页主体部分分页条目数
                    current_page: data.currentPage-1   //当前页索引
                    // link_to: "?id=__id__"  //分页的js中会自动把"__id__"替换为当前的数。0　
                });
            var classitem="";
            $.each(data.items,function (i,val) {
                if(val.tid==1){
                    var htype="合租";
                }else{
                    htype="整租";
                }
                classitem+='<div class="item"> <div class="pic-box"> <a href="photoinfo.jsp?id="'+data.id+' target="_blank" class="pic-wrap"><img class="lazy ifme'+i+'" src="" alt=""></a> <span class="ico ico-video"></span> </div> <div class="info-box"> <h5 class="title sign"><a href="photoinfo.jsp" target="_blank" id="title">'+htype+'·'+val.address+'</a></h5> <div class="desc"> <div>'+val.area+'㎡ | '+val.roomNum+'室</div> </div> <div class="price"> <span class="rmb">￥</span><span class="num">'+val.price+'</span><span class="unit">/月</span></div><div class="tag"><span class="ta1">'+val.province+'</span><span class="ta2">'+val.city+'</span><span class="ta3">布丁4.0</span></div><div class="tips  air-high">'+val.description +'</div> </div> </div>';
                $.ajax({
                    type:"post",
                    url:'${pageContext.request.contextPath}/hou/findhid',
                    data:{"hid":val.id},
                    dataType:"json",
                    success:function(data){
                        if(data.length>0){
                                $(".item").find(".ifme"+i).attr("src","${pageContext.request.contextPath}"+data[0].image)
                        }
                    }
                })
            })
            $(".Z_list-box").html(classitem);
        }
    });
    function getData(newindex,jq){
        var sPrice=-1;
        var ePrice=-1;
        var sArea=-1;
        var eArea=-1;
        var province="";
        var city="";
        var address="";
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/hou/findUser",
            data:{"tid":0,"sPrice":sPrice,"ePrice":ePrice,"sArea":sArea,"eArea":eArea,"province":province,"city":city,"address":address,"pageNum":newindex+1,"pageSize":12},
            dataType:"json",
            success:function(data){
                var classitem="";
                $.each(data.items,function (i,val) {
                    if(val.tid==1){
                        var htype="合租";
                    }else{
                        htype="整租";
                    }
                    classitem+='<div class="item"> <div class="pic-box"> <a href="photoinfo.jsp?id="'+data.id+' target="_blank" class="pic-wrap"><img class="lazy ifme'+i+'" src="" alt=""></a> <span class="ico ico-video"></span> </div> <div class="info-box"> <h5 class="title sign"><a href="photoinfo.jsp" target="_blank" id="title">'+htype+'·'+val.address+'</a></h5> <div class="desc"> <div>'+val.area+'㎡ | '+val.roomNum+'室</div> </div> <div class="price"> <span class="rmb">￥</span><span class="num">'+val.price+'</span><span class="unit">/月</span></div><div class="tag"><span class="ta1">'+val.province+'</span><span class="ta2">'+val.city+'</span><span class="ta3">布丁4.0</span></div><div class="tips  air-high">'+val.description +'</div> </div> </div>';
                    $.ajax({
                        type:"post",
                        url:'${pageContext.request.contextPath}/hou/findhid',
                        data:{"hid":val.id},
                        dataType:"json",
                        success:function(data){
                            if(data.length>0){
                                $(".item").find(".ifme"+i).attr("src","${pageContext.request.contextPath}"+data[0].image)
                            }
                        }
                    })
                })
                $(".Z_list-box").html(classitem);
            }
        });
    }

$("#Z_search_submit").click(function () {
    var sPrice=$("#range").find(".low").val();
    var ePrice=$("#range").find(".high").val();
    var sArea=$("#area").find(".low").val();
    var eArea=$("#area").find(".high").val();
    var province=$("#selProvince").find("option:selected").val();
    var city=$("#selCity").find("option:selected").val();
    var address=$("#Z_search_input").val();
    console.log(province)
    if($("#he").is(":checked")){
        var tid=1;
    }
    if($("#zheng").is(":checked")){
        tid=2;
    }
    if($("#he").is(":checked")&&$("#zheng").is(":checked")){
        tid=0;
    }
    if((!$("#he").is(":checked"))&&(!$("#zheng").is(":checked"))){
        tid=0;
    }
    if(sPrice==null||sPrice<=0){
        sPrice=-1;
    }
    if(ePrice==null||ePrice<=0){
        ePrice=-1;
    }else{
        sPrice=0;
    }
    if(sArea==null||sArea<=0){
        sArea=-1;
    }
    if(eArea==null||eArea<=0){
        eArea=-1;
    }else{
        sArea=0;
    }
    $.ajax({
        type:"get",
        url:"${pageContext.request.contextPath}/hou/findUser",
        data:{"tid":tid,"sPrice":sPrice,"ePrice":ePrice,"sArea":sArea,"eArea":eArea,"province":province,"city":city,"address":address,"pageNum":1,"pageSize":12},
        dataType:"json",
        success:function(data){
            $("#pagination").pagination(data.totalRows,    //分布总数量，必须参数
                {
                    callback: PageCallback,  //PageCallback() 为翻页调用次函数。
                    prev_text: "« 上一页",
                    next_text: "下一页 »",
                    items_per_page:data.items.length,
                    num_edge_entries: 2,       //两侧首尾分页条目数
                    num_display_entries: 10,    //连续分页主体部分分页条目数
                    current_page: data.currentPage-1   //当前页索引
                    // link_to: "?id=__id__"  //分页的js中会自动把"__id__"替换为当前的数。0　
                });
            var classitem="";
            $.each(data.items,function (i,val) {
                if(val.tid==1){
                    var htype="合租";
                }else{
                    htype="整租";
                }
                classitem+='<div class="item"> <div class="pic-box"> <a href="photoinfo.jsp?id="'+data.id+' target="_blank" class="pic-wrap"><img class="lazy ifme'+i+'" src="" alt=""></a> <span class="ico ico-video"></span> </div> <div class="info-box"> <h5 class="title sign"><a href="photoinfo.jsp" target="_blank" id="title">'+htype+'·'+val.address+'</a></h5> <div class="desc"> <div>'+val.area+'㎡ | '+val.roomNum+'室</div> </div> <div class="price"> <span class="rmb">￥</span><span class="num">'+val.price+'</span><span class="unit">/月</span></div><div class="tag"><span class="ta1">'+val.province+'</span><span class="ta2">'+val.city+'</span><span class="ta3">布丁4.0</span></div><div class="tips  air-high">'+val.description +'</div> </div> </div>';
                $.ajax({
                    type:"post",
                    url:'${pageContext.request.contextPath}/hou/findhid',
                    data:{"hid":val.id},
                    dataType:"json",
                    success:function(data){
                        if(data.length>0){
                            $(".item").find(".ifme"+i).attr("src","${pageContext.request.contextPath}"+data[0].image)
                        }
                    }
                })
            })
            $(".Z_list-box").html(classitem);
        }
    })
});

    function PageCallback(newindex,jq)
    {
         var sPrice=$("#range").find(".low").val();
         var ePrice=$("#range").find(".high").val();
         var sArea=$("#area").find(".low").val();
         var eArea=$("#area").find(".high").val();
         var province=$("#selProvince").find("option:selected").val();
         var city=$("#selCity").find("option:selected").val();
        var address=$("#Z_search_input").val();
        if($("#he").is(":checked")){
            var tid=1;
        }
        if($("#zheng").is(":checked")){
            tid=2;
        }
        if($("#he").is(":checked")&&$("#zheng").is(":checked")){
            tid=0;
        }
        if((!$("#he").is(":checked"))&&(!$("#zheng").is(":checked"))){
            tid=0;
        }
        if(sPrice==null||sPrice<=0){
            sPrice=-1;
        }
        if(ePrice==null||ePrice<=0){
            ePrice=-1;
        }else{
            sPrice=0;
        }
        if(sArea==null||sArea<=0){
            sArea=-1;
        }
        if(eArea==null||eArea<=0){
            eArea=-1;
        }else{
            sArea=0;
        }
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/hou/findUser",
            data:{"tid":tid,"sPrice":sPrice,"ePrice":ePrice,"sArea":sArea,"eArea":eArea,"province":province,"city":city,"address":address,"pageNum":newindex+1,"pageSize":12},
            dataType:"json",
            success:function(data){
                var classitem="";
                $.each(data.items,function (i,val) {
                    if(val.tid==1){
                        var htype="合租";
                    }else{
                        htype="整租";
                    }
                    classitem+='<div class="item"> <div class="pic-box"> <a href="photoinfo.jsp?id="'+data.id+' target="_blank" class="pic-wrap"><img class="lazy ifme'+i+'" src="" alt=""></a> <span class="ico ico-video"></span> </div> <div class="info-box"> <h5 class="title sign"><a href="photoinfo.jsp" target="_blank" id="title">'+htype+'·'+val.address+'</a></h5> <div class="desc"> <div>'+val.area+'㎡ | '+val.roomNum+'室</div> </div> <div class="price"> <span class="rmb">￥</span><span class="num">'+val.price+'</span><span class="unit">/月</span></div><div class="tag"><span class="ta1">'+val.province+'</span><span class="ta2">'+val.city+'</span><span class="ta3">布丁4.0</span></div><div class="tips  air-high">'+val.description +'</div> </div> </div>';
                    $.ajax({
                        type:"post",
                        url:'${pageContext.request.contextPath}/hou/findhid',
                        data:{"hid":val.id},
                        dataType:"json",
                        success:function(data){
                            if(data.length>0){
                                $(".item").find(".ifme"+i).attr("src","${pageContext.request.contextPath}"+data[0].image)
                            }
                        }
                    })
                })
                $(".Z_list-box").html(classitem);
            }
        })
    }
</script>

