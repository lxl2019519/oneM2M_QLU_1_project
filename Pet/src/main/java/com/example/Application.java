package com.example;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@Slf4j
@MapperScan("com.example.mapper")
@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
          System.out.println("项目启动后请访问：http://localhost:9999/page/end/login.html");
//        log.warn("项目启动后请访问：http://localhost:9999/page/end/login.html");
    }
}
