package com.example.eldercare.entity;

import javax.persistence.Table;

@Table(name = "t_advertise")
public class Advertise {

    private Integer advertise_id;
    private String advertise_url;

    public Advertise() {
    }

    public Advertise(Integer advertisr_id, String advertise_url) {
        this.advertise_id = advertisr_id;
        this.advertise_url = advertise_url;
    }

    public Integer getAdvertisr_id() {
        return advertise_id;
    }

    public void setAdvertisr_id(Integer advertisr_id) {
        this.advertise_id = advertisr_id;
    }

    public String getAdvertise_url() {
        return advertise_url;
    }

    public void setAdvertise_url(String advertise_url) {
        this.advertise_url = advertise_url;
    }
}
