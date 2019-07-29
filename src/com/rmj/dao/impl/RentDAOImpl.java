package com.rmj.dao.impl;

import com.rmj.dao.BaseDAO;
import com.rmj.po.ParamVO;
import com.rmj.po.Rent;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/29
 */
public class RentDAOImpl implements BaseDAO<Rent> {

    private DataSource ds;

    public RentDAOImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(Rent rent) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO rent (uid,hid,starttime,endtime,price,description) VALUES (?,?,?,?,?,?)";
        int res = 0;
        try {
            res = queryRunner.update(sql, rent.getUid(), rent.getHid(), rent.getStartTime(), rent.getEndTime(), rent.getPrice(), rent.getDescription());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(Rent rent) {
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

    public List<Rent> listObj(int uid) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT rent.uid uid,hid,starttime,endtime,rent.price price,rent.description description,address " +
                "FROM rent LEFT JOIN houses ON rent.hid = houses.id WHERE rent.uid = ?";
        List<Rent> list = null;
        try {
            list = queryRunner.query(sql, new BeanListHandler<>(Rent.class), uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
