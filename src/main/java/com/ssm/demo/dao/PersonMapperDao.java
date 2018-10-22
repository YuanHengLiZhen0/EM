package com.ssm.demo.dao;

import com.ssm.demo.model.Person;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonMapperDao {
    Person findPersonById(long id);
}