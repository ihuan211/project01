package com.template.service;

import com.template.bean.Person;

import java.util.List;

public interface PersonService {
    /**
     * add
     * @param person
     * @return
     */
    int savePerson(Person person);

    List<Person> getPerson();
}
