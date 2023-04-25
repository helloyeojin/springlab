package com.kbstar.controller;


import com.kbstar.dto.Cust;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cust")
public class CustController {

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "cust/";

    //127.0.0.1/cust
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/get")
    public String get(Model model, String id) {
        Cust cust = new Cust(id, "xxx", "망고");
        model.addAttribute("gcust", cust);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model) {
        List<Cust> list = new ArrayList<>();
        list.add(new Cust("uhmango", "pwd01", "망고"));
        list.add(new Cust("uhkiwi", "pwd02", "키위"));
        list.add(new Cust("uhnapple", "pwd03", "애플"));
        list.add(new Cust("uhplum", "pwd04", "플럼"));
        list.add(new Cust("uhmelon", "pwd05", "멜론"));
        model.addAttribute("clist", list);

        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"all");
        return "index";
    }
}