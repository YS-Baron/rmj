package com.rmj.dao.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.po.ParamVO;
import com.rmj.po.User;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public class UserDAOImpl implements BaseDAO<User> {

    private DataSource ds;

    public UserDAOImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(User user) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO user (tel, nickname, password, image, role) VALUES (?,?,?,?,?)";
        int res = 0;
        try {
            res = queryRunner.update(sql, user.getTel(), user.getNickname(), user.getPassword(), user.getImage(), user.getRole());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(User user) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM user WHERE id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, user.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(User user) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "udpate user set nickname = ?,set email = ? where id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, user.getNickname(), user.getEamil(), user.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public User getByName(String name) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "select id,nickname,email,tel,image from user where tel = ?";
        User user = null;
        try {
            user = queryRunner.query(sql, new BeanHandler<>(User.class), name);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
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

    public User getByNameAndPwd(String name, String password) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT id,tel,nickname,email,image,role FROM user WHERE tel = ? AND password = ?";
        User user = null;
        try {
            user = queryRunner.query(sql, new BeanHandler<>(User.class), name, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public int updatePwd(User user) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "update user set password = ? where id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, user.getPassword(), user.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public int updateImage(int id, String header) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "update user set image = ? where id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, header, id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
}
