package com.template.service.impl;

import com.template.bean.Person;
import com.template.dal.mapper.PersonMapper;
import com.template.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService {
    @Autowired
    PersonMapper personMapper;

    @Override
    public int savePerson(Person person) {
        return personMapper.insertSelective(person);
    }
}
