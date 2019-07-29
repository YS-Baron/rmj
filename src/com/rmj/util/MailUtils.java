package com.rmj.util;


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * 邮箱验证
 * @author YUSUI
 * created by YUSUI 2019/7/29
 */

public class MailUtils {

    //发送邮件的方法
    public static void sendMail(String to, String code) throws MessagingException {
        //创建连接对象，连接到邮箱服务器
        Properties properties = System.getProperties();// 获取系统属性
//        properties.setProperty("mail.smtp.host", "smtp.qq.com");//邮箱地址；由于是本地的可以省略
//        properties.setProperty("mail.smtp.auth", "true");// 打开认证
        try {
            //QQ邮箱需要下面这段代码，163邮箱不需要
//            MailSSLSocketFactory sf = new MailSSLSocketFactory();
//            sf.setTrustAllHosts(true);
//            properties.put("mail.smtp.ssl.enable", "true");
//            properties.put("mail.smtp.ssl.socketFactory", sf);

            Session session = Session.getInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("service@store.com", "123");
//                    return new PasswordAuthentication("XXXXXX@qq.com", "XXXX");
                }
            });
            //创建邮件对象
            Message message = new MimeMessage(session);
            //设置发件人
            message.setFrom(new InternetAddress("service@store.com"));
//            message.setFrom(new InternetAddress("xxxxxx"));
            //设置收件人
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            //设置邮件主题
            message.setSubject("修改密码确认邮件");
            //设置邮件内容
            message.setContent("<h1>来自如美家网站的修改密码确认，确认请点击一下链接</h1><h3><a href='http:localhost:8080/rmj/active?code='"
                    + code + ">http:localhost:8080/rmj/active?code=" + code + "</a></h3>", "text/html;charset=utf-8");
            //发送一封激活邮件
            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
