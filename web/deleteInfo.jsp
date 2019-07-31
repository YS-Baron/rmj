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
    </style>
    <script src="js/jquery-1.11.1.js"></script>
    <script>
        function delTr($this) {
            $($this).parent().parent().remove();
        }
        function del() {
            var id=$()
        }
    </script>
</head>
<body>
<form>
    <div class="header"><h2>删除房源</h2></div>
    <table class="table table-striped" id="tab">
        <tr>
            <th>房屋编号</th>
            <th>删除房源</th>
        </tr>
        <tr>
            <td>11</td>
            <td><button type="button" class="btn btn-info" onclick="delTr(this)">删除</button></td>
        </tr>
        <tr>
            <td>22</td>
            <td><button type="button" class="btn btn-info">删除</button></td>
        </tr>
        <tr>
            <td>33</td>
            <td><button type="button" class="btn btn-info">删除</button></td>
        </tr>
    </table>
</form>

</body>
</html>