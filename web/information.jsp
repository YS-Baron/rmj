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
    </style>
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/jquery.pagination.js"></script>
    <script>
        // function delTr($this) {
        //     $($this).parent().parent().remove();
        // }
        // function del() {
        //     var id=$()
        // }

        <%--$.ajax({--%>
            <%--url:"${pageContext.request.contextPath}/hou/findAll",--%>
            <%--type:'get',--%>
            <%--dataType:'json',--%>
            <%--success:function (data) {--%>
                 <%--var msg="";//类型编号 tid;   //价格 price;  //面积area;   //所在省份 province;   //所在城市city;  //具体地址 address--%>
                <%--// //房间个数roomNum;   //剩余房间个数lastroom;  //房间的描述description;--%>
                <%--for (var i=0;i<data.length;i++){--%>
                    <%--msg+='<tr><td>'+data[i].id+'</td><td>'+data[i].uid+'</td><td>'+data[i].tid+'</td><td>'+data[i].price+'</td><td>'+data[i].area+'</td><td>'+data[i].province +'</td><td>'+data[i].city+'</td><td>'+data[i].address+'</td><td>'+data[i].roomNum+'</td><td>'+data[i].lastroom+'</td><td>'+data[i].description+'</td></tr>';--%>
                    <%--$('#tab').append(msg);--%>
                <%--}--%>

            <%--}--%>
        <%--});--%>
        function getInfo() {
            var uid=$("#inputUid").val();
            $.ajax({
                url:'${pageContext.request.contextPath}/hou/findAll',
                type:'get',
                async:true,
                data:{'uid':uid,'pageNum':1,'pageSize':10},
                success:function (data) {
                    console.log(data);
                    // for (var i=0;i<operatorData.length;i++){
                    //     var opt='<tr><td>'+operatorData[i].tel+'</td><td>'+operatorData[i].uid+'</td><td>'+operatorData[i].tid+'</td><td>'+operatorData[i].price+'</td><td>'+operatorData[i].area+'</td><td>'+operatorData[i].province +'</td><td>'+operatorData[i].city+'</td><td>'+operatorData[i].address+'</td><td>'+operatorData[i].roomNum+'</td><td>'+operatorData[i].lastroom+'</td><td>'+operatorData[i].description+'</td></tr>';
                    // $("#tab").append(opt);
                    // }
                    $("#pagination").pagination(data.totalRows,
                        {
                            callback:PageCallback,
                            pre_text:"<<上一页",
                            next_text:"下一页>>",
                            items_per_page:data.items.length,
                            num_edge_entries:2,
                            num_display_entries:10,
                            current_page:data.currentPage-1
                        });
                }
            })
        }
        function PageCallback(newindex,jq) {
            var uid=$("#inputUid").val();
            $.ajax({
                url:'${pageContext.request.contextPath}/hou/findAll',
                type:'get',
                async:true,
                data:{'uid':uid,'pageNum':newindex+1,'pageSize':10},
                dataType:'json',
                success:function (data) {
                    var con="";
                    $.each(data.items,function (i,val) {
                        con+='<tr><td>'+val.id+'</td><td>'+val.uid+'</td><td>'+val.tid+'</td><td>'+val.price+'</td><td>'+val.area+'</td><td>'+val.province +'</td><td>'+val.city+'</td><td>'+val.address+'</td><td>'+val.roomNum+'</td><td>'+val.lastroom+'</td><td>'+val.description+'</td></tr>';
                    })
                    $("#tab").html(con);
                }
            })
        }

    </script>
</head>
<body>
<form id="form">
    <div class="header"><h2>房源信息</h2></div>
    <div class="form-group">
        <label for="inputUid" class="col-sm-2 control-label">房东电话</label>
        <div class="col-sm-10">
           <input type="text" class="form-control" id="inputUid" placeholder="请输入号码">
            <button type="button" class="btn btn-primary btn-lg" onclick="getInfo()">查询</button>
        </div>
    </div>
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
            <%--&lt;%&ndash;<td id="id"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="uid"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="tid"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="price"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="area"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="province"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="city"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="address"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="roomNum"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="lastroom"></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td id="description"></td>&ndash;%&gt;--%>
        <%--</tr>--%>

    </table>
    <div id="pagination" style="position: absolute;left:50%;transform: translate(-50%)" ></div>
</form>

</body>
</html>
