package com.rmj.dao.impl;

import com.alibaba.druid.util.StringUtils;
import com.rmj.dao.BaseDAO;
import com.rmj.po.Houses;
import com.rmj.po.ParamVO;
import com.rmj.util.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.*;

public class HousesDaoImpl implements BaseDAO<Houses> {
    private DataSource ds;

    public HousesDaoImpl() {
        ds = DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(Houses houses) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "INSERT INTO houses(tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom " +
                ",description) VALUES (?,?,?,?,?,?,?,?,?,?)";
        int res = 0;
        try {
            res = queryRunner.update(sql, houses.getTid(), houses.getPrice(), houses.getArea(), houses.getProvince(),
                    houses.getCity(), houses.getAddress(), houses.getUid(), houses.getRoomNum(), houses.getLastroom(), houses.getDescription());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(Houses houses) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "DELETE FROM houses WHERE id =?";
        int res = 0;
        try {
            res = queryRunner.update(sql, houses.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(Houses houses) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "UPDATE houses SET tid=? , price=? , area=? , province=? ,city=? ,address=? ," +
                "roomNum=? ,lastroom=? ,description=? where id=? ";
        int res = 0;
        try {
            res = queryRunner.update(sql, houses.getTid(), houses.getPrice(), houses.getArea(),
                    houses.getProvince(), houses.getCity(), houses.getAddress(), houses.getRoomNum(),
                    houses.getLastroom(), houses.getDescription(), houses.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    public int updateadmin(Houses houses) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "UPDATE houses SET isQualified= 1 where id = ?";
        int res = 0;
        try {
            res = queryRunner.update(sql, houses.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public Houses getByName(String name) {
        return null;
    }

    @Override
    public Houses getById(int id) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,description FROM houses WHERE id=?";
        Houses houses = null;
        try {
            houses = queryRunner.query(sql, new BeanHandler<>(Houses.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    //房主
    @Override
    public List<Houses> listObj(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        List<Houses> houses = null;
        String sql = "SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,description FROM houses WHERE uid=? limit ?,?";
        try {

            houses = queryRunner.query(sql, new BeanListHandler<Houses>(Houses.class), params.getUid(), (params.getPageNum() - 1) * params.getPageSize(), params.getPageSize());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    // 用户
    public List<Houses> listUser(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        List<Houses> houses = null;
        List<Object> list = new ArrayList<>();
        String sql = "SELECT id,tid ,price ,area ,province ,city ,address,roomNum ,lastroom ," +
                "description FROM houses WHERE  isQualified=1 ";
        try {
            if (params.getTid() != 0) {
                sql += " and tid=?";
                list.add(params.getTid());
            }
            if (params.getsPrice() >= 0) {
                sql += " and price>? and price < ?";
                list.add(params.getsPrice());
                list.add(params.getePrice());
            }
            if (params.getsArea() >= 0) {
                sql += " and area>? and area < ?";
                list.add(params.getsArea());
                list.add(params.geteArea());
            }
            if (!StringUtils.isEmpty(params.getProvince())) {
                sql += " and province=?";
                list.add(params.getProvince());

            }
            if (!StringUtils.isEmpty(params.getCity())) {
                sql += " and city=?";
                list.add(params.getCity());

            }
            if (!StringUtils.isEmpty(params.getAddress())) {
                sql += " and address like %?%";
                list.add(params.getAddress());

            }
            sql += " limit ?,?";
            list.add((params.getPageNum() - 1) * params.getPageSize());
            list.add(params.getPageSize());
            houses = queryRunner.query(sql, list.toArray(), new BeanListHandler<Houses>(Houses.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    @Override
    public int countObj(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM houses WHERE uid=?";
        int res = 0;
        try {
            long count = queryRunner.query(sql, new ScalarHandler<>(), params.getUid());
            res = (int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    //管理员
    public List<Houses> listadmin(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        List<Houses> houses = null;
        List<Object> list = new ArrayList<>();
        String sql = "SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,isQualified " +
                ",description FROM houses WHERE isqualified = 0 ";
        try {
            if (!StringUtils.isEmpty(params.getProvince())) {
                sql += " and province=?";
                list.add(params.getProvince());
            }
            if (!StringUtils.isEmpty(params.getCity())) {
                sql += " and city=?";
                list.add(params.getCity());
            }
            if (!StringUtils.isEmpty(params.getAddress())) {
                sql += " and address=?";
                list.add(params.getAddress());
            }
            sql += " limit ?,?";
            list.add((params.getPageNum() - 1) * params.getPageSize());
            list.add(params.getPageSize());
            houses = queryRunner.query(sql, list.toArray(), new BeanListHandler<>(Houses.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    public int countUser(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM houses WHERE isQualified=1 ";
        List<Object> list = new ArrayList<>();
        int res = 0;
        try {
            if (params.getTid() != 0) {
                sql += " and tid=?";
                list.add(params.getTid());
            }
            if (params.getsPrice() >= 0) {
                sql += " and price>? and price < ?";
                list.add(params.getsPrice());
                list.add(params.getePrice());
            }
            if (params.getsArea() >= 0) {
                sql += " and area>? and area < ?";
                list.add(params.getsArea());
                list.add(params.geteArea());
            }
            if (!StringUtils.isEmpty(params.getProvince())) {
                sql += " and province=?";
                list.add(params.getProvince());

            }
            if (!StringUtils.isEmpty(params.getCity())) {
                sql += " and city=?";
                list.add(params.getCity());

            }
            if (!StringUtils.isEmpty(params.getAddress())) {
                sql += " and address like %?%";
                list.add(params.getAddress());

            }
            long count = queryRunner.query(sql, list.toArray(), new ScalarHandler<>());
            res = (int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public int countadmin(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM houses WHERE isqualified = 0 ";
        List<Object> list = new ArrayList<>();
        int res = 0;
        try {
            if (!StringUtils.isEmpty(params.getProvince())) {
                sql += " and province=?";
                list.add(params.getProvince());
            }
            if (!StringUtils.isEmpty(params.getCity())) {
                sql += " and city=?";
                list.add(params.getCity());
            }
            if (!StringUtils.isEmpty(params.getAddress())) {
                sql += " and address=?";
                list.add(params.getAddress());
            }
            long i = queryRunner.query(sql, list.toArray(), new ScalarHandler<>());
            res = (int) i;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public Houses selectByHourse(Houses houses) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT id FROM houses WHERE tid = ? and price = ? and area = ? and province = ? and city = ? " +
                "and address = ? and uid = ? and roomNum = ? and lastroom = ? and description = ?";
        try {
            houses = queryRunner.query(sql, new BeanHandler<>(Houses.class), houses.getTid(), houses.getPrice(),
                    houses.getArea(), houses.getProvince(), houses.getCity(), houses.getAddress(), houses.getUid(),
                    houses.getRoomNum(), houses.getLastroom(), houses.getDescription());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }
}
