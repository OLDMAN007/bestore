package com.bestore.dao;

import com.bestore.entity.Bestore;
import com.bestore.entity.History;
import com.bestore.entity.Store_about;

import java.util.List;

public interface BestoreDao {
    Bestore findBestore();
    List<History> findHistory();

    String findStore_name();
    String findStore_logo();
    String findStore_place();
    String findStore_tel();
    String findStore_zipcode();
    String findStore_fax();
    Store_about findStore_about();
    String findSince();
    String findClutur();

    void updateStore_name(String store_name);
    String updateStore_logo();
    void updateStore_place(String store_place);
    String updateStore_tel();
    void updateStore_zipcode(String store_zipcode);
    String updateStore_fax();
    Store_about updateStore_about();
    String updateSince();
    String updateClutur();
    String updateHistory();
}
