package com.rmj.po;

import java.util.Date;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
public class Rent {

    //用户编号
    private int uid;
    //房屋编号
    private int hid;
    //租房开始时间
    private Date startTime;
    //租房结束时间
    private Date endTime;
    //价格
    private double price;
    //该租房描述
    private String description;

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

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
