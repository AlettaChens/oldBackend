
package com.example.eldercare.service.impl;

import com.example.eldercare.entity.User;
import com.example.eldercare.mapper.UserMapper;
import com.example.eldercare.service.UserService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class UserServiceimpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public int register(String nickname, String password) {
        return userMapper.register(nickname, password);
    }

    @Override
    public User login(String nickname, String password) {
        return userMapper.login(nickname, password);
    }

    @Override
    public int updateInfo(String address, String age, String phone, String sex, String nickname, Integer userId) {
        return userMapper.updateAddress(address, userId);
    }


    @Override
    public int updateURL(String image_url, Integer userId) {
        return userMapper.updateURL(image_url, userId);
    }


    @Override
    public int getUserCount() {
        return userMapper.getUserCount();
    }

    @Override
    public List<User> getUserByPage(int page, int pagesize) {
        return userMapper.getUserByPage((page - 1) * pagesize, pagesize);
    }

    @Override
    public User getUserInfo(Integer userId) {
        return userMapper.getUserInfoById(userId);
    }
}

