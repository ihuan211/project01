package com.template.controller;

import com.template.bean.Person;
import com.template.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/person")
public class PersonController {
    @Autowired
    PersonService personService;

    @RequestMapping(value = "save")
    public Object savaPerson(){
        Person p = new Person();
        p.setName("a1");
        p.setAge(18);
        p.setGender("男");
        return personService.savePerson(p);
    }

}
