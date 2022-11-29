package com.xiaoACE.ssm.service.Impl;

import com.xiaoACE.ssm.entity.mapper.UserMapper;
import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    //登录
    @Override
    public User queryUserByAccountAndPassword(Map<String, Object>map){
        return userMapper.selectUserByAccountAndPassword(map);
    }

    //查
    @Override
    public List<User> listAllUser() {
        return userMapper.listAllUser();
    }
    //搜索
    @Override
    public List<User> getUserListByInput(String value) {

        return userMapper.getUserListByInput(value);
    }

    //根据账户查询用户是否存在
    @Override
    public User selectUserByAccount(String account) {
        return userMapper.selectUserByAccount(account);
    }

    //增
    @Override
    public int insert(User user) {
        return userMapper.insertSelective(user);
    }

    //删
    //假删除
    @Override
    public int delete(Integer id) {
        return userMapper.updateDelFlagByPrimaryKey(id);
    }

    //真删除(never for use)
    //@Override
    //public int delete(Integer id) {
    //    return userMapper.deleteByPrimaryKey(id);
    //}


    @Override
    public User find(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    //改
    @Override
    public int update(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }



}
