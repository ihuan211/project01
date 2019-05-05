package com.template.controller;

import com.template.bean.Person;
import com.template.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/person")
public class PersonController {
    @Autowired
    PersonService personService;

    @RequestMapping(value = "save")
    @ResponseBody
    public Object savaPerson(){
        Person p = new Person();
        p.setName("a1");
        p.setAge(18);
        p.setGender("男");
        return personService.savePerson(p);
    }

    @RequestMapping(value = "getAll")
    @ResponseBody
    public List<Person> getPerson(){
        return personService.getPerson();
    }
}
