package com.kbstar.ncp;

import com.kbstar.util.CFRFaceUtil;
import com.kbstar.util.OCRUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Map;

@Slf4j
@SpringBootTest
class OCRTest {

    @Value("${uploadimgdir}")
    String imgpath;

    @Test
    void contextLoads() throws ParseException {
        JSONObject jo = null;
        jo = (JSONObject) OCRUtil.getResult(imgpath, "businesscard.png");
        //log.info(jo.toJSONString());
        Map map = OCRUtil.getData2(jo);
        log.info(map.toString());
    }
}
