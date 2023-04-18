package com.kbstar.app;

import com.kbstar.frame.*;  // 여기 있는 모든 클래스 임포트
import com.kbstar.tv.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
    public static void main(String[] args) {
        ApplicationContext factory =
                new ClassPathXmlApplicationContext("spring.xml");

        TV tv = (TV) factory.getBean("stv");
        tv.turnOn();
    }
}
