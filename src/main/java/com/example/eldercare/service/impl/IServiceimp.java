package com.example.eldercare.service.impl;

import com.example.eldercare.entity.Service;
import com.example.eldercare.mapper.ServiceMapper;
import com.example.eldercare.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class IServiceimp implements IService {

    @Autowired
    private ServiceMapper serviceMapper;

    @Override
    public int addService(String name, float price, String image_url, String description, String hot, String type) {
        return serviceMapper.addService(name, price, image_url, description, hot, type);
    }

    @Override
    public Service getServiceById(Integer id) {
        return serviceMapper.getServiceById(id);
    }


    @Override
    public List<Service> getServiceByPage(Integer pageNum, Integer pageSize) {
        return serviceMapper.getServiceByPage((pageNum - 1) * pageSize, pageSize);
    }

    @Override
    public List<Service> getServiceByHot(String hot) {
        return serviceMapper.getServiceByHot(hot);
    }

    @Override
    public List<Service> getServiceByType(String type) {
        return serviceMapper.getServiceByType(type);
    }

    @Override
    public int updateService(String name, float price, String image_url, String description, String hot, String type, Integer id) {
        return serviceMapper.updateService(name, price, image_url, description, hot, type, id);
    }

    @Override
    public int deleteServiceById(Integer id) {
        return serviceMapper.deleteServiceById(id);
    }

    @Override
    public int getServiceCount() {
        return serviceMapper.getServiceCount();
    }

    @Override
    public List<Service> getServiceByName(String serviceName) {
        return serviceMapper.getServiceByName(serviceName);
    }
}
