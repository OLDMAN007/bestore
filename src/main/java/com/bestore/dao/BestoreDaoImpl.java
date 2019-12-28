package com.bestore.dao;

import com.bestore.entity.Bestore;
import com.bestore.entity.History;
import com.bestore.entity.Store_about;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bestoreDaoImpl")
public class BestoreDaoImpl implements BestoreDao {
    @Autowired
    MongoTemplate mongoTemplate;

    String bestore_id = "5d16ae8246fcc8124c003046";

    public Bestore findBestore() {
        Query query = new Query();
        query.addCriteria(Criteria.where("_id").is(bestore_id));
        return mongoTemplate.findOne(query,Bestore.class);
    }

    @Override
    public List<History> findHistory() {
//        QueryBuilder queryBuilder = new QueryBuilder();
//        BasicDBObject fieldsObject = new BasicDBObject();
//        fieldsObject.put("_id",false);
//        fieldsObject.put("history",true);
//        Query query = new BasicQuery(queryBuilder.get(),fieldsObject);
        Query query = new Query();
        query.fields().include("history");
        query.fields().exclude("_id");
        return mongoTemplate.find(query,History.class);
    }

    public String findStore_name() {
        Query query = new Query();
        query.addCriteria(Criteria.where("_id").is(bestore_id));
        mongoTemplate.findOne(query,Bestore.class);
        return null;
    }

    public String findStore_logo() {
        return null;
    }

    public String findStore_place() {
        return null;
    }

    public String findStore_tel() {
        return null;
    }

    public String findStore_zipcode() {
        return null;
    }

    public String findStore_fax() {
        return null;
    }

    public Store_about findStore_about() {
        return null;
    }

    public String findSince() {
        return null;
    }

    public String findClutur() {
        return null;
    }

    public void updateStore_name(String store_name) {
        Query query = new Query();
        Update update = new Update();
        update.set("store_name",store_name);
        mongoTemplate.updateFirst(query,update,Bestore.class);
    }

    public String updateStore_logo() {
        return null;
    }

    public void updateStore_place(String store_place) {
        Query query = new Query();
        Update update = new Update();
        update.set("store_place",store_place);
        mongoTemplate.updateFirst(query,update,Bestore.class);
    }

    public String updateStore_tel() {
        return null;
    }

    public void updateStore_zipcode(String store_zipcode) {
        Query query = new Query();
        Update update = new Update();
        update.set("store_zipcode",store_zipcode);
        mongoTemplate.updateFirst(query,update,Bestore.class);
    }

    public String updateStore_fax() {
        return null;
    }

    public Store_about updateStore_about() {
        return null;
    }

    public String updateSince() {
        return null;
    }

    public String updateClutur() {
        return null;
    }

    public String updateHistory() {
        return null;
    }
}
