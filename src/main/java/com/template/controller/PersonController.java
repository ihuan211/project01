package com.template.controller;

import com.template.bean.Person;
import com.template.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {
    @Autowired
    PersonService personService;

    @RequestMapping(value = "add")
    public String add(Person p){
        personService.savePerson(p);
        return "redirect:getAll";
    }

    @RequestMapping(value = "getAll")
    public String getAll(ModelMap map){
        map.put("person",personService.getPerson());
        return "test";
    }

    @RequestMapping(value = "getPersonById")
    public String getPersonById(ModelMap map,String tid){
        map.put("person",personService.getPersonById(tid));
        return "update";
    }

    @RequestMapping(value = "update")
    public String update(Person p){
        personService.update(p);
        return "redirect:getAll";
    }

    @RequestMapping(value = "del")
    public String delete(String tid){
        personService.delete(tid);
        return "redirect:getAll";
    }
}
