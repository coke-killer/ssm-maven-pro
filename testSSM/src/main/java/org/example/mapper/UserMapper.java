package org.example.mapper;

import org.example.bean.User;

import java.util.List;

public interface UserMapper {

    User selectUserByUser(User user);

    void insertUser(User user);

    User selectUserByName(User user);

    void updatePasswordByUser(User user);
}
