package com.bestore.entity;

/**
 * store_about 店铺详细信息表
 */
public class Store_about {
    private String forfile;
    private String working;
    private String reputation;
    private String dream;

    public Store_about() {
    }

    public Store_about(String forfile, String working, String reputation, String dream) {
        this.forfile = forfile;
        this.working = working;
        this.reputation = reputation;
        this.dream = dream;
    }

    @Override
    public String toString() {
        return "Store_about{" +
                "forfile='" + forfile + '\'' +
                ", working='" + working + '\'' +
                ", reputation='" + reputation + '\'' +
                ", dream='" + dream + '\'' +
                '}';
    }

    public String getForfile() {
        return forfile;
    }

    public void setForfile(String forfile) {
        this.forfile = forfile;
    }

    public String getWorking() {
        return working;
    }

    public void setWorking(String working) {
        this.working = working;
    }

    public String getReputation() {
        return reputation;
    }

    public void setReputation(String reputation) {
        this.reputation = reputation;
    }

    public String getDream() {
        return dream;
    }

    public void setDream(String dream) {
        this.dream = dream;
    }
}
