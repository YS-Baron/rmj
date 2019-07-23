package com.rmj.dao;

import com.rmj.po.ParamVO;

import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public interface BaseDAO<T> {

    int insert(T t);

    int delete(T t);

    int update(T t);

    T getByName(String name);

    T getById(int id);

    List<T> listObj(ParamVO params);

    int countObj(ParamVO params);
}
