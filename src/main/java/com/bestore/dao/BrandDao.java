package com.bestore.dao;

import com.bestore.entity.Brand;

import java.util.List;

public interface BrandDao {
    List<Brand> findBrand();
    void insertBrand(Brand brand);
    void deleteBrand(String brand_id);
}
