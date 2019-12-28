package com.bestore.dao;

import com.bestore.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productDaoImpl")
public class ProductDaoImpl implements ProductDao {
    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public List<Product> findProduct() {
        return mongoTemplate.findAll(Product.class);
    }

    @Override
    public void insertProduct(Product product) {
        mongoTemplate.insert(product);
    }

    @Override
    public void deleteProduct(String pro_id) {
        Query query = new Query();
        query.addCriteria(Criteria.where("_id").is(pro_id));
        mongoTemplate.findAllAndRemove(query,Product.class);
    }
}
