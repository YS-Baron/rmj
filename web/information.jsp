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
        }
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
        $(function () {
            var pageSize=9;
            var total;
            Init(1);
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
                url:'${pageContext.request.contextPath}/hou/findAll?tel='+'13538474875'+'&pageNum='+pageIndex+'&pageSize='+pageSize,
                async:false,
                dataType:'json',
                success:function (data) {
                    console.log(data);
                    total=data.totalRows;
                    var item=data.items;
                    var con="";
                    var cont='<tr>\n' +
                        '<th>房屋编号</th>\n' +
                        '<th>房东编号</th>\n' +
                        '<th>类型编号</th>\n' +
                        '<th>价格</th>\n' +
                        '<th>面积</th>\n' +
                        '<th>所在省份</th>\n' +
                        '<th>所在城市</th>\n' +
                        '<th>具体地址</th>\n' +
                        '<th>房间个数</th>\n' +
                        '<th>剩余房间个数</th>\n' +
                        '<th>房间描述</th>\n' +
                        '</tr>';
                    for (var i=0;i<item.length;i++){
                        con+='<tr><td>'+item[i].id+'</td><td>'+item[i].uid+'</td><td>'+item[i].tid+'</td><td>'+item[i].price+'</td><td>'+item[i].area+'</td><td>'+item[i].province +'</td><td>'+item[i].city+'</td><td>'+item[i].address+'</td><td>'+item[i].roomNum+'</td><td>'+item[i].lastroom+'</td><td>'+item[i].description+'</td></tr>';
                    }
                    $("#tab").html(cont+con);
                }
            });
        };
        });


    </script>
</head>
<body>
<form id="form">
    <div class="header"><h2>房源信息</h2></div>
    <%--<div class="form-group">--%>
        <%--<label for="inputTel" class="col-sm-2 control-label">房东电话</label>--%>
        <%--<div class="col-sm-10">--%>
           <%--<input type="text" class="form-control" id="inputTel" placeholder="请输入号码">--%>
            <%--<button type="button" class="btn btn-primary btn-lg" onclick="getInfo()">查询</button>--%>
        <%--</div>--%>
    <%--</div>--%>
    <table class="table table-striped" id="tab">
        <%--<tr>--%>
            <%--<th>房屋编号</th>--%>
            <%--<th>房东编号</th>--%>
            <%--<th>类型编号</th>--%>
             <%--<th>价格</th>--%>
             <%--<th>面积</th>--%>
             <%--<th>所在省份</th>--%>
             <%--<th>所在城市</th>--%>
             <%--<th>具体地址</th>--%>
             <%--<th>房间个数</th>--%>
             <%--<th>剩余房间个数</th>--%>
             <%--<th>房间描述</th>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td id="id">7</td>--%>
            <%--<td id="uid">8</td>--%>
            <%--<td id="tid">1</td>--%>
            <%--<td id="price">1500.00 </td>--%>
            <%--<td id="area">15.00</td>--%>
            <%--<td id="province">深圳</td>--%>
            <%--<td id="city">龙岗</td>--%>
            <%--<td id="address">德兴城花园</td>--%>
            <%--<td id="roomNum">4</td>--%>
            <%--<td id="lastroom">4</td>--%>
            <%--<td id="description">该房源为主卧，带明窗，房屋采光比较好，业主用心维护，配置自如家电家私，搭配年轻舒适的装修风格，为您打造温馨舒适的居住环境，适合附近热爱生活的年轻白领或情侣入住</td>--%>
        <%--</tr>--%>

    </table>
    <div id="pagination" style="position: absolute;left:50%;transform: translate(-50%)" ></div>
</form>

</body>
</html>
