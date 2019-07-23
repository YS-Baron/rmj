package com.rmj.service.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.dao.impl.UserDAOImpl;
import com.rmj.po.ParamVO;
import com.rmj.po.User;
import com.rmj.service.BaseService;

import java.util.List;
import java.util.UUID;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public class UserServiceImpl implements BaseService<User> {

    private BaseDAO userDAO;

    public UserServiceImpl() {
        userDAO = new UserDAOImpl();
    }

    @Override
    public int save(User user) {
        //设置默认用户名
        user.setNickname("宜家客" + UUID.randomUUID().toString().substring(0, 4));
        //设置默认头像
        user.setImage("/upload/head.jpg");
        return userDAO.insert(user);
    }

    @Override
    public int remove(User user) {
        return 0;
    }

    @Override
    public int update(User user) {
        return 0;
    }

    @Override
    public User getByName(String name) {
        return null;
    }

    @Override
    public User getById(int id) {
        return null;
    }

    @Override
    public List<User> listObj(ParamVO params) {
        return null;
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }
}
