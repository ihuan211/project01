package com.template.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
    @RequestMapping(value = "view/{page}")
    public String view(@PathVariable("page") String page){
        return page;
    }
}
