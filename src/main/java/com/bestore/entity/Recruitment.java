package com.bestore.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

/**
 * recruitment 招聘信息表
 */
@Document(collection = "recruitment")
public class Recruitment {
    @Id
    private String rec_id;
    private String rec_title;
    private int rec_kind;
    private String rec_time;
    private List<Rec_comment> rec_comment;

    @Override
    public String toString() {
        return "Recruitment{" +
                "rec_id='" + rec_id + '\'' +
                ", rec_title='" + rec_title + '\'' +
                ", rec_kind=" + rec_kind +
                ", rec_time='" + rec_time + '\'' +
                ", rec_comment=" + rec_comment +
                '}';
    }

    public String getRec_id() {
        return rec_id;
    }

    public void setRec_id(String rec_id) {
        this.rec_id = rec_id;
    }

    public String getRec_title() {
        return rec_title;
    }

    public void setRec_title(String rec_title) {
        this.rec_title = rec_title;
    }

    public int getRec_kind() {
        return rec_kind;
    }

    public void setRec_kind(int rec_kind) {
        this.rec_kind = rec_kind;
    }

    public String getRec_time() {
        return rec_time;
    }

    public void setRec_time(String rec_time) {
        this.rec_time = rec_time;
    }

    public List<Rec_comment> getRec_comment() {
        return rec_comment;
    }

    public void setRec_comment(List<Rec_comment> rec_comment) {
        this.rec_comment = rec_comment;
    }

    public Recruitment(String rec_id, String rec_title, int rec_kind, String rec_time, List<Rec_comment> rec_comment) {
        this.rec_id = rec_id;
        this.rec_title = rec_title;
        this.rec_kind = rec_kind;
        this.rec_time = rec_time;
        this.rec_comment = rec_comment;
    }

    public Recruitment() {
    }
}
