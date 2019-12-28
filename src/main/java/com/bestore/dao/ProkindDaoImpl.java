package com.bestore.dao;

import com.bestore.entity.Prokind;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("prokindDaoimpl")
public class ProkindDaoImpl implements ProkindDao {
    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public List<Prokind> findProkind() {
        List<Prokind> prokind = mongoTemplate.findAll(Prokind.class);
        return prokind;
    }
}
