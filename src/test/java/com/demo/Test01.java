package com.demo;

import com.template.service.RedisService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/spring-*.xml")
public class Test01 {
    @Autowired
    RedisService redisService;

    @Test
    public void test1(){
        System.out.println(redisService.getCacheObject("test2"));
    }
}
