package com.rmj.servlet;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSON;
import com.rmj.po.User;
import com.rmj.service.impl.UserServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

/**
 * 用户信息修改
 *
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
@WebServlet(value = {"/user/updateNormal", "/user/get", "/user/updatePwd", "/active", "/user/udpateHead"})
@MultipartConfig
public class UserServlet extends HttpServlet {

    private UserServiceImpl userService;
    //暂时存储修改的id和密码
    private int modifyId;
    private String modifyPwd;
    private String code;

    public UserServlet() {
        userService = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath().substring(1);

        if ("user/get".equals(path)) {
            doFind(req, resp);
        } else if ("user/updateNormal".equals(path)) {
            doUpdateNormal(req, resp);
        } else if ("user/updatePwd".equals(path)) {
            doUpdatePwd(req, resp);
        } else if ("active".equals(path)) {
            doActive(req, resp);
        } else if ("user/udpateHead".equals(path)) {
            doUdpateHead(req, resp);
        }


    }

    private void doUdpateHead(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String dir = req.getServletContext().getRealPath("upload");
        Part part = req.getPart("headImage");
        String header = part.getHeader("Content-Disposition");
        int res = userService.updateHead(id, header, part, dir);
        if (res > 0) {
            resp.getWriter().print(JsonUtil.getJsonStr(1, "修改成功"));
        } else {
            resp.getWriter().print(JsonUtil.getJsonStr(0, "修改失败"));
        }
    }

    private void doActive(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //确认之后就修改密码
        String activeCode = req.getParameter("code");
        if (code.equals(activeCode)) {
            User user = new User(modifyId, modifyPwd);
            int res = userService.update(user);
            if (res > 0) {
                resp.getWriter().print(JsonUtil.getJsonStr(1, "修改成功"));
            } else {
                resp.getWriter().print(JsonUtil.getJsonStr(0, "修改失败"));
            }
        }
    }

    private void doUpdatePwd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String email = req.getParameter("email");
        if (StringUtils.isEmpty(email)) {
            out.print(JsonUtil.getJsonStr(0, "邮箱不能为空"));
        } else {
            modifyId = Integer.parseInt(req.getParameter("id"));
            modifyPwd = req.getParameter("password");
            code = UUID.randomUUID().toString().replaceAll("-", "");
            //发送邮箱
            userService.sendMail(email, code);
            resp.getWriter().print(JsonUtil.getJsonStr("确认密码邮件已发送！！！请确认"));
        }
    }

    //修改基本信息
    private void doUpdateNormal(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nickname = req.getParameter("nickname");
        String email = req.getParameter("email");
        PrintWriter out = resp.getWriter();
        int res = userService.updateNormal(id, nickname, email);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "修改成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "修改失败"));
        }
    }

    private void doFind(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        User user = userService.getByName(name);
        Object obj = JSON.toJSON(user);
        try {
            resp.getWriter().print(obj);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
