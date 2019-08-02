<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/7/30
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--    <link rel="icon" href="../../favicon.ico">-->

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .jumbotron{
            height: 640px;
            background: url("images/img/视频1.jpg") no-repeat;
        }
        .jumbotron .container{
            margin-top: 78px;
        }
        .row{
            height: 137px;
        }
        .room{
            float: right;
        }
    </style>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">如美租房管理员</a>
        </div>
    </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>品质租房选如美</h1>
        <p> 7年，9城，45万业主，近300万如美租客的选择</p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>审核房源</h2>
            <p><span class="glyphicon glyphicon-user" aria-hidden="true"></span></p>
            <p><a class="btn btn-default" href="http://localhost:8080/rmj/information.jsp" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4 room">
            <h2>管理房屋</h2>
            <p><span class="glyphicon glyphicon-home" aria-hidden="true"></span></p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
    </div>

    <hr>

    <footer>
        <p>COPYRIGHT&copy;2019 Ruemejar.com</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.11.1.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.1.js"><\/script>')</script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
</body>
</html>