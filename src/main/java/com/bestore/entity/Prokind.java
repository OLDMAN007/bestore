package com.bestore.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * prokind 商品种类表
 */
@Document(collection = "prokind")
public class Prokind {
    @Id
    private String prokind_id;
    private int kind_num;
    private String kind_name;
    private String kind_image;

    @Override
    public String toString() {
        return "Prokind{" +
                "prokind_id='" + prokind_id + '\'' +
                ", kind_num=" + kind_num +
                ", kind_name='" + kind_name + '\'' +
                ", kind_image='" + kind_image + '\'' +
                '}';
    }

    public String getProkind_id() {
        return prokind_id;
    }

    public void setProkind_id(String prokind_id) {
        this.prokind_id = prokind_id;
    }

    public int getKind_num() {
        return kind_num;
    }

    public void setKind_num(int kind_num) {
        this.kind_num = kind_num;
    }

    public String getKind_name() {
        return kind_name;
    }

    public void setKind_name(String kind_name) {
        this.kind_name = kind_name;
    }

    public String getKind_image() {
        return kind_image;
    }

    public void setKind_image(String kind_image) {
        this.kind_image = kind_image;
    }

    public Prokind(String prokind_id, int kind_num, String kind_name, String kind_image) {
        this.prokind_id = prokind_id;
        this.kind_num = kind_num;
        this.kind_name = kind_name;
        this.kind_image = kind_image;
    }

    public Prokind() {
    }
}
