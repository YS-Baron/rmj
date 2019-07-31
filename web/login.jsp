<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/7/25
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
<div class="ziroom-record" id="ziroomRecordHook">
    <div class="ziroom-record-mask"></div>
    <div class="ziroom-record-wrapper">
        <div class="ziroom-record-container">
            <div class="ziroom-record-close" id="recordCloseHook">
                <i class="glyphicon glyphicon-remove"></i></div>
            <div id="switchHook">
                <div class="ziroom-login-wrapper" id="loginWrapperHook">
                    <div class="ziroom-record-header">
                        <div class="ziroom-record-title">登录</div>
                        <div class="ziroom-record-text"><span>没有账号？可以去</span><a href="register.jsp" id="swichRegisterHook">注册</a></div>
                    </div>
                    <div id="asnycErrorWrapperHook" class="asnyc-error-wrapper" style="display:none">
                        <div class="ziroom-asnyc-error"><div><i class="iconfont iconicon_circle"></i></div>
                            <div class="asnyc-error-text">
                            </div>
                        </div>
                    </div>
                    <div class="ziroom-record-form">
                        <div class="ziroom-login-accont" id="loginAccontHook">
                            <div>
                                <div class="ziroom-record-input">
                                    <input type="text" placeholder="请输入手机号" id="accontUserHook" verify="accont">
                                </div>
                                <div class="ziroom-record-error"></div>
                            </div>
                            <div>
                                <div class="ziroom-record-input mb0">
                                    <input type="password" placeholder="请输入6-16位密码" id="accontPsdHook" verify="accontPsd" maxlength="16"></div>
                                <div class="ziroom-record-error"></div></div>
                            <div class="ziroom-record-code">
                                <div class="ziroom-record-input">
                                    <input type="text" placeholder="请输入验证码" verify="phoneCode" id="registerSendCodeHook">
                                </div>
                                <div class="checkcode"><img src="${pageContext.request.contextPath}/randomcode.jpg" alt="" width="128" height="48"></div>
                                <div class="ziroom-record-error"></div>
                            </div>
                            <div class="ziroom-login-accont-confrim">
                                <input type="checkbox" id="mian">一周内免登录
                                <a href="javascript:;" target="_blank">忘记密码</a>
                            </div>
                            <div class="ziroom-record-btn" id="loginAccontSubmitHook">登录</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    var TEL_REGEXP = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
        $("#accontUserHook").blur(function () {
            if(!TEL_REGEXP.test($("#accontUserHook").val())){
                $(this).parent().next().html("请输入正确的手机号码")
            }
        });
        $("#accontUserHook").focus(function () {
            $(this).parent().next().html("")
        });

        $("#loginAccontSubmitHook").click(function () {
            var name=$("#accontUserHook").val();
            var password=$("#accontPsdHook").val();
            var checkCode=$("#registerSendCodeHook").val();
            if($("#mian").is(":checked")){
                var remeber=1;
            }else{
                remeber=0;
            }
            if(name.length<=0){
                $("#accontUserHook").parent().next().html("用户名不能为空！")
            }
            if(password.length<=0){
                $("#accontPsdHook").parent().next().html("密码不能为空！")
            };
            if(TEL_REGEXP.test($("#accontUserHook").val())&&password.length>=6){
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/login?<%=request.getQueryString()%>",
                    data:{"name":name,"password":password,"checkCode":checkCode,"remeber":remeber},
                    dataType:"json",
                    success:function(data){
                        console.log(data)
                        if(data.msg.endsWith(".jsp")){
                            window.location.href=data.msg;
                        }else {
                            $(".ziroom-record-code").find(".ziroom-record-error").html(data.msg);
                        }
                    }
                })
            }
            });
        $("#accontPsdHook").blur(function () {
            if($("#accontPsdHook").val().length<6||$("#accontPsdHook").val().length>16){
                $(this).parent().next().html("请输入6-16位密码")
            }
        });
        $(".checkcode").click(function () {
            $(this).html('<img src="${pageContext.request.contextPath}/randomcode.jpg" alt="" width="130" height="50">');
        });
        $("#accontUserHook").focus(function () {
            $(this).parent().next().html("");
        });
        $("#accontPsdHook").focus(function () {
            $(this).parent().next().html("");
        });
        $("#registerSendCodeHook").focus(function () {
            $(".ziroom-record-code").find(".ziroom-record-error").html("");
        })
</script>