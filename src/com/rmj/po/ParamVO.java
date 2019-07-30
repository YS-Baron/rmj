package com.rmj.po;

import java.util.Date;

/**
 * 查询条件的实体类
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
public class ParamVO {

    private String name;
    private double area;
    private double price;
    private Date startDate;
    private Date endDate;
    private int uid;
    private int hid;
    private int pageNum;
    private int pageSize;
    private int id;
    private int tid;
    private String address;
    private String province;
    private String city;


    public ParamVO() {
    }

    public ParamVO(int uid, int pageNum, int pageSize) {
        this.uid = uid;
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public ParamVO( int tid, double price, double area,String province, String city, String addressint,int uid,int pageNum, int pageSize) {
        this.area = area;
        this.price = price;
        this.uid = uid;
        this.tid = tid;
        this.address = address;
        this.province = province;
        this.city = city;
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public ParamVO(String province, String city,String address, int pageNum, int pageSize) {
        this.address = address;
        this.province = province;
        this.city = city;
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public ParamVO(int hid) {
        this.hid = hid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
}
