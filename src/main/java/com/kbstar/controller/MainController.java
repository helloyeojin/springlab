package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/next")   // 주소 뒤에 /next가 붙어오면 next.jsp를 호출할게~
    public String next(Model model){
        model.addAttribute("mydata", "Hi");
        // mydata라는 이름으로 Hi라는 데이터가 들어가게됨
        // hashmap이랑 비슷하다고 생각하시면 돼요
        return "next";
    }

    @RequestMapping("/second")   // 주소 뒤에 /next가 붙어오면 next.jsp를 호출할게~
    public String second(Model model){
        return "second";
    }
}
