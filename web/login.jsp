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
                            <div class="ziroom-login-accont-confrim">
                                <a href="javascript:;" target="_blank">忘记密码</a>
                            </div>
                            <div class="ziroom-record-btn" id="loginAccontSubmitHook">登录</div>
                            <div class="ziroom-login-swich" id="switchPhoneHook">手机验证码登录</div>
                        </div>
                        <div class="ziroom-login-phone" style="display:none" id="loginPhoneHook">
                            <div class="login-phone-wrapper-hook">
                                <div class="ziroom-record-input">
                                    <input type="text" placeholder="请输入手机号" id="phoneUserHook" verify="phone" maxlength="11">
                                </div><div class="ziroom-record-error"></div>
                            </div>
                            <div id="captcha"></div>
                            <div class="ziroom-record-code">
                                <div class="ziroom-record-input mb0">
                                    <input type="text" placeholder="请输入验证码" id="phoneCodeHook" verify="phoneCode"></div>
                                <button id="loginSendHook" class="record-send">获取验证码</button>
                                <div class="ziroom-record-error"></div>
                            </div>
                            <div class="ziroom-record-btn" id="loginPhoneSubmitHook">登录</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
