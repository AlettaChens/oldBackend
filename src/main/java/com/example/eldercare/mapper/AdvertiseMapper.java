package com.example.eldercare.mapper;


import com.example.eldercare.entity.Advertise;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Component
@org.apache.ibatis.annotations.Mapper
public interface AdvertiseMapper extends Mapper<Advertise> {

    @Insert("insert into t_advertise(advertise_url)values(#{url})")
    int addAdvertise(@Param(value = "url") String url);


    @Select("select * from t_advertise")
    List<Advertise> getAllAdvertise();

    @Update("update t_advertise set advertise_url=#{url} where advertise_id=#{id}")
    int updateAdvertise(@Param(value = "url") String url, @Param(value = "id") Integer id);

    @Delete("delete from t_advertise where advertise_id=#{id}")
    int deleteAdvertise(@Param(value = "id") Integer id);
}
