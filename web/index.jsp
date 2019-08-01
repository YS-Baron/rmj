<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>如美家租房网</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="css/index.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">
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
                        <li><a href="javascript:;" class="ani active" >首页</a></li>
                        <li><a href="user.jsp " >租房</a></li>

                        <li><a href="javascript:;" class="become_houser" target="_blank">成为房东</a></li>
                    </ul>
                    <div class="Z_login_top" id="loginEntyWrapper" style="cursor: pointer">
                        <a href="login.jsp?from=index.jsp" class="Z_exit" rel="nofollow" id="zLogin">登录</a>
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

    </div>
</div>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="images/index-image/pic1.jpg" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>品质租房选如美家</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="images/index-image/pic2.jpg" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>品质租房选如美家</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="images/index-image/pic3.jpg" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>品质租房选如美家</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="images/index-image/pvc1.png" alt="Generic placeholder image" width="140" height="140">
            <h2>保洁</h2>
            <p>拥抱清新，回归如美</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="images/index-image/pvc2.png" alt="Generic placeholder image" width="140" height="140">
            <h2>搬家</h2>
            <p>打包记忆，搬运理想</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="images/index-image/pvc3.png" alt="Generic placeholder image" width="140" height="140">
            <h2>家修</h2>
            <p>及时专业，安全守护</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <h1 class="featurette-heading">如美家保洁</h1>
            <h3 class="text-muted">下一刻，明亮如新</h3>
            <p class="lead">如美家旗下专业保洁品牌，形成专属清洁服务标准——人员严选、工具放心、流程规范。为用户提供日常保洁、玻璃清洁等多样保洁产品，持续为市场提供高品质保洁服务。</p>
        </div>
        <div class="col-md-7">
            <img class="featurette-image img-responsive center-block" src="images/index-image/poc1.jpg" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5 col-md-push-7">
            <h1 class="featurette-heading">如美家搬家</h1>
            <h3 class="text-muted">每一次搬家都珍贵</h3>
            <p class="lead">始终坚持：每一项服务标准清晰明确，每个物件精心打包安放。成立4年来，打磨和研发多项产品满足用户个性化搬家需求，目前已覆盖北京、上海、天津等9个城市。</p>
        </div>
        <div class="col-md-7 col-md-pull-5">
            <img class="featurette-image img-responsive center-block" src="images/index-image/poc2.jpg" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <h1 class="featurette-heading">如美家家修</h1>
            <h3 class="text-muted">用心守护 美好如初</h3>
            <p class="lead">旨在为客户提供“专业便捷、安全透明”的全能维修。月交付15万+，如美家巧匠，覆盖装修后市场、家电售后全生态，率先实现标准化和数据化管理，让客户无后顾之忧。</p>
        </div>
        <div class="col-md-7">
            <img class="featurette-image img-responsive center-block" src="images/index-image/poc3.jpg" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
    </footer>
</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>
<script src="js/jquery-3.4.1.js"></script>
<script>
        function getCookie(cookieName) {
            var strCookie = document.cookie;
            var arrCookie = strCookie.split("; ");
            for(var i = 0; i < arrCookie.length; i++){
                var arr = arrCookie[i].split("=");
                if(cookieName == arr[0]){
                    return arr[1];
                }
            }
            return null;
        }
        if(getCookie("user_cookie").length>=8){
            $("#loginEntyWrapper").html(getCookie("user_cookie"));
            $("#login_out").show();
        }
        $("#loginEntyWrapper").click(function () {
            if(getCookie("user_cookie").length>=8){
                window.location.href="myinfo.jsp"
            }
        })

</script>

