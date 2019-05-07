package com.template.service.impl;

import com.template.bean.Person;
import com.template.mapper.PersonMapper;
import com.template.service.PersonService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    private static Logger logger = Logger.getLogger(PersonServiceImpl.class);
    @Autowired
    PersonMapper personMapper;

    @Override
    public int savePerson(Person person) {
        logger.error("error开始！");
        return personMapper.insertSelective(person);
    }

    @Override
    public List<Person> getPerson() {
        return personMapper.selectByExample(null);
    }

    @Override
    public int delete(String tid) {
        return personMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public Person getPersonById(String tid) {
        return personMapper.selectByPrimaryKey(tid);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int update(Person person) {
        personMapper.updateByPrimaryKeySelective(person);
        return 0;
    }
}
