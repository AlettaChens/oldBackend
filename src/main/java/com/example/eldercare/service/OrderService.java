package com.example.eldercare.service;

import com.example.eldercare.entity.Order;


import java.util.List;

public interface OrderService {


    int requsteOrder(Integer userId, Integer serviceId, float price, String serviceName, String userName, String serviceUrl, String address, String phone, String status, String orderdate);


    List<Order> getOrderPageByAdmin(Integer offset, Integer pageSize);


    List<Order> getOrderPageByUserId(Integer offset, Integer pageSize, Integer userId);


    List<Order> getStatusOrder(String status, Integer userId);


    int updateOrderStatus(String status, Integer orderId);


    int deleteOrderById(Integer orderId);

    int getOrderCount();

    List<Order> getOrderByName(String userName);
}
