package com.rmj.service.impl;

import com.rmj.common.page.Page;
import com.rmj.dao.impl.HousesDaoImpl;
import com.rmj.dao.impl.ImageDAOImpl;
import com.rmj.po.Houses;
import com.rmj.po.Image;
import com.rmj.po.ParamVO;
import com.rmj.service.BaseService;
import com.rmj.util.FileUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HouseServiceImpl implements BaseService<Houses> {
    private HousesDaoImpl houseDao;
    private ImageDAOImpl imageDAO;

    public HouseServiceImpl() {
        houseDao = new HousesDaoImpl();
        imageDAO = new ImageDAOImpl();
    }


    @Override
    public int save(Houses houses) {
        return houseDao.insert(houses);
    }

    @Override
    public int remove(Houses houses) {
        //删除房屋图片
        imageDAO.delete(houses.getId());
        return houseDao.delete(houses);
    }

    @Override
    public int update(Houses houses) {
        return houseDao.update(houses);
    }

    public int updateadmin(Houses houses) {
        return houseDao.updateadmin(houses);
    }

    @Override
    public Houses getByName(String name) {
        return null;
    }

    @Override
    public Houses getById(int id) {
        return houseDao.getById(id);
    }

    @Override
    public List<Houses> listObj(ParamVO params) {
        return houseDao.listObj(params);
    }

    public List<Houses> listadmin(ParamVO params) {
        return houseDao.listadmin(params);
    }


    public List<Houses> listUser(ParamVO params) {
        return houseDao.listUser(params);
    }

    @Override
    public int countObj(ParamVO params) {
        return houseDao.countObj(params);
    }

    public int countadmin(ParamVO params) {
        return houseDao.countadmin(params);
    }

    public int countUser(ParamVO params) {
        return houseDao.countUser(params);
    }

    public Page listObjByPage(ParamVO params) {
        Page page = new Page();
        page.setItems(houseDao.listObj(params));
        page.setTotalRows(houseDao.countObj(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        return page;
    }

    public Page listadminByPage(ParamVO params) {
        Page page = new Page();
        page.setItems(houseDao.listadmin(params));
        page.setTotalRows(houseDao.countadmin(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        return page;
    }

    public Page listUserByPage(ParamVO params) {
        Page page = new Page();
        page.setItems(houseDao.listUser(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        page.setTotalRows(houseDao.countUser(params));
        return page;
    }

    public int add(Image image) {
        return imageDAO.insert(image);
    }

    public int del(Image image) {
        return imageDAO.delete(image);

    }

    public List<Image> select(Image image) {
        return imageDAO.select(image);
    }

    public Map<String, Object> save(Houses houses, Collection<Part> parts, HttpServletRequest req) throws ServletException {
        Map<String, Object> map = new HashMap<>();
        String dir = req.getServletContext().getRealPath("upload");
        try {
            if (parts.size() == 1) {
                Part part = req.getPart("images");
                String header = part.getHeader("Content-Disposition");
                //获取文件后缀名
                String fileName = FileUtils.getFileName(header).split("\\.")[1];
                String str = String.valueOf(System.currentTimeMillis()) + "." + fileName;
                String path = dir + File.separator + str;
                part.write(path);
                Image image = new Image(houses.getId(), "/upload/" + str);
                int imgRes = imageDAO.insert(image);
                int housRes = houseDao.insert(houses);
                if (imgRes > 0 && housRes > 0) {
                    map.put("msgImg", "图片添加成功");
                } else {
                    map.put("msgImg", "图片添加失败");
                }
            } else {
                int imgRes = 0;
                int housRes = houseDao.insert(houses);
                int hid = houseDao.selectByHourse(houses).getId();
                for (Part part : parts) {
                    String header = part.getHeader("Content-Disposition");
                    if (header.contains("filename")) {
                        String fileName = FileUtils.getFileName(header);
                        String str = String.valueOf(System.currentTimeMillis()) + "." + fileName.split("\\.")[1];
                        part.write(dir + File.separator + str);
                        Image image = new Image(hid, "/upload/" + str);
                        imgRes = imageDAO.insert(image);
                    }
                }
                if (imgRes > 0 && housRes > 0) {
                    map.put("msgImg", "图片添加成功");
                } else if(imgRes<0){
                    map.put("msgImg", "图片添加失败，可以在管理页面重新添加");
                }else {
                    map.put("msgImg", "数据添加失败");
                }
            }
        } catch (IOException e) {
            map.put("msgFile", "图片上传服务器失败");
        }
        return map;
    }

    public int updateHead(int hid, String header, Part part, String dir) throws IOException {
        String file = FileUtils.getFileName(header);
        String filePath = dir + File.separator + file;
        part.write(filePath);
        return imageDAO.insertImg(hid, "/upload/" + file);
    }
}
