package com.example.eldercare.service;

import com.example.eldercare.entity.Service;

import java.util.List;


public interface IService {

    int addService(String name, float price, String image_url, String description, String hot, String type);

    Service getServiceById(Integer id);


    List<Service> getServiceByPage(Integer pageNum, Integer pageSize);


    List<Service> getServiceByHot(String hot);

    List<Service> getServiceByType(String type);


    int updateService(String name, float price, String image_url, String description, String hot, String type, Integer id);


    int deleteServiceById(Integer id);

    int getServiceCount();

    List<Service> getServiceByName(String serviceName);
}
