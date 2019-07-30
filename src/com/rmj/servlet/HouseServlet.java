package com.rmj.servlet;

import com.alibaba.fastjson.JSON;
import com.rmj.common.page.Page;
import com.rmj.po.Houses;
import com.rmj.po.Image;
import com.rmj.po.ParamVO;
import com.rmj.service.impl.HouseServiceImpl;
import com.rmj.service.impl.UserServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Map;

@WebServlet(value = {"/hou/add", "/hou/del", "/hou/findAll", "/hou/update", "/hou/delImg", "/hou/addImg",
        "/hou/updateis", "/hou/getid", "/hou/findadmin", "/hou/findUser", "/hou/findhid"})
public class HouseServlet extends HttpServlet {
    private HouseServiceImpl houseService;
    private UserServiceImpl userService;

    public HouseServlet() {
        userService = new UserServiceImpl();
        houseService = new HouseServiceImpl();
    }

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath().substring(1);
        if ("hou/add".equals(path)) {
            doAdd(req, resp);
        } else if ("hou/del".equals(path)) {
            doDel(req, resp);
        } else if ("hou/findAll".equals(path)) {
            findAll(req, resp);
        } else if ("hou/update".equals(path)) {
            update(req, resp);
        } else if ("hou/delImg".equals(path)) {
            delImg(req, resp);
        } else if ("hou/addImg".equals(path)) {
            addImg(req, resp);
        } else if ("hou/updateis".equals(path)) {
            doupdateis(req, resp);
        } else if ("hou/getid".equals(path)) {
            find(req, resp);
        } else if ("hou/findadmin".equals(path)) {
            findadmin(req, resp);
        } else if ("hou/findUser".equals(path)) {
            findUser(req, resp);
        } else if ("hou/findhid".equals(path)) {
            findhid(req, resp);
        }
    }

    private void findhid(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int hid = Integer.parseInt(req.getParameter("hid"));
        Image image = new Image(hid);
        int res = houseService.select(image);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "查询图片数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "查询图片数据失败"));
        }
    }


    private void doAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter out = resp.getWriter();
//        int id = Integer.parseInt(req.getParameter("id"));
        int tid = Integer.parseInt(req.getParameter("tid"));
        double price = Double.parseDouble(req.getParameter("price"));
        double area = Double.parseDouble(req.getParameter("area"));
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        String tel = req.getParameter("tel");
        int uid = userService.getByName(tel).getId();
//        int uid = Integer.parseInt(req.getParameter("uid"));
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int lastroom = Integer.parseInt(req.getParameter("lastroom"));
        String description = req.getParameter("description");
        //添加图片上传
        Collection<Part> parts = req.getParts();
        Houses houses = new Houses(tid, price, area, province, city, address, uid, roomNum, lastroom, description);
        Map<String, Object> map = houseService.save(houses, parts, req);
        out.print(JsonUtil.getJsonStr(1, map));
    }

    private void doDel(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        Houses houses = new Houses(id);
        int res = houseService.remove(houses);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "删除数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "删除数据失败"));
        }
    }

    private void findAll(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int uid = Integer.parseInt(req.getParameter("uid"));
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(uid, pageNum, pageSize);
        Page page = houseService.listObjByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        int tid = Integer.parseInt(req.getParameter("tid"));
        double price = Double.parseDouble(req.getParameter("price"));
        double area = Double.parseDouble(req.getParameter("area"));
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        int uid = Integer.parseInt(req.getParameter("uid"));
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int lastroom = Integer.parseInt(req.getParameter("lastroom"));
        String description = req.getParameter("description");
        Houses houses = new Houses(id, tid, price, area, province, city, address, uid, roomNum, lastroom, description);
        int res = houseService.update(houses);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "更新数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "更新数据失败"));
        }
    }

    private void delImg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String image = req.getParameter("image");
        Image img = new Image(image);
        int res = houseService.del(img);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "删除图片数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "删除图片数据失败"));
        }
    }


    private void addImg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int hid = Integer.parseInt(req.getParameter("hid"));
        String image = req.getParameter("image");
        Image img = new Image(hid, image);
        int res = houseService.add(img);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "增加图片数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "增加图片数据失败"));
        }
    }

    private void find(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        Houses houses = houseService.getById(id);
        if (houses != null) {
            out.print(JsonUtil.getJsonStr(1, "查询数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "查询数据失败"));
        }
    }

    private void findUser(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int tid = Integer.parseInt(req.getParameter("tid"));
        double price = Double.parseDouble(req.getParameter("price"));
        double area = Double.parseDouble(req.getParameter("area"));
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("adress");
        int uid = Integer.parseInt(req.getParameter("uid"));
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(tid, price, area, province, city, address, uid, pageNum, pageSize);
        Page page = houseService.listUserByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    private void findadmin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("adress");
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(province, city, address, pageNum, pageSize);
        Page page = houseService.listadminByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    private void doupdateis(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String isQualified = req.getParameter("isQualified");
        Houses houses = new Houses(isQualified);
        int res = houseService.updateadmin(houses);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "修改数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "修改数据失败"));
        }
    }
}
