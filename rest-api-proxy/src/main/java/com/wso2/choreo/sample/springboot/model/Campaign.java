package com.wso2.choreo.sample.springboot.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Campaign {
    private String id;
    private String createdAt;

    @JsonProperty("Company")
    private String Company;

    @JsonProperty("CampaignName")
    private String CampaignName;

    @JsonProperty("Advertiser")
    private String Advertiser;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @JsonIgnore
    public String getCompany() {
        return Company;
    }

    public void setCompany(String Company) {
        this.Company = Company;
    }

    @JsonIgnore
    public String getCampaignName() {
        return CampaignName;
    }

    public void setCampaignName(String CampaignName) {
        this.CampaignName = CampaignName;
    }

    @JsonIgnore
    public String getAdvertiser() {
        return Advertiser;
    }

    public void setAdvertiser(String Advertiser) {
        this.Advertiser = Advertiser;
    }

    // Add getters and setters for the fields you want to serialize
    // ...
}
