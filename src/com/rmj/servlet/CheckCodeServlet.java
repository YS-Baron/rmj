package com.rmj.servlet;


import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.util.Config;
import com.rmj.util.DruidUtil;

import javax.imageio.ImageIO;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 验证码
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
@WebServlet(value = "/randomcode.jpg")
public class CheckCodeServlet extends HttpServlet {

    private Producer kaptchaProducer = null;
    private String sessionKeyValue = null;

    @Override
    public void init() throws ServletException {
        Properties props = new Properties();
        try {
            InputStream inputStream = CheckCodeServlet.class.getClassLoader().getResourceAsStream("kaptcha.properties");
            props.load(inputStream);
            Config config = new Config(props);
            this.kaptchaProducer =config.getProducerImpl();
            this.sessionKeyValue = config.getSessionKey();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setDateHeader("Expires", 0L);
        resp.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        resp.addHeader("Cache-Control", "post-check=0, pre-check=0");
        resp.setHeader("Pragma", "no-cache");
        resp.setContentType("image/jpeg");

        String capText = this.kaptchaProducer.createText();
        req.getSession().setAttribute(this.sessionKeyValue,capText);
        BufferedImage bi = this.kaptchaProducer.createImage(capText);
        ServletOutputStream out = resp.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
    }
}
