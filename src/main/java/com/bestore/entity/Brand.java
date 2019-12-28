package com.bestore.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * brand 加盟信息表
 */
@Document(collection = "brand")
public class Brand {
    @Id
    private String brand_id;
    private String brand_title;
    private String brand_image;
    private String brand_time;
    private String brand_comment;

    @Override
    public String toString() {
        return "Brand{" +
                "brand_id='" + brand_id + '\'' +
                ", brand_title='" + brand_title + '\'' +
                ", brand_image='" + brand_image + '\'' +
                ", brand_time='" + brand_time + '\'' +
                ", brand_comment='" + brand_comment + '\'' +
                '}';
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_title() {
        return brand_title;
    }

    public void setBrand_title(String brand_title) {
        this.brand_title = brand_title;
    }

    public String getBrand_image() {
        return brand_image;
    }

    public void setBrand_image(String brand_image) {
        this.brand_image = brand_image;
    }

    public String getBrand_time() {
        return brand_time;
    }

    public void setBrand_time(String brand_time) {
        this.brand_time = brand_time;
    }

    public String getBrand_comment() {
        return brand_comment;
    }

    public void setBrand_comment(String brand_comment) {
        this.brand_comment = brand_comment;
    }

    public Brand(String brand_id, String brand_title, String brand_image, String brand_time, String brand_comment) {
        this.brand_id = brand_id;
        this.brand_title = brand_title;
        this.brand_image = brand_image;
        this.brand_time = brand_time;
        this.brand_comment = brand_comment;
    }

    public Brand() {
    }
}
