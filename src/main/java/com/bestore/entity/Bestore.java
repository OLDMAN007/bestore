package com.bestore.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

/**
 * bastore 店铺信息表
 */
@Document(collection = "bestore")
public class Bestore {
    @Id
    private String store_id;
    private String store_name;
    private String store_logo;
    private String store_place;
    private String store_zipcode;
    private String store_tel;
    private String store_fax;
    private Store_about store_about;
    private String since;
    private String clutur;
    private List<History> history;

    @Override
    public String toString() {
        return "Bestore{" +
                "store_id='" + store_id + '\'' +
                ", store_name='" + store_name + '\'' +
                ", store_logo='" + store_logo + '\'' +
                ", store_place='" + store_place + '\'' +
                ", store_zipcode='" + store_zipcode + '\'' +
                ", store_tel='" + store_tel + '\'' +
                ", store_fax='" + store_fax + '\'' +
                ", store_about=" + store_about +
                ", since='" + since + '\'' +
                ", clutur='" + clutur + '\'' +
                ", history=" + history +
                '}';
    }

    public String getStore_id() {
        return store_id;
    }

    public void setStore_id(String store_id) {
        this.store_id = store_id;
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name;
    }

    public String getStore_logo() {
        return store_logo;
    }

    public void setStore_logo(String store_logo) {
        this.store_logo = store_logo;
    }

    public String getStore_place() {
        return store_place;
    }

    public void setStore_place(String store_place) {
        this.store_place = store_place;
    }

    public String getStore_zipcode() {
        return store_zipcode;
    }

    public void setStore_zipcode(String store_zipcode) {
        this.store_zipcode = store_zipcode;
    }

    public String getStore_tel() {
        return store_tel;
    }

    public void setStore_tel(String store_tel) {
        this.store_tel = store_tel;
    }

    public String getStore_fax() {
        return store_fax;
    }

    public void setStore_fax(String store_fax) {
        this.store_fax = store_fax;
    }

    public Store_about getStore_about() {
        return store_about;
    }

    public void setStore_about(Store_about store_about) {
        this.store_about = store_about;
    }

    public String getSince() {
        return since;
    }

    public void setSince(String since) {
        this.since = since;
    }

    public String getClutur() {
        return clutur;
    }

    public void setClutur(String clutur) {
        this.clutur = clutur;
    }

    public List<History> getHistory() {
        return history;
    }

    public void setHistory(List<History> history) {
        this.history = history;
    }

    public Bestore(String store_id, String store_name, String store_logo, String store_place, String store_zipcode, String store_tel, String store_fax, Store_about store_about, String since, String clutur, List<History> history) {
        this.store_id = store_id;
        this.store_name = store_name;
        this.store_logo = store_logo;
        this.store_place = store_place;
        this.store_zipcode = store_zipcode;
        this.store_tel = store_tel;
        this.store_fax = store_fax;
        this.store_about = store_about;
        this.since = since;
        this.clutur = clutur;
        this.history = history;
    }

    public Bestore() {
    }
}
