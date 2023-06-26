package com.example.redis_caching.controllers;

import com.example.redis_caching.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
 public class LoginController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping
    public String home(){
        return "login";
    }

}
