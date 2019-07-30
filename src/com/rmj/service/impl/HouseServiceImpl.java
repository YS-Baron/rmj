package com.rmj.service.impl;

import com.rmj.common.page.Page;
import com.rmj.dao.impl.HousesDaoImpl;
import com.rmj.dao.impl.ImageDAOImpl;
import com.rmj.po.Houses;
import com.rmj.po.Image;
import com.rmj.po.ParamVO;
import com.rmj.service.BaseService;

import java.util.List;

public class HouseServiceImpl implements BaseService<Houses> {
    private HousesDaoImpl houseDao;
   private ImageDAOImpl imageDAO;
    public HouseServiceImpl(){
        houseDao=new HousesDaoImpl();
        imageDAO=new ImageDAOImpl();
    }



    @Override
    public int save(Houses houses) {
        return houseDao.insert(houses);
    }

    @Override
    public int remove(Houses houses) {
        return houseDao.delete(houses);
    }

    @Override
    public int update(Houses houses) {
        return houseDao.update(houses);
    }

    public int updateadmin(Houses houses){
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

    public List<Houses> listadmin(ParamVO params){
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

    public Page listObjByPage(ParamVO params){
        Page page=new Page();
        page.setItems(houseDao.listObj(params));
       page.setTotalRows(houseDao.countObj(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        return page;
    }
    public Page listadminByPage(ParamVO params){
        Page page=new Page();
        page.setItems(houseDao.listadmin(params));
        page.setTotalRows(houseDao.countadmin(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        return page;
    }
    public Page listUserByPage(ParamVO params){
        Page page=new Page();
        page.setItems(houseDao.listUser(params));
        page.setTotalRows(houseDao.countUser(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        return page;
    }
    public int add(Image image){
     return   imageDAO.insert(image);
    }
    public int del(Image image){
       return imageDAO.delete(image);

    }

    public int select(Image image) {

        return imageDAO.select(image);
    }

}
