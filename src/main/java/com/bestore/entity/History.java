package com.bestore.entity;

/**
 * history 店铺历史信息表
 */
public class History {
    private int vernum;
    private String verimage;

    @Override
    public String toString() {
        return "History{" +
                "vernum=" + vernum +
                ", verimage='" + verimage + '\'' +
                '}';
    }

    public int getVernum() {
        return vernum;
    }

    public void setVernum(int vernum) {
        this.vernum = vernum;
    }

    public String getVerimage() {
        return verimage;
    }

    public void setVerimage(String verimage) {
        this.verimage = verimage;
    }

    public History(int vernum, String verimage) {
        this.vernum = vernum;
        this.verimage = verimage;
    }

    public History() {
    }
}
