package com.kbstar.controller;


import com.kbstar.dto.Item;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Slf4j
@Controller
@RequestMapping("/item")
public class ItemController {

    //Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "item/";
    @Autowired
    ItemService service;

    //127.0.0.1/item
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

    @RequestMapping("/all")
    public String all(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = service.get();
        } catch (Exception e) {
            throw new Exception("시스템 장애:ER0002");
        }
//        List<Item> list = new ArrayList<>();
//        list.add(new Item(100, "rose1", 1000, "a.jpg", new Date()));
//        list.add(new Item(101, "rose2", 2000, "b.jpg", new Date()));
//        list.add(new Item(102, "rose3", 3000, "c.jpg", new Date()));
//        list.add(new Item(103, "rose4", 4000, "d.jpg", new Date()));
//        list.add(new Item(104, "rose5", 5000, "e.jpg", new Date()));
        model.addAttribute("allitem", list);

        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }
}