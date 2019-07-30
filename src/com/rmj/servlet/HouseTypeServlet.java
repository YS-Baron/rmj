package com.rmj.servlet;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSON;
import com.rmj.po.HouseType;
import com.rmj.service.impl.HouseTypeServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
@WebServlet(value = {"/type/add", "/type/del", "/type/findAll", "/type/update"})
public class HouseTypeServlet extends HttpServlet {

    private HouseTypeServiceImpl houseTypeService;

    public HouseTypeServlet() {
        houseTypeService = new HouseTypeServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String path = req.getServletPath().substring(1);

        if ("type/add".equals(path)) {
            doAdd(req, resp);
        } else if ("type/del".equals(path)) {
            doDel(req, resp);
        } else if ("type/findAll".equals(path)) {
            doFindAll(req, resp);
        } else if ("type/update".equals(path)) {
            doUpdate(req, resp);
        }

    }

    private void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        HouseType type = houseTypeService.getByName(name);
        if (type != null) {
            out.print(JsonUtil.getJsonStr(0, "名称不可重复"));
        } else {
            HouseType houseType = new HouseType(id, name);
            int res = houseTypeService.update(houseType);
            if (res > 0) {
                out.print(JsonUtil.getJsonStr(1, "更新成功"));
            } else {
                out.print(JsonUtil.getJsonStr(0, "更新失败"));
            }
        }
    }

    private void doFindAll(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        List<HouseType> list = houseTypeService.listObj(null);
        Object obj = JSON.toJSON(list);
        resp.getWriter().print(obj);
    }

    private void doDel(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        HouseType houseType = new HouseType(id);
        int res = houseTypeService.remove(houseType);
        if (res > 0) {
            out.print(JsonUtil.getJsonStr(1, "删除成功"));
        } else {
            out.print(JsonUtil.getJsonStr(0, "删除失败"));
        }
    }

    private void doAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        PrintWriter out = resp.getWriter();
        if (StringUtils.isEmpty(name)) {
            out.print(JsonUtil.getJsonStr("类型名称不能为空"));
        } else {
            HouseType houseType = new HouseType(name);
            int res = houseTypeService.save(houseType);
            if (res == -1) {
                out.print(JsonUtil.getJsonStr(-1, "该类型已经存在"));
            } else if (res > 0) {
                out.print(JsonUtil.getJsonStr(1, "添加成功"));
            } else {
                out.print(JsonUtil.getJsonStr(2, "请联系开发者...."));
            }
        }
    }
}
