package org.example.service;

import org.example.bean.User;


public interface UserService {

    User selectUserByUser(User user);

    void insertUser(User user);

    User selectUserByName(User user);

    void updatePasswordByUser(User user);
}
