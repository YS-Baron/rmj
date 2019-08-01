package com.rmj.po;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
public class User {

    //主键
    private int id;
    //登入账户和手机号
    private String tel;
    //昵称
    private String nickname;
    //密码
    private String password;
    //电子邮件
    private String email;
    //头像的地址
    private String image;
    //角色（1：租客；2：房东；0：管理员）
    private int role;

    public User() {
    }

    public User(int id, String password) {
        this.id = id;
        this.password = password;
    }

    public User(int id, String nickname, String email) {
        this.id = id;
        this.nickname = nickname;
        this.email = email;
    }

    public User(int id, String nickname, String email, String image) {
        this.id = id;
        this.nickname = nickname;
        this.email = email;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
