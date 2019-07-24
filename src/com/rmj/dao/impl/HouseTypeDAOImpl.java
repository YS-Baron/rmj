package com.rmj.dao.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.po.HouseType;
import com.rmj.po.ParamVO;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class HouseTypeDAOImpl implements BaseDAO<HouseType> {

    private DataSource ds;

    public HouseTypeDAOImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(HouseType houseType) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO housestype (typename) VALUE (?)";
        int res = 0;
        try {
            res = queryRunner.update(sql, houseType.getTypename());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(HouseType houseType) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM housestype WHERE id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, houseType.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(HouseType houseType) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "UPDATE housestype SET typename = ? WHERE id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, houseType.getTypename(), houseType.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public HouseType getByName(String name) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT id,typename FROM housestype WHERE typename = ?";
        HouseType houseType = null;
        try {
            houseType = queryRunner.query(sql, new BeanHandler<>(HouseType.class), name);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houseType;
    }

    @Override
    public HouseType getById(int id) {
        return null;
    }

    @Override
    public List<HouseType> listObj(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT id,typename FROM housestype";
        List<HouseType> list= null;
        try {
            list = queryRunner.query(sql, new BeanListHandler<>(HouseType.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }
}
