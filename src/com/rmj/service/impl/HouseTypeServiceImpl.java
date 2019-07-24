package com.rmj.service.impl;

import com.rmj.dao.impl.HouseTypeDAOImpl;
import com.rmj.po.HouseType;
import com.rmj.po.ParamVO;
import com.rmj.service.BaseService;

import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class HouseTypeServiceImpl implements BaseService<HouseType> {

    private HouseTypeDAOImpl houseTypeDAO;

    public HouseTypeServiceImpl() {
        houseTypeDAO = new HouseTypeDAOImpl();
    }

    @Override
    public int save(HouseType houseType) {
        HouseType type = houseTypeDAO.getByName(houseType.getTypename());
        if (type != null) {
            return -1;
        } else {
            return houseTypeDAO.insert(houseType);
        }
    }

    @Override
    public int remove(HouseType houseType) {
        return houseTypeDAO.delete(houseType);
    }

    @Override
    public int update(HouseType houseType) {
        return houseTypeDAO.update(houseType);
    }

    @Override
    public HouseType getByName(String name) {
        return null;
    }

    @Override
    public HouseType getById(int id) {
        return null;
    }

    @Override
    public List<HouseType> listObj(ParamVO params) {
        return houseTypeDAO.listObj(params);
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }
}
