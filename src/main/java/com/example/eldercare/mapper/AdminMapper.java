package com.example.eldercare.mapper;

import com.example.eldercare.entity.Admin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

@Component
@org.apache.ibatis.annotations.Mapper
public interface AdminMapper extends Mapper<Admin> {

    @Insert("insert into t_admin(admin_name,admin_password)values(#{name},#{password})")
    int register(@Param(value = "name") String name, @Param(value = "password") String password);

    @Select("select * from t_admin where admin_name=#{name}and admin_password=#{password}")
    Admin login(@Param(value = "name") String name, @Param(value = "password") String password);
}
