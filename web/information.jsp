<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/31
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/pagination.css">
    <style>
        textarea{
            resize: none;
            overflow: scroll;
            overflow-x: hidden;
        }
        .header{
            text-align: center;
            color: #2aabd2;
        }
        .form-control{
            width:90%;
        }
        .btn{
            margin: 10px 0;
        }
        th,td{
            width: 450px;
            text-align: center;
        }
        #info{
            width: 600px;
            height: 592px;
            position: absolute;
            left: 374.5px;
            top:115px;
            display:none;
        }
        #pic{
            display: none;

        }
        img{
            width: 200px;
            height: 185px;
            margin: 10px;
        }
        /*.pic{*/
            /*width: 700px;*/
            /*height: 700px;*/
            /*border: 1px solid #1b6d85;*/
            /*position: absolute;*/
            /*left: 374.5px;*/
            /*top:115px;*/
        /*}*/
    </style>
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/jquery.pagination.js"></script>
    <script>
        // function delTr($this) {
        //     $($this).parent().parent().remove();
        // }
        // function del() {
        //     var id=$()
        // }
        var cityList = new Array();
        cityList['北京市'] = ['朝阳区','东城区','西城区', '海淀区','宣武区','丰台区','怀柔','延庆','房山'];
        cityList['上海市'] = ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'];
        cityList['广东省'] = ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市'];
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

        function get(id) {
            var Id=id;
            $.ajax({
                url:"${pageContext.request.contextPath}/hou/getid?id="+Id,
                type:"get",
                dataType:"json",
                success:function (data) {
                    console.log(data);
                    $("#inputType").val(data.tid);
                    $("#Province").text(data.province);
                    $("#City").text(data.city);
                    $("#inputAddress").val(data.address);
                    $("#inputPrice").val(data.price);
                    $("#inputArea").val(data.area);
                    $("#inputNum").val(data.roomNum);
                    $("#inputLast").val(data.lastroom);
                    $("#description").val(data.description);
                }
            });
        };
        function show() {
            var formData=new FormData();
            // var length=$("#image")[0].files.length;
            // for (var i=0;i<length;i++){
            //     formData.set('images',$("#image")[0].files[i]);
            //
            // }

            formData.set('tid',$("#inputType").val());
            formData.set('province',$("#selProvince").val());
            formData.set('city',$("#selCity").val());
            formData.set('address',$("#inputAddress").val());
            formData.set('area',$("#inputArea").val());
            formData.set('price',$("#inputPrice").val());
            formData.set('roomNum',$("#inputNum").val());
            formData.set('lastroom',$("#inputLast").val());
            formData.set('description',$("#description").val());


            $.ajax({
                url:"${pageContext.request.contextPath}/hou/update",
                type:'post',
                data:formData,
                cache:false,
                dataType:'json',
                processData:false,
                contentType:false,
                success:function (data) {
                    console.log(data);
                }
            })
        };
        function del(id) {
            var Id=id;
            $.ajax({
                url:'${pageContext.request.contextPath}/hou/del?id='+Id,
                type:'post',
                dataType:'json',
                success:function (data) {
                    console.log(data);
                }
            })
        };



        $.ajax({
            url:'${pageContext.request.contextPath}/type/findAll',
            type:'get',
            dataType:'json',
            success:function (data) {
                for (var i=0;i<data.length;i++){
                    var option=document.createElement("option");
                    $(option).text(data[i].typename);
                    $(option).val(data[i].id);
                    $('#inputType').append(option);
                }
            }
        });
        function update(id){
            $("#info").show();
            $("#form").hide();
            get(id);
        };
        function check(id){
          $("#pic").show();
            $("#form").hide();
            getPic(id);
        };
        function getPic(id){
            var Id=id;
            $.ajax({
                url:"${pageContext.request.contextPath}/hou/findhid?hid="+Id,
                type:"get",
                dataType:"json",
                success:function (data) {
                    console.log(data);
                    // var arr=data.Array;
                    var images="";
                    for (var i=0;i<data.length;i++){
                        images+='<img src="${pageContext.request.contextPath}/'+data[i].image+'">';
                        <%--$("img").attr("src","${pageContext.request.contextPath}"+data[i].image);--%>
                    }
                    $(".pic").html(images);
                }
            });
        };
        function delPic(){
            $.ajax({
                url:"${pageContext.request.contextPath}/hou/delImg?id=4",
                type:"get",
                dataType:"json",
                success:function (data) {
                    console.log(data);
                    // var arr=data.Array;
                    <%--var images="";--%>
                    <%--for (var i=0;i<data.length;i++){--%>
                        <%--images+='<img src="${pageContext.request.contextPath}/'+data[i].image+'">';--%>
                        <%--&lt;%&ndash;$("img").attr("src","${pageContext.request.contextPath}"+data[i].image);&ndash;%&gt;--%>
                    <%--}--%>
                    <%--$(".pic").html(images);--%>
                }
            });
        };


        $(function () {
            var pageSize=9;
            var total;
            Init(0);
            $("#pagination").pagination(total,{
                callback:PageCallback,
                prev_text:'上一页',
                next_text:'下一页',
                items_per_page:pageSize,
                num_display_entries:4,
                num_edge_entries:1
            });
            function PageCallback(index,jq) {
                Init(index);
            }

        function Init(pageIndex) {
            $.ajax({
                type:'get',
                url:'${pageContext.request.contextPath}/hou/findAll?tel='+'13538474875'+'&pageNum='+(pageIndex+1)+'&pageSize='+pageSize,
                async:false,
                dataType:'json',
                success:function (data) {
                    console.log(data);
                    total=data.totalRows;
                    var item=data.items;
                    var con="";
                    var cont='<tr>\n' +
                        '<th style="display: none;">房屋类型</th>\n' +
                        '<th style="display: none;">房东编号</th>\n' +
                        '<th>类型编号</th>\n' +
                        '<th>价格</th>\n' +
                        '<th>面积</th>\n' +
                        '<th>所在省份</th>\n' +
                        '<th>所在城市</th>\n' +
                        '<th>具体地址</th>\n' +
                        '<th>房间个数</th>\n' +
                        '<th>剩余房间个数</th>\n' +
                        '<th>房间描述</th>\n' +
                        '<th>查看图片</th>\n' +
                        '<th>更新信息</th>\n' +
                        '<th>删除房源</th>\n' +
                        '</tr>';
                    for (var i=0;i<item.length;i++){
                        if (item[i].tid==1){
                            item[i].tid="合租";
                            con+='<tr><td style="display: none;">'+item[i].id+'</td><td style="display: none;">'+item[i].uid+'</td><td>'+item[i].tid+'</td><td>'+item[i].price+'</td><td>'+item[i].area+'</td><td>'+item[i].province +'</td><td>'+item[i].city+'</td><td>'+item[i].address+'</td><td>'+item[i].roomNum+'</td><td>'+item[i].lastroom+'</td><td>'+item[i].description+'</td><td>'+'<input type="button" value="查看图片" class="btn btn-primary btn-lg" onclick="check('+item[i].id+')">'+'</td><td>'+'<input type="button" value="更新" class="btn btn-primary btn-lg" onclick="update('+item[i].id+')">'+'</td><td>'+'<input type="button" value="删除" class="btn btn-primary btn-lg" onclick="del('+item[i].id+')">'+'</td></tr>';
                        }else {
                            item[i].tid="整租";
                            con+='<tr><td style="display: none;">'+item[i].id+'</td><td style="display: none;">'+item[i].uid+'</td><td>'+item[i].tid+'</td><td>'+item[i].price+'</td><td>'+item[i].area+'</td><td>'+item[i].province +'</td><td>'+item[i].city+'</td><td>'+item[i].address+'</td><td>'+item[i].roomNum+'</td><td>'+item[i].lastroom+'</td><td>'+item[i].description+'</td><td>'+'<input type="button" value="查看图片" class="btn btn-primary btn-lg" onclick="check('+item[i].id+')">'+'</td><td>'+'<input type="button" value="更新" class="btn btn-primary btn-lg" onclick="update('+item[i].id+')">'+'</td><td>'+'<input type="button" value="删除" class="btn btn-primary btn-lg" onclick="del('+item[i].id+')">'+'</td></tr>';

                        }
                    //     con+='<tr><td style="display: none;">'+item[i].id+'</td><td style="display: none;">'+item[i].uid+'</td><td>'+item[i].tid+'</td><td>'+item[i].price+'</td><td>'+item[i].area+'</td><td>'+item[i].province +'</td><td>'+item[i].city+'</td><td>'+item[i].address+'</td><td>'+item[i].roomNum+'</td><td>'+item[i].lastroom+'</td><td>'+item[i].description+'</td><td>'+'<input type="button" value="查看图片" class="btn btn-primary btn-lg" onclick="check('+item[i].id+')">'+'</td><td>'+'<input type="button" value="更新" class="btn btn-primary btn-lg" onclick="update('+item[i].id+')">'+'</td><td>'+'<input type="button" value="删除" class="btn btn-primary btn-lg" onclick="del('+item[i].id+')">'+'</td></tr>';
                     }
                    $("#tab").html(cont+con);
                }
            });
        };
        });


    </script>
