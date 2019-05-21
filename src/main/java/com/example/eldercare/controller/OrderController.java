package com.example.eldercare.controller;

import com.example.eldercare.entity.ResultMap;
import com.example.eldercare.entity.Service;
import com.example.eldercare.entity.User;
import com.example.eldercare.service.IService;
import com.example.eldercare.service.OrderService;
import com.example.eldercare.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
@RequestMapping("order")
@Api(value = "订单接口", description = "订单接口")
@CrossOrigin
public class OrderController {

    @Resource
    private UserService userService;

    @Resource
    private IService iService;

    @Resource
    private OrderService orderService;

    @RequestMapping(value = "requestOrder", method = RequestMethod.POST)
    @ApiOperation(value = "发起订单", notes = "发起订单")
    public ResultMap requeestOrder(Integer userId, Integer serviceId) {
        User user = userService.getUserInfo(userId);
        Service service = iService.getServiceById(serviceId);
        String status = "未完成";
        String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        if (orderService.requsteOrder(userId, serviceId, service.getService_price(), service.getService_name(), user.getNickname(), service.getService_image_url(), user.getAddress(), user.getPhone(), status, time) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }

    @RequestMapping(value = "getOrderPageByAdmin", method = RequestMethod.POST)
    @ApiOperation(value = "管理员分页获取所有订单", notes = "管理员分页获取所有订单")
    public ResultMap getOrderPageByAdmin(Integer pageNum, Integer pageSize) {
        if (orderService.getOrderPageByAdmin((pageNum - 1) * pageSize, pageSize) != null) {
            return ResultMap.ok(orderService.getOrderPageByAdmin((pageNum - 1) * pageSize, pageSize));
        }
        return ResultMap.fail(null);
    }

    @RequestMapping(value = "getOrderPageByUserId", method = RequestMethod.POST)
    @ApiOperation(value = "用户分页获取所有订单", notes = "用户分页获取所有订单")
    public ResultMap getOrderPageByAdmin(Integer pageNum, Integer pageSize, Integer userId) {
        if (orderService.getOrderPageByUserId((pageNum - 1) * pageSize, pageSize, userId) != null) {
            return ResultMap.ok(orderService.getOrderPageByAdmin((pageNum - 1) * pageSize, pageSize));
        }
        return ResultMap.fail(null);
    }


    @RequestMapping(value = "getStatusOrder", method = RequestMethod.POST)
    @ApiOperation(value = "获取指定状态的订单", notes = "获取指定状态的订单")
    public ResultMap getStatusOrder(String status, Integer userId) {
        if (orderService.getStatusOrder(status, userId) != null) {
            return ResultMap.ok(orderService.getStatusOrder(status, userId));
        }
        return ResultMap.fail(null);
    }


    @RequestMapping(value = "updateOrderStatus", method = RequestMethod.POST)
    @ApiOperation(value = "更新订单的状态", notes = "更新订单的状态")
    public ResultMap updateOrderStatus(String status, Integer orderId) {
        if (orderService.updateOrderStatus(status, orderId) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }


    @RequestMapping(value = "deleteOrderById", method = RequestMethod.POST)
    @ApiOperation(value = "删除订单", notes = "删除订单")
    public ResultMap deleteOrderById(Integer orderId) {
        if (orderService.deleteOrderById(orderId) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "获取订单的数量", notes = "获取订单的数量")
    @RequestMapping(value = "/getOrderCount", method = RequestMethod.POST)
    public ResultMap getUserCount() {
        return ResultMap.ok(orderService.getOrderCount());
    }

    @ApiOperation(value = "获取指定名称的订单", notes = "获取指定名称的订单")
    @RequestMapping(value = "/getOrderByName", method = RequestMethod.POST)
    public ResultMap getOrderByName(String serviceName) {
        if (orderService.getOrderByName(serviceName) != null) {
            return ResultMap.ok(orderService.getOrderByName(serviceName));
        }
        return ResultMap.fail(null);
    }

}
