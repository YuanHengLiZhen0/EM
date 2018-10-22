package com.ssm.demo.service;

import com.ssm.demo.model.Person;

public interface PersonService {
    Person findPersonById(long id);
}