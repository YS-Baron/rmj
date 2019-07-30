package com.rmj.dao.impl;

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
    public HousesDaoImpl(){
        ds= DruidUtil.getDruidDataSource();
    }

    @Override
    public int insert(Houses houses) {
        QueryRunner queryRunner=new QueryRunner(ds);
        String sql="INSERT INTO houses(id ,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,description) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        int res=0;
        try {
            res=queryRunner.update(sql,houses.getId(),houses.getTid(),houses.getPrice(),houses.getArea(),houses.getProvince(),houses.getCity(),houses.getAddress(),houses.getUid(),houses.getRoomNum(),houses.getLastroom(),houses.getDescription());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int delete(Houses houses) {
        QueryRunner queryRunner=new QueryRunner(ds);
        String sql="DELETE FROM houses WHERE id =?";
        int res=0;
        try {
            res=queryRunner.update(sql,houses.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public int update(Houses houses) {
        QueryRunner queryRunner=new QueryRunner(ds);
        String sql="UPDATE houses SET id=? ,SET tid=? ,SET price=? ,SET area=? ,SET province=? ,SET city=? ,SET address=? ,SET uid=? ,SET roomNum=? ,SET lastroom=?  ,description=? WHERW id=? ";
        int res=0;
        try {
            res=queryRunner.update(sql,houses.getId(),houses.getTid(),houses.getPrice(),houses.getArea(),houses.getProvince(),houses.getCity(),houses.getAddress(),houses.getUid(),houses.getRoomNum(),houses.getLastroom(),houses.getDescription());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    public int updateadmin(Houses houses){
        QueryRunner queryRunner=new QueryRunner(ds);
        String sql="UPDATE houses SET isQualified=? ";
        int res=0;
        try {
            res=queryRunner.update(sql,houses.getIsQualified());
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
        QueryRunner queryRunner=new QueryRunner(ds);
        String sql="SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,description FROM houses WHERE id=? and isQualified=1";
        Houses houses = null;
        try {
            houses=queryRunner.query(sql,new BeanHandler<>(Houses.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }
   //房主
    @Override
    public List<Houses> listObj(ParamVO params) {
        QueryRunner queryRunner=new QueryRunner(ds);
        List<Houses> houses=null;
        String sql="SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,description FROM houses WHERE uid=? limit ?,?";
        try {

          houses=queryRunner.query(sql,new BeanListHandler<Houses>(Houses.class),params.getUid(),(params.getPageNum() - 1) * params.getPageSize(), params.getPageSize());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }
    // 用户
    public List<Houses> listUser(ParamVO params){
        QueryRunner queryRunner=new QueryRunner(ds);
        List<Houses> houses=null;
        List<Object> objects=null;
        String sql="SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom  ,description FROM houses WHERE  isQualified=1 limit ?,?";
            try {
                if (params.getTid()!=0) {
                    sql += " and tid=?";
                    objects.add(params.getTid());
                }
                if (params.getPrice()!=0) {
                    sql+=" and price=?";
                    objects.add(params.getPrice());
                }
                if (params.getArea()!=0){
                    sql+=" and area=?";
                    objects.add(params.getArea());

                }
                if (params.getProvince()!=null){
                    sql+=" and province=?";
                    objects.add(params.getProvince());

                }
                if (params.getCity()!=null){
                    sql+=" and city=?";
                    objects.add(params.getCity());

                }
                if (params.getAddress()!=null){
                    sql+=" and address=?";
                    objects.add(params.getAddress());

                } if (params.getUid()!=0){
                    sql+=" and uid=?";
                    objects.add(params.getUid());
                }
                houses=queryRunner.query(sql,new BeanListHandler<Houses>(Houses.class),objects,(params.getPageNum() - 1) * params.getPageSize(), params.getPageSize());
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
            long count=queryRunner.query(sql,new ScalarHandler<>(),params.getUid());
            res=(int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }
    //管理员
    public List<Houses> listadmin(ParamVO params){
        QueryRunner queryRunner=new QueryRunner(ds);
        List<Houses> houses=null;
        List<Object> objects=null;
        String sql="SELECT id,tid ,price ,area ,province ,city ,address ,uid ,roomNum ,lastroom ,isQualified ,description FROM houses WHERE  limit ?,?";
        try {
            if (params.getProvince()!=null){
                sql+=" and province=?";
                objects.add(params.getProvince());

            }
            if (params.getCity()!=null){
                sql+=" and city=?";
                objects.add(params.getCity());

            }
            if (params.getAddress()!=null){
                sql+=" and address=?";
                objects.add(params.getAddress());

            }
            houses=queryRunner.query(sql,new BeanListHandler<Houses>(Houses.class),objects,(params.getPageNum() - 1) * params.getPageSize(), params.getPageSize());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    public int countUser(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM houses WHERE isQualified=1 ";
        List<Houses> houses = null;
        List<Object> objects = null;
        int res = 0;
            try {
                if (params.getTid() != 0) {
                    sql += " and tid=?";
                    objects.add(params.getTid());
                }
                if (params.getPrice() != 0) {
                    sql += " and price=?";
                    objects.add(params.getPrice());
                }
                if (params.getArea() != 0) {
                    sql += " and area=?";
                    objects.add(params.getArea());

                }
                if (params.getProvince() != null) {
                    sql += " and province=?";
                    objects.add(params.getProvince());

                }
                if (params.getCity() != null) {
                    sql += " and city=?";
                    objects.add(params.getCity());

                }
                if (params.getAddress() != null) {
                    sql += " and address=?";
                    objects.add(params.getAddress());

                }
                if (params.getUid() != 0) {
                    sql += " and uid=?";
                    objects.add(params.getUid());
                }
                long count = queryRunner.query(sql, new ScalarHandler<>(), objects);
                res = (int) count;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return res;
        }

    public int countadmin(ParamVO params) {
        QueryRunner queryRunner = new QueryRunner(ds);
        String sql = "SELECT count(*) FROM houses ";
        List<Houses> houses = null;
        List<Object> objects = null;
        int res = 0;
        try {
            if (params.getProvince() != null) {
                sql += " and province=?";
                objects.add(params.getProvince());

            }
            if (params.getCity() != null) {
                sql += " and city=?";
                objects.add(params.getCity());

            }
            if (params.getAddress() != null) {
                sql += " and address=?";
                objects.add(params.getAddress());
            }
            long count = queryRunner.query(sql, new ScalarHandler<>(), objects);
            res = (int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }



    }
