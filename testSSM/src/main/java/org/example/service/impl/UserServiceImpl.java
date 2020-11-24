package org.example.service.impl;

import org.example.mapper.UserMapper;
import org.example.bean.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;


    @Override
    public List<User> getUserByUser() {
        return userMapper.getUserByUser();
    }
}
