package com.bestore.entity;

/**
 * rec_comment 招聘岗位信息表
 */
public class Rec_comment {
    private String post;
    private int num;
    private String claim;
    private String place;

    @Override
    public String toString() {
        return "Rec_comment{" +
                "post='" + post + '\'' +
                ", num='" + num + '\'' +
                ", claim='" + claim + '\'' +
                ", place='" + place + '\'' +
                '}';
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getClaim() {
        return claim;
    }

    public void setClaim(String claim) {
        this.claim = claim;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Rec_comment(String post, int num, String claim, String place) {
        this.post = post;
        this.num = num;
        this.claim = claim;
        this.place = place;
    }

    public Rec_comment() {
    }
}
