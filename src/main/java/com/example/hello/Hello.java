package com.example.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName Hello
 * @Deacription TODO
 * @Author zhihaop
 * @Date 2021/3/9 13:47
 **/
@RestController
@RequestMapping("/h")
public class Hello {
    @GetMapping
    public String helloWorld(){
        return "潘志豪";
    }
}
