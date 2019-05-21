package com.example.eldercare.service;


import com.example.eldercare.entity.User;

import java.util.List;

public interface UserService {
    int register(String nickname, String password);

    User login(String nickname, String password);

    int updateInfo(String address, String age, String phone, String sex, String nickname, Integer userId);

    int updateURL(String image_url, Integer userId);

    int getUserCount();

    User getUserInfo(Integer userId);

    List<User> getUserByPage(int offset, int pageSize);
}
