package com.rmj.servlet;

import com.alibaba.fastjson.JSON;
import com.rmj.common.page.Page;
import com.rmj.po.Favorites;
import com.rmj.po.ParamVO;
import com.rmj.service.impl.FavoritesServiceImpl;
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
 * created by YUSUI 2019/7/24
 */
@WebServlet(value = {"/fav/add", "/fav/get", "/fav/del", "/fav/getAll"})
public class FavoritesServlet extends HttpServlet {

    private FavoritesServiceImpl favoritesService;
    private UserServiceImpl userService;

    public FavoritesServlet() {
        favoritesService = new FavoritesServiceImpl();
        userService = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath().substring(1);

        if ("fav/add".equals(path)) {
            doAdd(req, resp);
        } else if ("fav/get".equals(path)) {
            find(req, resp);
        } else if ("fav/del".equals(path)) {
            doDel(req, resp);
        } else if ("fav/getAll".equals(path)) {
            findAll(req, resp);
        }

    }

    private void findAll(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String tel = req.getParameter("tel");
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(tel, pageNum, pageSize);
        Page page = favoritesService.listObjByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    private void doDel(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String tel = req.getParameter("tel");
        int hid = Integer.parseInt(req.getParameter("hid"));
        int uid = userService.getByName(tel).getId();
        Favorites favorites = new Favorites(uid, hid);
        int res = favoritesService.remove(favorites);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "删除成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "删除失败"));
        }
    }


    private void find(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String tel = req.getParameter("tel");
        int hid = Integer.parseInt(req.getParameter("hid"));
        int uid = userService.getByName(tel).getId();
        Favorites favorites = favoritesService.getByUidAndHid(uid, hid);
        if (favorites != null) {
            //已收藏
            out.print(JsonUtil.getJsonStr(1, "已收藏"));
        } else {
            //未收藏
            out.print(JsonUtil.getJsonStr(0, "未收藏"));
        }
    }

    private void doAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String tel = req.getParameter("tel");
        int hid = Integer.parseInt(req.getParameter("hid"));
        int uid = userService.getByName(tel).getId();
        Favorites favorites = new Favorites(uid, hid);
        int res = favoritesService.save(favorites);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "收藏成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "收藏失败"));
        }
    }
}
