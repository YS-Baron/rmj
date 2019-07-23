package com.rmj.service;

import com.rmj.po.ParamVO;

import java.util.List;

/**
 *
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public interface BaseService<T> {

    int save(T t);

    int remove(T t);

    int update(T t);

    T getByName(String name);

    T getById(int id);

    List<T> listObj(ParamVO params);

    int countObj(ParamVO params);
}
