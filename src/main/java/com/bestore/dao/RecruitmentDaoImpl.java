package com.bestore.dao;

import com.bestore.entity.Recruitment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("recruitmentDaoImpl")
public class RecruitmentDaoImpl implements RecruitmentDao {
    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public Recruitment findRecruitment() {
        Query query = new Query();
        return mongoTemplate.findOne(query,Recruitment.class);
    }
}
