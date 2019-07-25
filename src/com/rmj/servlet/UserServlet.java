package com.rmj.servlet;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSON;
import com.rmj.po.User;
import com.rmj.service.impl.UserServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 用户信息修改
 *
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
@WebServlet(value = {"/user/updateNormal", "/user/get", "/user/updatePwd"})
public class UserServlet extends HttpServlet {

    private UserServiceImpl userService;

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
        }


    }

    private void doUpdatePwd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String email = req.getParameter("email");
        if (StringUtils.isEmpty(email)) {
            out.print(JsonUtil.getJsonStr(0, "邮箱不能为空"));
        } else {
            int id = Integer.parseInt(req.getParameter("id"));
            String pwd = req.getParameter("password");
            //TODO 邮箱验证修改密码
        }
    }

    //修改基本信息
    private void doUpdateNormal(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nickname = req.getParameter("nickname");
        String email = req.getParameter("email");
        String dir = req.getServletContext().getRealPath("upload");
        Part part = req.getPart("headImage");
        String header = part.getHeader("Content-Disposition");
        userService.updateNormal(id, nickname, email, dir, part, header);

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
