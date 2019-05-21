package com.example.eldercare.service.impl;

import com.example.eldercare.entity.Order;
import com.example.eldercare.mapper.OrderMapper;
import com.example.eldercare.service.OrderService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class OrderServiceimpl implements OrderService {

    @Resource
    private OrderMapper orderMapper;

    @Override
    public int requsteOrder(Integer userId, Integer serviceId, float price, String serviceName, String userName, String serviceUrl, String address, String phone, String status, String orderdate) {
        return orderMapper.requsteOrder(userId, serviceId, price, serviceName, userName, serviceUrl, address, phone, status, orderdate);
    }

    @Override
    public List<Order> getOrderPageByAdmin(Integer offset, Integer pageSize) {
        return orderMapper.getOrderPageByAdmin(offset, pageSize);
    }

    @Override
    public List<Order> getOrderPageByUserId(Integer offset, Integer pageSize, Integer userId) {
        return orderMapper.getOrderPageByUserId(offset, pageSize, userId);
    }

    @Override
    public List<Order> getStatusOrder(String status, Integer userId) {
        return orderMapper.getStatusOrder(status, userId);
    }

    @Override
    public int updateOrderStatus(String status, Integer orderId) {
        return orderMapper.updateOrderStatus(status, orderId);
    }

    @Override
    public int deleteOrderById(Integer orderId) {
        return orderMapper.deleteOrderById(orderId);
    }

    @Override
    public int getOrderCount() {
        return orderMapper.getOrderCount();
    }

    @Override
    public List<Order> getOrderByName(String userName) {
        return orderMapper.getOrderByName(userName);
    }
}
