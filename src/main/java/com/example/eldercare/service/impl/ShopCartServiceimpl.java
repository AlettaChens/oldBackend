package com.example.eldercare.service.impl;

import com.example.eldercare.entity.ShopCart;
import com.example.eldercare.mapper.ShopCartMapper;
import com.example.eldercare.service.ShopCartService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class ShopCartServiceimpl implements ShopCartService {
    @Resource
    private ShopCartMapper shopCartMapper;

    @Override
    public int AddShopCart(Integer serviceId, Integer userId, String serviceName, String serviceUrl, float price) {
        return shopCartMapper.AddShopcart(serviceId, userId, serviceName, serviceUrl, price);
    }

    @Override
    public List<ShopCart> getShopCartByUserId(Integer userId) {
        return shopCartMapper.getShopCartByUserId(userId);
    }

    @Override
    public int deleteShopCartByUserId(Integer shopcartId) {
        return shopCartMapper.deleteShopCartByUserId(shopcartId);
    }
}
