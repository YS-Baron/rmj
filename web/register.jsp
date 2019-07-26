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
<div class="ziroom-record" id="ziroomRecordHook1">
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
                    <div class="ziroom-rad"> <span class="left"><input type="radio" name="rad" checked>租客 </span>  <input type="radio" name="rad">房主</div>
                    <div id="asnycErrorWrapperHook1" class="asnyc-error-wrapper" style="display:none">
                        <div class="ziroom-asnyc-error"><div>
                            <i class="iconfont iconicon_circle"></i>
                        </div><div class="asnyc-error-text"></div>
                        </div>
                    </div><div class="ziroom-record-form"><div>
                    <div class="ziroom-record-input">
                        <input type="text" placeholder="建议使用常用手机号" verify="phone" id="registerUserHook" maxlength="11">
                    </div>
                    <div class="ziroom-record-error"></div>
                </div>
                    <div id="captcha1"></div>
                    <div class="ziroom-record-code">
                        <div class="ziroom-record-input">
                            <input type="text" placeholder="请输入6-16位密码" verify="phoneCode" id="registerSendCodeHook">
                        </div>
                        <div class="ziroom-record-error"></div>
                    </div>
                    <div>
                        <div class="ziroom-record-input mb0 ziroom-eye-input">
                            <input type="password" placeholder="请确认密码" verify="phonePsd" id="registerPsdHook" maxlength="16">
                        </div>
                        <div class="ziroom-record-error"></div>
                    </div>
                    <div class="ziroom-record-btn" id="registerSubmitHook">注册</div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
