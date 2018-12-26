package com.util;


/**
 *作者:zzq
 *时间:11点27分
 *作用:spring boot启动类
 **/

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.util.*")
public class ServerApplication {
	public static void main(String[] args) {
        SpringApplication.run(ServerApplication.class, args);
    }
}