</head>
<body>
<div id="form">
    <div class="header"><h2>房源信息</h2></div>
    <table class="table table-striped" id="tab">

    </table>
    <div id="pagination" style="position: absolute;left:50%;transform: translate(-50%)"></div>
</div>
<form class="form-horizontal" id="info" enctype="multipart/form-data">
    <div class="header"><h2>修改房屋信息</h2></div>
    <%--<div class="form-group">--%>
        <%--<label for="inputId" class="col-sm-2 control-label">房屋编号</label>--%>
        <%--<div class="col-sm-10">--%>
            <%--<input type="text" class="form-control" id="inputId" placeholder="请输入" onchange="get()">--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="form-group">
        <label  class="col-sm-2 control-label">房屋类型</label>
        <div class="col-sm-10">
            <select class="form-control" id="inputType">
                <option>--选择类型--</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">所在省份</label>
        <div class="col-sm-10 ">
            <select class="form-control"  id="selProvince" onchange="changeCity()">
                <option id="Province">--选择省份--</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">所在城市</label>
        <div class="col-sm-10">
            <select class="form-control" id="selCity">
                <option id="City">--选择城市--</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress" class="col-sm-2 control-label">房屋地址</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputAddress" placeholder="请输入地址">
        </div>
    </div>
    <div class="form-group">
        <label for="inputArea" class="col-sm-2 control-label">房屋面积</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputArea" placeholder="请输入面积">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPrice" class="col-sm-2 control-label">房屋价格</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPrice" placeholder="请输入价格">
        </div>
    </div>
    <div class="form-group">
        <label for="inputNum" class="col-sm-2 control-label">房间个数</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputNum" placeholder="请输入房间个数">
        </div>
    </div>
    <div class="form-group">
        <label for="inputLast" class="col-sm-2 control-label">剩余房间</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputLast" placeholder="请输入个数">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">房屋描述</label>
        <div class="col-sm-10">
            <textarea class="form-control" placeholder="请输入信息" id="description"></textarea>
        </div>
    </div>
    <button type="button" class="btn btn-primary btn-lg btn-block" onclick="show()">提交</button>
</form>
<form id="pic" class="form-horizontal" enctype="multipart/form-data">
<div class="header"><h2>图片信息</h2></div>
    <%--<button type="button" class="btn btn-primary" onclick="delPic()">删除</button>--%>
<div class="pic">
<%--<img id="img">--%>
</div>
</form>

</body>
</html>
