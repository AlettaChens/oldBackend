package com.example.eldercare.mapper;


import com.example.eldercare.entity.Service;
import com.example.eldercare.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Component
@org.apache.ibatis.annotations.Mapper
public interface UserMapper extends Mapper<User> {
    @Insert("insert into t_user(nickname,password)values(#{nickname},#{password})")
    int register(@Param(value = "nickname") String nickname, @Param(value = "password") String password);

    @Select("select * from t_user where nickname=#{nickname}and password=#{password}")
    User login(@Param(value = "nickname") String nickname, @Param(value = "password") String password);

    @Select("select * from t_user where user_id=#{id}")
    User getUserInfoById(@Param(value = "id") Integer id);

    @Update("update t_user set nickname=#{nickname}where user_id=#{userId}")
    int updateNickName(@Param(value = "nickname") String nickname, @Param(value = "userId") Integer userId);

    @Update("update t_user set sex=#{sex} where user_id=#{userId}")
    int updateSex(@Param(value = "sex") String sex, @Param(value = "userId") Integer userId);

    @Update("update t_user set phone=#{phone} where user_id=#{userId}")
    int updatePhone(@Param(value = "phone") String phone, @Param(value = "userId") Integer userId);

    @Update("update t_user set age =#{age} where user_id=#{userId}")
    int updateAge(@Param(value = "age") String age, @Param(value = "userId") Integer userId);

    @Update("update t_user set address =#{address} where user_id=#{userId}")
    int updateAddress(@Param(value = "address") String address, @Param(value = "userId") Integer userId);

    @Update("update t_user set image_url =#{image_url} where user_id=#{userId}")
    int updateURL(@Param(value = "image_url") String address, @Param(value = "userId") Integer userId);

    @Select("select * from t_user")
    List<User> getAllUser();

    @Select("select count(*) from t_user")
    int getUserCount();

    @Select("select * from t_user limit #{offset},#{pagesize}")
    List<User> getUserByPage(@Param(value = "offset") Integer offset, @Param(value = "pagesize") Integer pagesize);


}