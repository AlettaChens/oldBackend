package com.example.eldercare.mapper;

import com.example.eldercare.entity.Category;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Component
@org.apache.ibatis.annotations.Mapper
public interface CategoryMapper extends Mapper<Category> {

    @Insert("insert into t_service_category(service_category,service_category_url)values(#{name},#{url})")
    int addServiceCategory(@Param(value = "name") String name, @Param(value = "url") String url);


    @Select("select * from t_service_category")
    List<Category> getAllServiceCategory();

    @Update("update t_service_category set service_category=#{name},service_category_url=#{url} where service_category_id=#{id}")
    int updateServiceCategory(@Param(value = "name") String name, @Param(value = "url") String url, @Param(value = "id") Integer id);

    @Delete("delete from t_service_category where service_category_id=#{id}")
    int deleteServiceCategory(@Param(value = "id") Integer id);
}
