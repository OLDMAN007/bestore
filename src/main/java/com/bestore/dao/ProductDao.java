package com.bestore.dao;

import com.bestore.entity.Product;

import java.util.List;

public interface ProductDao {
    List<Product> findProduct();
    void insertProduct(Product product);
    void deleteProduct(String pro_id);
}
