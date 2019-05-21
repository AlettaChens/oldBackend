package com.example.eldercare.mapper;

import com.example.eldercare.entity.ShopCart;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Component
@org.apache.ibatis.annotations.Mapper
public interface ShopCartMapper extends Mapper<ShopCart> {
    @Insert("insert into t_shopcart(service_id,user_id,service_name,service_image_url,price)values(#{serviceId},#{userId},#{serviceName},#{serviceUrl},#{price})")
    int AddShopcart(@Param(value = "serviceId") Integer serviceId, @Param(value = "userId") Integer userId, @Param(value = "serviceName") String serviceName, @Param(value = "serviceUrl") String serviceUrl, @Param(value = "price") float price);

    @Select("select * from t_shopcart where user_id=#{userId} ")
    List<ShopCart> getShopCartByUserId(@Param(value = "userId") Integer userId);

    @Delete("delete from t_shopcart where shopcart_id=#{shopcartId} ")
    int deleteShopCartByUserId(@Param(value = "shopcartId") Integer shopcartId);
}