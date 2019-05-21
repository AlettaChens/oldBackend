package com.example.eldercare.entity;

import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "t_service_category")
public class Category implements Serializable {
    private Integer service_category_id;
    private String service_category;
    private String service_category_url;

    public Category() {
    }

    public Category(Integer service_category_id, String service_category, String service_category_url) {
        this.service_category_id = service_category_id;
        this.service_category = service_category;
        this.service_category_url = service_category_url;
    }

    public Integer getService_category_id() {
        return service_category_id;
    }

    public void setService_category_id(Integer service_category_id) {
        this.service_category_id = service_category_id;
    }

    public String getService_category() {
        return service_category;
    }

    public void setService_category(String service_category) {
        this.service_category = service_category;
    }

    public String getService_category_url() {
        return service_category_url;
    }

    public void setService_category_url(String service_category_url) {
        this.service_category_url = service_category_url;
    }
}
