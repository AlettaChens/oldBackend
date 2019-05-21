package com.example.eldercare.entity;

import java.io.File;
import javax.persistence.Table;

@Table(name = "t_user")
public class User implements java.io.Serializable {

    private Integer user_id;
    private String nickname;
    private String password;
    private String sex;
    private String age;
    private String phone;
    private String image_url;
    private String address;

    public User() {
    }

    public User(Integer user_id, String phone, String username, String password, String sex, String age, String nickname, String image_url, String address) {
        this.user_id = user_id;
        this.phone = phone;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.nickname = nickname;
        this.image_url = image_url;
        this.address = address;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {

        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}