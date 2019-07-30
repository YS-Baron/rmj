<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
<form class="ziroom-record" id="ziroomRecordHook1" action="/servlet/LoginServlet" method="post">
    <div class="ziroom-record-mask"></div>
    <div class="ziroom-record-wrapper">
        <div class="ziroom-record-container">
            <div class="ziroom-record-close" id="recordCloseHook1">
                <i class="glyphicon glyphicon-remove"></i>
            </div>
            <div id="switchHook1">
                <div class="ziroom-register-wrapper" id="registerWrapperHook">
                    <div class="ziroom-record-header">
                        <div class="ziroom-record-title">注册</div>
                        <div class="ziroom-record-text"><span>已有账号？</span><a href="login.jsp" id="swichLoginHook">登录</a></div>
                    </div>
                    <div class="ziroom-rad"> <span class="left"><input type="radio" name="rad" checked id="zu">租客 </span>  <input type="radio" name="rad" id="fang">房主</div>
                    <div id="asnycErrorWrapperHook1" class="asnyc-error-wrapper" style="display:none">
                        <div class="ziroom-asnyc-error"><div>
                            <i class="iconfont iconicon_circle"></i>
                        </div><div class="asnyc-error-text"></div>
                        </div>
                    </div>
                    <div class="ziroom-record-form">
                            <div>
                    <div class="ziroom-record-input">
                        <input type="text" placeholder="建议使用常用手机号" verify="phone" id="registerUserHook" maxlength="11">
                    </div>
                    <div class="ziroom-record-error"></div>
                </div>
                    <div id="captcha1"></div>
                    <div class="ziroom-record-code">
                        <div class="ziroom-record-input">
                            <input type="text" placeholder="请输入验证码" verify="phoneCode" id="registerSendCodeHook">
                        </div>
                        <div class="checkcode"><img src="${pageContext.request.contextPath}/randomcode.jpg" alt="" width="128" height="48"></div>
                        <div class="ziroom-record-error"></div>
                    </div>
                    <div>
                        <div class="ziroom-record-input mb0 ziroom-eye-input">
                            <input type="password" placeholder="请输入6-16位密码" verify="phonePsd" id="registerPsdHook" maxlength="16">
                        </div>
                        <div class="ziroom-record-error"></div>
                    </div>
                    <div>
                        <div class="ziroom-record-input mb0 ziroom-eye-input">
                            <input type="password" placeholder="请确认密码" verify="phonePsd" id="registerPsdHook1" maxlength="16">
                        </div>
                        <div class="ziroom-record-error"></div>
                    </div>
                    <div class="ziroom-record-btn" id="registerSubmitHook">注册</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    $(function () {
        $("#registerUserHook").blur(function () {
            var TEL_REGEXP = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
            if(!TEL_REGEXP.test($("#registerUserHook").val())){
                $(this).parent().next().html("请输入正确的手机号码")
            }
        });
        $("#registerUserHook").focus(function () {
                $(this).parent().next().html("")
        })
        $("#registerSubmitHook").click(function () {
            var name=$("#registerUserHook").val();
            var password=$("#registerPsdHook").val();
            var password1=$("#registerPsdHook1").val();
            var checkCode=$("#registerSendCodeHook").val();

             if($("#zu").is(":checked")){
                 var role=1;
             }
            if($("#fang").is(":checked")){
                var role=2;
            }
            if(name.length<=0){
                $("#registerUserHook").parent().next().html("用户名不能为空！")
            }
            if(password.length<=0){
                $("#registerPsdHook").parent().next().html("密码不能为空！")
            };
            if(password1.length<=0){
                $("#registerPsdHook1").parent().next().html("请再次输入密码！")
            }
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/reg",
                data:{"name":name,"password":password,"checkCode":checkCode,"role":role},
                dataType:"json",
                success:function(data){
                  $(".ziroom-record-code").find(".ziroom-record-error").html(data.msg);
                    $("#registerUserHook").parent().next().html(data.msgName)
                    window.location.herf="login.jsp"
                }
            })
            });
        $(".checkcode").click(function () {
            $(this).html('<img src="${pageContext.request.contextPath}/randomcode.jpg" alt="" width="130" height="50">');
        });
        $("#registerPsdHook").blur(function () {
            if($("#registerPsdHook").val().length<6||$("#registerPsdHook").val().length>16){
                $(this).parent().next().html("请输入6-16位密码")
            }
        });
        $("#registerPsdHook").focus(function () {
            $(this).parent().next().html("");
        });
        $("#registerPsdHook1").blur(function () {
            if($("#registerPsdHook1").val()!=$("#registerPsdHook").val()){
                $(this).parent().next().html("请输入正确的密码")
            }
        });
        $("#registerPsdHook1").focus(function () {
                $(this).parent().next().html("")
        });
        $("#registerSendCodeHook").focus(function () {
            $(".ziroom-record-code").find(".ziroom-record-error").html("");
        })
    })
</script>