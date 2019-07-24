package com.rmj.dao.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.po.Favorites;
import com.rmj.po.ParamVO;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class FavoritesDAOImpl implements BaseDAO<Favorites> {

    private DataSource ds;

    public FavoritesDAOImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(Favorites favorites) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO favorites (uid,hid,date) VALUES(?,?,CURDATE())";
        int res = 0;
        try {
            res = queryRunner.update(sql, favorites.getUid(), favorites.getHid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(Favorites favorites) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM favorites WHERE uid = ? and hid = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, favorites.getUid(), favorites.getHid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(Favorites favorites) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "UPDATE favorites SET date = CURDATE() WHERE uid = ? AND hid = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, favorites.getUid(), favorites.getHid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public Favorites getByName(String name) {
        return null;
    }

    @Override
    public Favorites getById(int id) {
        return null;
    }

    @Override
    public List<Favorites> listObj(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT f.uid uid,f.hid hid,h.address address,h.price price,f.date date FROM favorites f " +
                "LEFT JOIN houses h ON f.hid = h.id WHERE f.uid =? limit ?,?";
        List<Favorites> list = null;
        try {
            list = queryRunner.query(sql, new BeanListHandler<>(Favorites.class),
                    params.getUid(), (params.getPageNum() - 1) * params.getPageSize(), params.getPageSize());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int countObj(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM favorites f LEFT JOIN houses h ON f.hid = h.id WHERE f.uid =?";
        int res = 0;
        try {
            long count = queryRunner.query(sql, new ScalarHandler<>(), params.getUid());
            res = (int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public Favorites getByUidAndHid(int uid, int hid) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT uid,hid FROM favorites WHERE uid = ? AND hid = ?";
        Favorites favorites = null;
        try {
            favorites = queryRunner.query(sql, new BeanHandler<>(Favorites.class), uid, hid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return favorites;
    }
}
