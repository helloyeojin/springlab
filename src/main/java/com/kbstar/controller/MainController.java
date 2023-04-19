package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/next")   // 주소 뒤에 /next가 붙어오면 next.jsp를 호출할게~
    public String next(){
        return "next";
    }
}
