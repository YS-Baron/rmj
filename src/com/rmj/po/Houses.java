package com.rmj.po;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
public class Houses {

    //编号
    private int id;
    //类型编号
    private int tid;
    //价格
    private double price;
    //面积
    private double area;
    //所在省份
    private String province;
    //所在城市
    private String city;
    //具体地址
    private String address;
    //房东编号
    private int uid;
    //房间个数
    private int roomNum;
    //剩余房间个数
    private int lastroom;
    //是否合格（1表示检查合格，0表示未检查或则不合格）
    private String isQualified;
    //房间的描述
    private String description;

    public Houses(int tid, double price, double area, String province, String city, String address, int uid, int roomNum, int lastroom, String description) {
        this.tid = tid;
        this.price = price;
        this.area = area;
        this.province = province;
        this.city = city;
        this.address = address;
        this.uid = uid;
        this.roomNum = roomNum;
        this.lastroom = lastroom;
        this.description = description;
    }

    public Houses(int id, int tid, double price, double area, String province, String city, String address, int uid, int roomNum, int lastroom, String description) {
        this.id = id;
        this.tid = tid;
        this.price = price;
        this.area = area;
        this.province = province;
        this.city = city;
        this.address = address;
        this.uid = uid;
        this.roomNum = roomNum;
        this.lastroom = lastroom;

        this.description = description;
    }

    public Houses(int id) {
        this.id = id;
    }

    public Houses(String isQualified) {
        this.isQualified = isQualified;
    }

    public Houses(int tid, double price, double area, String province, String city, String address, int uid) {
        this.tid = tid;
        this.price = price;
        this.area = area;
        this.province = province;
        this.city = city;
        this.address = address;
        this.uid = uid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public int getLastroom() {
        return lastroom;
    }

    public void setLastroom(int lastroom) {
        this.lastroom = lastroom;
    }

    public String getIsQualified() {
        return isQualified;
    }

    public void setIsQualified(String isQualified) {
        this.isQualified = isQualified;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
