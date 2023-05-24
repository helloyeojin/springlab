package com.kbstar;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
@Slf4j
@SpringBootTest
class Web25ApplicationTests {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Test
    void contextLoads() {
        String rawPassword = "pwdtest";
        String encPassword = encoder.encode(rawPassword);
        log.info("--------------------------------------------");
        log.info(rawPassword);
        log.info("암호화 된 비번: " + encPassword);
        boolean result = encoder.matches(rawPassword,encPassword);
        log.info(result+"");
        log.info("--------------------------------------------");
    }
}
