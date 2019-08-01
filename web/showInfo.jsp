<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/29
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <style>
        textarea{
            resize: none;
            overflow: scroll;
            overflow-x: hidden;
        }
        .info textarea{
            vertical-align: middle;
        }
        form{
            height: 500px;
            width: 600px;
            margin-top: 10px;
        }
        .header{
            width: 200px;
            margin: 0 auto;
        }

        .release_up_pic .tit{padding:10px;color:#999;font-size:14px}
        .release_up_pic .tit h4{font-weight:400}
        .release_up_pic .tit h4 em{font-size:14px}
        .release_up_pic .up_pic{padding-right:10px;background-color:#fff;font-size:0}
        .release_up_pic .up_pic .crm-pic-look{position:relative;display:inline-block;box-sizing:border-box;margin-right: 10px;margin-top:10px;width:204px;height:153px;border:1px solid #e7e7e7;border-radius:5%;background-position:center center;background-size:cover;background-repeat:no-repeat}
        .release_up_pic .up_pic .crm-pic-look em{position:absolute;top:2px;right:5px;display:inline-block;width:25px;height:25px;border-radius:100%;background-color:red;color:#fff;text-align:center;font-weight:700;font-style:normal;font-size:16px;line-height:25px;cursor: pointer;}
        #chose_pic_btn{background-color: #c9c9c9; position:relative;display:inline-block;box-sizing:border-box;margin-right: 10px;margin-top:10px;width:204px;height:153px;border:1px solid #dbdbdb;border-radius:5%;background-image:url(images/img/add.png);background-position:center center;background-size:60px 60px;background-repeat:no-repeat;vertical-align: top;}
        #chose_pic_btn input{position:absolute;top:0;left:0;width:100%;height:100%;opacity:0;cursor:pointer;}
        .release_btn{margin-top:70px;padding:0 24px}
        .release_btn button{width:100%;height:45px;outline:0;border:0;border-radius:3px;background-color:#2c87af;color:#fff;font-size:1.4rem}
        .release_btn button.none_btn{margin-top:15px;border:1px solid #2c87af;background-color:#f2f2f2;color:#2c87af}
        .btn-block{
            margin-left: 15px;
        }
    </style>
    <script src="js/jquery-3.4.1.js"></script>
    <%--<script src="js/localResizeIMG.js"></script>--%>
    <%--<script src="js/mobileBUGFix.mini.js"></script>--%>
    <script>
        // 图片上传
        // var picArr = new Array();// 存储图片
        // $(function () {
        //
        //     $('input:file').localResizeIMG({
        //         width: 768,// 宽度
        //         quality: 0.8, // 压缩参数 1 不压缩 越小清晰度越低
        //         success: function (result) {
        //             var img = new Image();
        //             img.src = result.base64;
        //             var _str = "<span class='crm-pic-look' style='background-image: url(" +  img.src + ")'><em id='delete_pic'>X</em></span>"
        //             var _i = picArr.length;
        //             picArr[_i] = result.base64;
        //             $('#chose_pic_btn').before(_str);
            //         //picArr[_i] = result.base64;
            //         //picArr[_i] = _i;
            //         // console.log(picArr);
            //     }
            // });
            // 删除
            // $(document).on('click', '#delete_pic', function (event) {
            //     var aa = $(this).parents(".crm-pic-look").index();
            //     picArr.splice(aa, 1);
            //     $(this).parents(".crm-pic-look").remove();
        //         //console.log(picArr);
        //     });
        // });

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

        function show() {
            // var uid=$("#inputUid").val();
            // var id=$("#inputId").val();
            // var tid=$("#inputType").val();
            // var province=$("#selProvince").val();
            // var city=$("#selCity").val();
            // var address=$("#inputAddress").val();
            // var area=$("#inputArea").val();
            // var price=$("#inputPrice").val();
            // var roomNum=$("#inputNum").val();
            // var lastroom=$("#inputLast").val();
            // var description=$("#description").val();
           var formData=new FormData();
            var length=$("#image")[0].files.length;
            for (var i=0;i<length;i++){
                formData.set('images',$("#image")[0].files[i]);
                // console.log($("#image")[0].files[i]);
            }
            formData.set('tel',$("#inputTel").val());
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
                url:"${pageContext.request.contextPath}/hou/add",
                type:'post',
                data:formData,
                cache:false,
                dataType:'json',
                processData:false,
                contentType:false,
                success:function (data) {
                    console.log(data);
                }

            <%--$.ajax({--%>
                <%--type:"post",--%>
                <%--url:"${pageContext.request.contextPath}/hou/add",--%>
                <%--data:{"uid":uid,"id":id,"tid":tid,"province":province,"city":city,"address":address,"area":area,"price":price,"roomNum":roomNum,"lastroom":lastroom,"description":description},--%>
                <%--dataType:"json",--%>
                <%--success:function (result) {--%>
                        <%--console.log(result);--%>
                <%--},--%>
                <%--error:function () {--%>
                    <%--alert("失败");--%>
                <%--}--%>
            <%--})--%>
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
        function getCookie(user) {
            var strCookie=document.cookie;
            var arrCookie=strCookie.split(";");
            for (var i=0;i<arrCookie.length;i++){
                var arr=arrCookie[i].split("=");
                if (user==arr[0]){
                    return arr[1]
                }
            }
            return null;
        }
        if(getCookie("user_cookie").length>1){
            $("#inputTel").html(getCookie("user_cookie"));
        }

    </script>
</head>
<body>
<form class="form-horizontal" id="info" enctype="multipart/form-data">
    <div class="header"><h2>发布房屋信息</h2></div>
    <div class="form-group">
        <label for="inputTel" class="col-sm-2 control-label">房东手机号</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTel" placeholder="请输入">
        </div>
    </div>
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
                <option>--选择省份--</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">所在城市</label>
        <div class="col-sm-10">
            <select class="form-control" id="selCity">
                <option>--选择城市--</option>
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
    <div class="form-group">
        <label  class="col-sm-2 control-label">添加图片</label>
        <div class="col-sm-10">
            <%--<div class="release_up_pic">--%>
                <%--<div class="up_pic">--%>
                    <%--<div id="chose_pic_btn">--%>
                        <%--<input type="file" accept="image/*" id="image" multiple>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <input type="file" accept="image/*" id="image" multiple value="上传图片">
        </div>
    </div>
    <button type="button" class="btn btn-primary btn-lg btn-block" onclick="show()">提交</button>
</form>
</body>
</html>