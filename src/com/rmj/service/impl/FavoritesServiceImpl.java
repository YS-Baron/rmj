package com.rmj.service.impl;

import com.rmj.common.page.Page;
import com.rmj.dao.impl.FavoritesDAOImpl;
import com.rmj.po.Favorites;
import com.rmj.po.ParamVO;
import com.rmj.service.BaseService;

import java.util.List;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class FavoritesServiceImpl implements BaseService<Favorites> {

    private FavoritesDAOImpl favoritesDAO;

    public FavoritesServiceImpl() {
        favoritesDAO = new FavoritesDAOImpl();
    }

    @Override
    public int save(Favorites favorites) {
//        Favorites f = favoritesDAO.getByUidAndHid(favorites.getUid(), favorites.getHid());
//        if (f != null) {
//            return favoritesDAO.update(favorites);
//        }
        return favoritesDAO.insert(favorites);
    }

    @Override
    public int remove(Favorites favorites) {
        return favoritesDAO.delete(favorites);
    }

    @Override
    public int update(Favorites favorites) {
        return 0;
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
        return null;
    }

    @Override
    public int countObj(ParamVO params) {
        return 0;
    }

    public Page listObjByPage(ParamVO params) {
        Page page = new Page();
        page.setItems(favoritesDAO.listObj(params));
        page.setCurrentPage(params.getPageNum());
        page.setPageSize(params.getPageSize());
        page.setTotalRows(favoritesDAO.countObj(params));
        return page;
    }

    public Favorites getByUidAndHid(int uid, int hid){
        return favoritesDAO.getByUidAndHid(uid,hid);
    }
}
