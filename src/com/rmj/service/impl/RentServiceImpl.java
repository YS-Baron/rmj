package com.rmj.service.impl;

import com.rmj.dao.impl.RentDAOImpl;
import com.rmj.dao.impl.UserDAOImpl;
import com.rmj.po.ParamVO;
import com.rmj.po.Rent;
import com.rmj.po.User;
import com.rmj.service.BaseService;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/29
 */
public class RentServiceImpl implements BaseService<Rent> {

    private RentDAOImpl rentDAO;
    private UserDAOImpl userDAO;

    public RentServiceImpl() {
        rentDAO = new RentDAOImpl();
        userDAO = new UserDAOImpl();
    }

    @Override
    public int save(Rent rent) {
        return 0;
    }

    @Override
    public int remove(Rent rent) {
        return 0;
    }

    @Override
    public int update(Rent rent) {
        return 0;
    }

    @Override
    public Rent getByName(String name) {
        return null;
    }

    @Override
    public Rent getById(int id) {
        return null;
    }

    @Override
    public List<Rent> listObj(ParamVO params) {
        return null;
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }

    public int save(String tel, int hid, int num, double price) {
        User user = userDAO.getByName(tel);
        int uid = user.getId();
        Date startDate = new Date();
        Calendar rightNow = Calendar.getInstance();
        rightNow.setTime(startDate);
        rightNow.add(Calendar.MONTH, num);
        Date endDate = rightNow.getTime();
        Rent rent = new Rent(uid, hid, startDate, endDate, price, "该房子出租" + num + "个月");
        //TODO 房间数量减一
        return rentDAO.insert(rent);
    }

    public List<Rent> getAll(String tel) {
        User user = userDAO.getByName(tel);
        int uid = user.getId();
        return rentDAO.listObj(uid);
    }
}
