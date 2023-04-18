package com.kbstar.app;

import com.kbstar.frame.TV;
import com.kbstar.tv.LTV;

public class App {
    public static void main(String[] args) {
        TV tv = new LTV();  // LTV를 STV로만 바꾸면 바로 작동!
        
        tv.turnOn();
    }
}
