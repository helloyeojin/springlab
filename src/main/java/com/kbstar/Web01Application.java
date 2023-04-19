package com.kbstar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class Web01Application {   //실행은 여기서 시켜요

    public static void main(String[] args) {
        SpringApplication.run(Web01Application.class, args);
    }

        // JSP Setting
        @Bean
        public InternalResourceViewResolver setupViewResolver() {
            InternalResourceViewResolver resolver = new InternalResourceViewResolver();
            resolver.setPrefix("/views/");  // JSP라는 화면을 만드는 기술이 들어가는 디렉토리
            resolver.setSuffix(".jsp");
            return resolver;
        }
}
