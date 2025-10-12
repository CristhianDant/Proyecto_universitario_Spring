package com.example.demo.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    // Enpoint que retorna el JSP de login
    @RequestMapping("/")
    public String login() {
        return "login";
    }

}
