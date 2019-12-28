package com.bestore.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * product 商品信息表
 */
@Document(collection = "product")
public class Product {
    @Id
    private String pro_id;
    private String pro_name;
    private String pro_image;
    private int pro_kind;
    private String pro_time;

    @Override
    public String toString() {
        return "Product{" +
                "pro_id='" + pro_id + '\'' +
                ", pro_name='" + pro_name + '\'' +
                ", pro_image='" + pro_image + '\'' +
                ", pro_kind='" + pro_kind + '\'' +
                ", pro_time='" + pro_time + '\'' +
                '}';
    }

    public String getPro_id() {
        return pro_id;
    }

    public void setPro_id(String pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public String getPro_image() {
        return pro_image;
    }

    public void setPro_image(String pro_image) {
        this.pro_image = pro_image;
    }

    public int getPro_kind() {
        return pro_kind;
    }

    public void setPro_kind(int pro_kind) {
        this.pro_kind = pro_kind;
    }

    public String getPro_time() {
        return pro_time;
    }

    public void setPro_time(String pro_time) {
        this.pro_time = pro_time;
    }

    public Product(String pro_id, String pro_name, String pro_image, int pro_kind, String pro_time) {
        this.pro_id = pro_id;
        this.pro_name = pro_name;
        this.pro_image = pro_image;
        this.pro_kind = pro_kind;
        this.pro_time = pro_time;
    }

    public Product() {
    }
}
