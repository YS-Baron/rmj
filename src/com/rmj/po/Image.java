package com.rmj.po;

public class Image {
   private int hid;
   private String image;

    public Image(ParamVO params, String s) {
        this.hid=params.getHid();
        this.image=s;
    }

    public Image(int hid, String image) {
        this.hid = hid;
        this.image = image;
    }

    public Image(int hid) {
        this.hid = hid;
    }

    public Image(String image) {
        this.image = image;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
