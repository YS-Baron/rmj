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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;
import java.util.Map;

@WebServlet(value = {"/hou/add", "/hou/del", "/hou/findAll", "/hou/update", "/hou/delImg", "/hou/addImg",
        "/hou/updateis", "/hou/getid", "/hou/findadmin", "/hou/findUser", "/hou/findhid"})
@MultipartConfig
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

    //查询所有图片
    private void findhid(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int hid = Integer.parseInt(req.getParameter("hid"));
        Image image = new Image(hid);
        List<Image> list = houseService.select(image);
        Object obj = JSON.toJSON(list);
        out.print(obj);
    }


    private void doAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //TODO 待测试
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

    //房东查询自己所有房子
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
        int roomNum = Integer.parseInt(req.getParameter("roomNum"));
        int lastroom = Integer.parseInt(req.getParameter("lastroom"));
        String description = req.getParameter("description");
        Houses houses = new Houses(id, tid, price, area, province, city, address, roomNum, lastroom, description);
        int res = houseService.update(houses);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "更新数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "更新数据失败"));
        }
    }

    private void delImg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        Image img = new Image(id, 0);
        int res = houseService.del(img);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "删除图片成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "删除图片失败"));
        }
    }


    private void addImg(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //TODO 待测
        PrintWriter out = resp.getWriter();
        int hid = Integer.parseInt(req.getParameter("hid"));
        String dir = req.getServletContext().getRealPath("upload");
        Part part = req.getPart("image");
        String header = part.getHeader("Content-Disposition");
        int res = houseService.updateHead(hid, header, part, dir);
        if (res > 0) {
            resp.getWriter().print(JsonUtil.getJsonStr(1, "修改成功"));
        } else {
            resp.getWriter().print(JsonUtil.getJsonStr(0, "修改失败"));
        }
    }

    //查询单个房子详细信息
    private void find(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        Object obj = JSON.toJSON(houseService.getById(id));
        out.print(obj);
    }

    //用户查找房子
    private void findUser(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int tid = Integer.parseInt(req.getParameter("tid"));
        double sPrice = Double.parseDouble(req.getParameter("sPrice"));
        double ePrice = Double.parseDouble(req.getParameter("ePrice"));
        double sArea = Double.parseDouble(req.getParameter("sArea"));
        double eArea = Double.parseDouble(req.getParameter("eArea"));
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(tid, sPrice, ePrice, sArea, eArea, province, city, address, pageNum, pageSize);
        Page page = houseService.listUserByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    //管理员查询未校验的房子
    private void findadmin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        ParamVO params = new ParamVO(province, city, address, pageNum, pageSize);
        Page page = houseService.listadminByPage(params);
        Object obj = JSON.toJSON(page);
        resp.getWriter().print(obj);
    }

    private void doupdateis(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        Houses houses = new Houses(id);
        int res = houseService.updateadmin(houses);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "修改数据成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "修改数据失败"));
        }
    }
}
