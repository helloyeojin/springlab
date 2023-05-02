//AjaxImplController

package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Marker;
import com.kbstar.service.CustService;
import com.kbstar.service.MarkerService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
@Slf4j
@RestController
public class AjaxImplController {

    @Autowired
    MarkerService markerService;
    @Autowired
    CustService custService;


    @RequestMapping("/getservertime")
    public Object getservertime() {
        Date date = new Date();
        return date;
    }

    @RequestMapping("/getdata")
    public Object getdata() {
        List<Cust> list = new ArrayList<>();
        list.add(new Cust("id01", "pw01", "james1"));
        list.add(new Cust("id02", "pw02", "james2"));
        list.add(new Cust("id03", "pw03", "james3"));
        list.add(new Cust("id04", "pw04", "james4"));
        list.add(new Cust("id05", "pw05", "james5"));

        // java Object ---> json 변경하려고!!!!
        // JSON(JavaScript Object Notation)
        // [{},{},{},.....]
        JSONArray ja = new JSONArray();
        for (Cust obj : list) {
            JSONObject jo = new JSONObject();
            Random r = new Random();
            int i = r.nextInt(100 + 1);
            jo.put("id", obj.getId());
            jo.put("pwd", obj.getPwd());
            jo.put("name", obj.getName() + i);
            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/checkid")
    public Object checkid(String id) throws Exception {
        int result = 0;
        Cust cust = null;
        cust = custService.get(id);
        if(cust != null){
            result=1;
        }
        return result;
    }

    @RequestMapping("/chart05")
    public Object chart05(String year) {
        JSONArray ja = new JSONArray();
        for(int i=1; i<=12; i++){
            Random r = new Random();
            int num = r.nextInt(100)+1;
            ja.add(num);
        }
        return ja;
    }

    @RequestMapping("/markers")
    public Object markers(String loc) throws Exception {
        List<Marker> list=null;
        try {
            list= markerService.getLoc(loc);

        } catch (Exception e) {
           throw new Exception("시스템 장애");

        }
//        if (loc.equals("s")) {
//            list.add(new Marker(100, "국밥", "http://www.nate.com", 37.577617, 126.975041, "a.jpeg", "s"));
//            list.add(new Marker(101, "짬뽕", "http://www.naver.com", 37.579617, 126.973041, "b.jpeg", "s"));
//            list.add(new Marker(102, "삼겹살", "http://www.daum.net", 37.581617, 126.979041, "c.jpeg", "s"));
//
//        } else if (loc.equals("b")) {
//            list.add(new Marker(103, "국밥", "http://www.nate.com", 35.112495, 129.03733, "a.jpeg", "b"));
//            list.add(new Marker(104, "짬뽕", "http://www.naver.com", 35.114495, 129.03533, "b.jpeg", "b"));
//            list.add(new Marker(105, "삼겹살", "http://www.daum.net", 35.116495, 129.04133, "c.jpeg", "b"));
//
//        } else if (loc.equals("j")) {
//            list.add(new Marker(106, "국밥", "http://www.nate.com", 33.2521205, 126.563076, "a.jpeg", "j"));
//            list.add(new Marker(107, "짬뽕", "http://www.naver.com", 33.2541205, 126.557076, "b.jpeg", "j"));
//            list.add(new Marker(108, "삼겹살", "http://www.daum.net", 33.2561205, 126.564076, "c.jpeg", "j"));
//
//        }
        JSONArray ja = new JSONArray();
        for (Marker obj : list) {
            JSONObject jo = new JSONObject();
            jo.put("id", obj.getId());
            jo.put("title", obj.getTitle());
            jo.put("target", obj.getTarget());
            jo.put("lat", obj.getLat());
            jo.put("lng", obj.getLng());
            jo.put("img", obj.getImg());
            jo.put("loc", obj.getLoc());
            ja.add(jo);
        }
        return ja;
    }
}