package com.rmj.dao.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.po.Image;
import com.rmj.po.ParamVO;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

public class ImageDAOImpl implements BaseDAO<Image> {
    private DataSource ds;

    public ImageDAOImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(Image image) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO image(hid,image) VALUES (?,?) ";
        int res = 0;
        try {
            res = queryRunner.update(sql, image.getHid(), image.getImage());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(Image image) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM image WHERE id=?";
        int res = 0;
        try {
            res = queryRunner.update(sql, image.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    //删除房子所有图片
    public int delete(int hid) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM image WHERE hid=?";
        int res = 0;
        try {
            res = queryRunner.update(sql, hid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(Image image) {
        return 0;
    }

    @Override
    public Image getByName(String name) {
        return null;
    }

    @Override
    public Image getById(int id) {
        return null;
    }

    @Override
    public List<Image> listObj(ParamVO params) {

        return null;
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }

    public List<Image> select(Image image) {
        QueryRunner queryRunner = new QueryRunner(ds);
        List<Image> list = null;
        String sql = "SELECT id,hid,image FROM image WHERE hid=?";
        try {
            list = queryRunner.query(sql, new BeanListHandler<>(Image.class), image.getHid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int insertImg(int hid, String image) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO image (hid,image) VALUES (?,?)";
        int res = 0;
        try {
            res = queryRunner.update(sql, hid, image);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
}
