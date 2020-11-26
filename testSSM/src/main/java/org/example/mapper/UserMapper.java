package org.example.mapper;

import org.example.bean.User;

import java.util.List;

public interface UserMapper {

    User selectUserByUser(User user);

    void insertUser(User user);

    List<User> getUserByUser();
}
