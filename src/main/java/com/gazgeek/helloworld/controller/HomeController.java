package com.gazgeek.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class HomeController {

    @RequestMapping("/")
    String home() {
        return "Hello! 测试自动上传镜像到阿里云镜像仓库 ？"+ new Date();
    }

}
