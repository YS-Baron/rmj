package com.rmj.service.impl;

import com.alibaba.druid.util.StringUtils;
import com.rmj.dao.impl.UserDAOImpl;
import com.rmj.po.ParamVO;
import com.rmj.po.User;
import com.rmj.service.BaseService;
import com.rmj.util.FileUtils;
import com.rmj.util.MailUtils;
import com.rmj.util.Md5Util;

import javax.mail.MessagingException;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public class UserServiceImpl implements BaseService<User> {

    private UserDAOImpl userDAO;

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
        user.setPassword(Md5Util.md5(user.getPassword()));
        return userDAO.updatePwd(user);
    }

    @Override
    public User getByName(String name) {
        return userDAO.getByName(name);
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

    public Map<String, Object> login(String name, String password) {
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isEmpty(name)) {
            map.put("msgName", "用户名不能为空");
        }
        if (StringUtils.isEmpty(password)) {
            map.put("msgPwd", "密码不能为空");
        }
        password = Md5Util.md5(password);
        User user = userDAO.getByNameAndPwd(name, password);
        if (user == null) {
            map.put("msg", "用户或密码错误");
        } else {
            map.put("user", user);
        }
        return map;
    }

    public Map<String, Object> reg(String name, String password, int role) {
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isEmpty(name)) {
            map.put("msgName", "用户名不能为空");
        }
        if (StringUtils.isEmpty(password)) {
            map.put("msgPwd", "密码不能为空");
        }
        User user = userDAO.getByName(name);
        if (user != null) {
            map.put("msgName", "该用户已经存在");
        } else {
            user = new User();
            password = Md5Util.md5(password);
            user.setTel(name);
            user.setPassword(password);
            user.setRole(role);
            save(user);
        }
        return map;
    }

    public int updateNormal(int id, String nickname, String email) throws IOException {
        User user = new User(id, nickname, email);
        return userDAO.update(user);
    }

    public void sendMail(String email, String code) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    MailUtils.sendMail(email, code);
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }

    public int updateHead(int id, String header,Part part,String dir) throws IOException {
        String file = FileUtils.getFileName(header);
        String filePath = dir + File.separator + file;
        part.write(filePath);
        return userDAO.updateImage(id, "/upload/" + file);
    }
}
