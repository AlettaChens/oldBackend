package com.example.eldercare.service;

import com.example.eldercare.entity.Admin;


public interface AdminService {
    int register(String name, String password);

    Admin login(String name, String password);

}
