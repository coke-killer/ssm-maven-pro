package org.example.controller;

import org.example.bean.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")

public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/list")
    public String getUserByUser(Model model) {
        List<User> userLogin = userService.getUserByUser();
        model.addAttribute("userLogin", userLogin);
        return "login";
    }
}
