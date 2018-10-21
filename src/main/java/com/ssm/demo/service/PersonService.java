package com.ssm.demo.service;

import com.ssm.demo.entity.Person;

public interface PersonService {
    Person findPersonById(long id);
}