package com.kbstar.controller;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class ChartImplController {
    @RequestMapping("/chart02")
    public Object chart02(){
        // [1,2,3] 데이터가 이런 식으로 생겼음
        JSONObject jo = new JSONObject();
        JSONArray jaCnt = new JSONArray();

        for(int i = 1; i<=12; i++){
            Random r = new Random();
            int cnt = r.nextInt(10000)+1;
            jaCnt.add(cnt);
        }
        JSONArray jaYear = new JSONArray();
        for(int i=2011; i<=2023; i++){
            jaYear.add(i);
        }
        jo.put("category", jaYear);
        jo.put("datas", jaCnt);
        return jo;
    }

    @RequestMapping("/chart0301")
    public Object chart0301(){
        //[[],[]]
        JSONArray ja = new JSONArray();
        for(int i=1; i<=5; i++){
            Random r = new Random();
            int num = r.nextInt(20)+1;
            JSONArray jadata = new JSONArray();
            jadata.add("data"+num);
            jadata.add(num);
            ja.add(jadata);
        }
        return ja;
    }

    @RequestMapping("/chart0302")
    public Object chart0302(){
        //[[],[]]
        JSONArray ja = new JSONArray();
        for(int i=1; i<=30; i++){
            Random r = new Random();
            int num1 = r.nextInt(10)+1;
            int num2 = r.nextInt(10)+1;
            int num3 = r.nextInt(10)+1;
            JSONArray jadata = new JSONArray();
            jadata.add(num1);
            jadata.add(num2);
            jadata.add(num3);
            ja.add(jadata);
        }
        return ja;
    }

    @RequestMapping("/chart0303")
    public Object chart0303(){
        //[[],[]]
        JSONArray jarray = new JSONArray();

        for(int j=1; j<=2; j++){
            JSONArray ja = new JSONArray();
            for(int i=1; i<=14; i++){
                Random r = new Random();
                int num1 = r.nextInt(100)+1;
                int num2 = r.nextInt(100)+1;
                int num3 = r.nextInt(100)+1;
                JSONArray jadata = new JSONArray();
                jadata.add(num1);
                jadata.add(num2);
                jadata.add(num3);
                ja.add(jadata);
            }
            jarray.add(ja);
        }
        return jarray;
    }
}
