package com.rmj.po;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
public class HouseType {

    //类型编号
    private int id;
    //名称
    private String typename;

    public HouseType() {
    }

    public HouseType(int id) {
        this.id = id;
    }

    public HouseType(String typename) {
        this.typename = typename;
    }

    public HouseType(int id, String typename) {
        this.id = id;
        this.typename = typename;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}
