package com.xiaoACE.ssm.service;

import com.xiaoACE.ssm.entity.model.User;

import java.util.List;
import java.util.Map;

public interface UserService {

    //登录
    User queryUserByAccountAndPassword(Map<String,Object> map);

    //列出所有用户(被删除的除外)
    List<User> listAllUser();

    //搜索指定用户(被删除的除外)
    List<User> getUserListByInput(String value);

    //根据账户搜索用户
    User selectUserByAccount(String account);

    //增加用户
    int insert(User user);

    //删除用户(del为flag)
    int delete(Integer id);

    //查找用户(通过id)
    User find(Integer id);

    //更新用户
    int update(User user);



}
