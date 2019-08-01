<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/28
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <style>
        .header{
            text-align: center;
            color: #2aabd2;
        }
        .form-group{
            margin: 8px;
        }
        .form-control{
            width:90%;
        }
        .btn{
            margin-top: 10px;
        }
    </style>
    <script src="js/jquery-3.4.1.js"></script>
    <script>
        // function delTr($this) {
        //     $($this).parent().parent().remove();
        // }

        // $.each(data,function (i,item) {
        //     con+='<tr>'+'<td>'+data.id+'</td>'+
        //         '<td>'+data.tid+'</td>'+
        //         '<td>'+data.price+'</td>'+
        //         '<td>'+data.area+'</td>'+
        //         '<td>'+data.province+'</td>'+
        //         '<td>'+data.city+'</td>'+
        //         '<td>'+data.address+'</td>'+
        //         '<td>'+data.uid+'</td>'+
        //         '<td>'+data.roomNum+'</td>'+'</tr>';
        // })
        // $("#tab").html(con);
        function getId() {
            var id=$("#inputId").val();
            $.ajax({
                url:'${pageContext.request.contextPath}/hou/del',
                type:'post',
                dataType:'json',
                data:{"id":id},
                success:function (data) {
                    console.log(data);
                }
            })
        }


    </script>
</head>
<body>
<form class="form-horizontal" id="info">
    <div class="header"><h2>删除房源</h2></div>
    <div class="form-group">
    <label for="inputId" class="col-sm-2 control-label">房屋编号</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="inputId" placeholder="请输入编号">
        <button type="button" class="btn btn-primary btn-lg" onclick="getId()">删除</button>
    </div>
    </div>
    <%--<table class="table table-striped" id="tab">--%>
        <%----%>
    <%--</table>--%>
</form>

</body>
</html>