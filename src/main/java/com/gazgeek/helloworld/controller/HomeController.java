package com.gazgeek.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @RequestMapping("/")
    String home() {
        return "Hello! 测试自动上传镜像到阿里云镜像仓库 2020-01-19 11:55:00？";
    }

}
