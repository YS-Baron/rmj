package com.rmj.servlet;

import com.alibaba.fastjson.JSON;
import com.rmj.po.User;
import com.rmj.service.impl.RentServiceImpl;
import com.rmj.service.impl.UserServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/29
 */
@WebServlet(value = {"/rent/add", "/rent/findAll"})
public class RentServlet extends HttpServlet {

    private RentServiceImpl rentService;

    public RentServlet() {
        rentService = new RentServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath().substring(1);
        if ("rent/add".equals(path)) {
            doAdd(req, resp);
        } else if ("rent/findAll".equals(path)) {
            findAll(req, resp);
        }
    }

    private void findAll(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String tel = req.getParameter("tel");
        Object obj = JSON.toJSON(rentService.getAll(tel));
        resp.getWriter().print(obj);
    }

    private void doAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String tel = req.getParameter("tel");
        int hid = Integer.parseInt(req.getParameter("hid"));
        int num = Integer.parseInt(req.getParameter("num"));
        double price = Double.parseDouble(req.getParameter("price"));
        int res = rentService.save(tel, hid, num, price);
        //TODO 支付宝接口接入
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "支付成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "支付失败"));
        }

    }
}
