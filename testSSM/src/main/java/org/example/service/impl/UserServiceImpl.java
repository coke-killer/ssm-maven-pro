package org.example.service.impl;

import org.example.mapper.UserMapper;
import org.example.bean.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;


    @Override
    public User selectUserByUser(User user) {
        return userMapper.selectUserByUser(user);
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public User selectUserByName(User user) {
        return userMapper.selectUserByName(user);
    }
}
