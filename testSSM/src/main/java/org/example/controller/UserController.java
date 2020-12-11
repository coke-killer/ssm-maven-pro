package org.example.controller;

import org.example.bean.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")

public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/doRegister")
    public String doRegister(User user) {
        User user1 = userService.selectUserByUser(user);
        if (user1 == null) {
            userService.insertUser(user);
        }
        return "redirect:/user/login";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/doLogin")
    public String doLogin(User user, HttpSession httpSession) {
        User user1 = userService.selectUserByUser(user);
        if (user1 != null) {
            httpSession.setAttribute("userLogin", user1);
            return "forward:/book/list";
        } else
            return "loginFail";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(User user) {
        return "reset";
    }
}
