package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
public class MainController {
    @RequestMapping("/")
    public String main() {
        return "index";
    }

    // /quics?page=bs01
    @RequestMapping("/quics")
    public String quics(String page) {
        return page;
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center", "register");
        return "index";
    }
}