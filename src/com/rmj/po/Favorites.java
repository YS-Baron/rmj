package com.rmj.po;

import java.util.Date;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/24
 */
public class Favorites {

    //用户id
    private int uid;
    //房屋编号
    private int hid;
    //地址
    private String address;
    //价格
    private double price;
    //图片地址
    private String img;
    //收藏时间
    private Date date;

    public Favorites() {
    }

    public Favorites(int uid, int hid) {
        this.uid = uid;
        this.hid = hid;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
