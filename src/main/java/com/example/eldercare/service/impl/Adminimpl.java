package com.example.eldercare.service.impl;

import com.example.eldercare.entity.Admin;
import com.example.eldercare.mapper.AdminMapper;
import com.example.eldercare.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class Adminimpl implements AdminService {

    @Resource
    private AdminMapper adminMapper;

    @Override
    public int register(String name, String password) {
        return adminMapper.register(name, password);
    }

    @Override
    public Admin login(String name, String password) {
        return adminMapper.login(name, password);
    }
}
