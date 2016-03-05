package com.cn.qpm.usermanage.dao;

import org.apache.ibatis.annotations.Param;

import com.cn.qpm.usermanage.model.LoginUser;

public interface LoginUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(LoginUser record);

    int insertSelective(LoginUser record);

    LoginUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LoginUser record);

    int updateByPrimaryKey(LoginUser record);
    
    LoginUser selectByLoginMess(@Param("email")String email, @Param("password")String password);
}