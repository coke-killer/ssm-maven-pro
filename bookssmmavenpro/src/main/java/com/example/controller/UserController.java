package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")

public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/getUserByUser")
    public String getUserByUser(User user, Model model) {
        User userLogin = userService.getUserByUser(user);
        model.addAttribute("userLogin", userLogin);
        return "login";
    }
}
