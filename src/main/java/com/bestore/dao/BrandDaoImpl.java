package com.bestore.dao;

import com.bestore.entity.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("brandDaoImpl")
public class BrandDaoImpl implements BrandDao {
    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public void deleteBrand(String brand_id) {
        mongoTemplate.findAllAndRemove(Query.query(Criteria.where("_id").is(brand_id)),Brand.class);
    }

    @Override
    public void insertBrand(Brand brand) {
        mongoTemplate.insert(brand);
    }

    @Override
    public List<Brand> findBrand() {
        return mongoTemplate.findAll(Brand.class);
    }
}
