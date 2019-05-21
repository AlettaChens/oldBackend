package com.example.eldercare.mapper;

import com.example.eldercare.entity.Order;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
@Component
public interface OrderMapper extends Mapper<Order> {

    @Insert("insert into t_order(user_id,service_id,price,service_name,user_name,service_image_url,address,phone,status,orderdate)values(#{userId},#{serviceId},#{price},#{serviceName},#{userName},#{serviceUrl},#{address},#{phone},#{status},#{orderdate})")
    int requsteOrder(@Param(value = "userId") Integer userId, @Param(value = "serviceId") Integer serviceId, @Param(value = "price") float price, @Param(value = "serviceName") String serviceName, @Param(value = "userName") String userName, @Param(value = "serviceUrl") String serviceUrl, @Param(value = "address") String address, @Param(value = "phone") String phone, @Param(value = "status") String status, @Param(value = "orderdate") String orderdate);


    @Select("select * from  t_order limit #{offset},#{pagesize}")
    List<Order> getOrderPageByAdmin(@Param(value = "offset") Integer offset, @Param(value = "pagesize") Integer pageSize);


    @Select("select * from  t_order limit #{offset},#{pagesize} where user_id=#{userId}")
    List<Order> getOrderPageByUserId(@Param(value = "offset") Integer offset, @Param(value = "pagesize") Integer pageSize, @Param(value = "userId") Integer userId);

    @Select("select * from t_order where status=#{status} and user_id=#{userId}")
    List<Order> getStatusOrder(@Param(value = "status") String status, @Param(value = "userId") Integer userId);

    @Update("update t_order set status=#{status} where order_id=#{orderId}")
    int updateOrderStatus(@Param(value = "status") String status, @Param(value = "orderId") Integer orderId);

    @Delete("delete from t_order where order_id=#{orderId}")
    int deleteOrderById(@Param(value = "orderId") Integer orderId);

    @Select("select count(*) from t_order")
    int getOrderCount();

    @Select("select * from t_order where user_name=#{user_name}")
    List<Order> getOrderByName(@Param(value = "user_name") String user_name);
}
