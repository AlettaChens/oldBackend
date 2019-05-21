package com.example.eldercare.mapper;

import com.example.eldercare.entity.Service;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Component
@org.apache.ibatis.annotations.Mapper
public interface ServiceMapper extends Mapper<Service> {

    @Insert("insert into t_service(service_name,service_price,service_image_url,service_description,service_hot,service_type)values(#{name},#{price},#{image_url},#{description},#{hot},#{type})")
    int addService(@Param(value = "name") String name, @Param("price") float price, @Param("image_url") String image_url, @Param(value = "description") String description, @Param(value = "hot") String hot, @Param(value = "type") String type);

    @Select("select * from t_service where service_id=#{id}")
    Service getServiceById(@Param(value = "id") Integer id);

//    @Select("select service_type from t_service group by service_type")
//    List<String> getAllType();

    @Select("select * from t_service limit #{offset},#{pagesize}")
    List<Service> getServiceByPage(@Param(value = "offset") Integer offset, @Param(value = "pagesize") Integer pagesize);

    @Select("select * from t_service where service_hot=#{hot}")
    List<Service> getServiceByHot(@Param(value = "hot") String hot);

    @Select("select * from t_service where service_type=#{type}")
    List<Service> getServiceByType(@Param(value = "type") String type);

    @Update("update t_service set service_name=#{name},service_price=#{price},service_image_url=#{image_url},service_description=#{description} ,service_hot=#{hot},service_type=#{type} where service_id=#{id}")
    int updateService(@Param(value = "name") String name, @Param("price") float price, @Param("image_url") String image_url, @Param(value = "description") String description, @Param(value = "hot") String hot, @Param(value = "type") String type, @Param(value = "id") Integer id);

    @Delete("delete from t_service where service_id=#{id}")
    int deleteServiceById(@Param(value = "id") Integer id);

    @Select("select count(*) from t_service")
    int getServiceCount();

    @Select("select * from t_service where service_name=#{name}")
    List<Service> getServiceByName(@Param(value = "name") String ServiceName);

}