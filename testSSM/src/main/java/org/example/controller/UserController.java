package org.example.controller;

import org.example.bean.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @ResponseBody
    public String doRegister(User user) {
        User user1 = userService.selectUserByName(user);
        if (user1 != null) {
            return "failed";
        }
        userService.insertUser(user);
        return "success";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @ResponseBody
    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String doLogin(User user, HttpSession httpSession) {
        User user1 = userService.selectUserByUser(user);
        if (user1 != null) {
            httpSession.setAttribute("userLogin", user1);
            return "success";
        } else
            return "failed";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(User user) {
        return "reset";
    }
}
