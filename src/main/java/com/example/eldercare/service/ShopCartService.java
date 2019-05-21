package com.example.eldercare.service;

import com.example.eldercare.entity.ShopCart;


import java.util.List;

public interface ShopCartService {

    int AddShopCart(Integer serviceId, Integer userId, String serviceName, String serviceUrl, float price);

    List<ShopCart> getShopCartByUserId(Integer userId);

    int deleteShopCartByUserId(Integer shopcartId);
}
