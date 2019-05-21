package com.example.eldercare.controller;

import com.example.eldercare.entity.ResultMap;
import com.example.eldercare.entity.Service;
import com.example.eldercare.service.IService;
import com.example.eldercare.service.ShopCartService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


@RestController
@RequestMapping(value = "shopCart")
@Api(value = "购物车接口", description = "购物车接口")
@CrossOrigin
public class ShopCartController {

    @Resource
    private ShopCartService shopCartService;

    @Resource
    private IService iService;

    @ApiOperation(value = "添加购物车", notes = "添加购物车")
    @RequestMapping(value = "addShopCart", method = RequestMethod.POST)
    public ResultMap addShopCart(Integer serviceId, Integer userId) {
        Service service = iService.getServiceById(serviceId);
        if (shopCartService.AddShopCart(serviceId, userId, service.getService_name(), service.getService_image_url(), service.getService_price()) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "获取用户的购物车", notes = "获取用户的购物车")
    @RequestMapping(value = "getShopCartByUserId", method = RequestMethod.POST)
    public ResultMap getShopCartByUserId(Integer userId) {
        if (shopCartService.getShopCartByUserId(userId) != null) {
            return ResultMap.ok(shopCartService.getShopCartByUserId(userId));
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "删除用户购物车里面的服务", notes = "删除用户购物车里面的服务")
    @RequestMapping(value = "deleteShopCartService", method = RequestMethod.POST)
    public ResultMap deleteShopCartService(Integer shopcartId) {
        if (shopCartService.deleteShopCartByUserId(shopcartId) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }
}
