package com.wso2.choreo.sample.springboot.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import com.wso2.choreo.sample.springboot.model.Campaign;

@RestController
public  class CampaignController {
    private final RestTemplate restTemplate = new RestTemplate();
    private static final String BASE_URL = System.getenv("BASE_URL") != null ? System.getenv("BASE_URL") : "http://3.19.66.80:8080/bionic";

    @GetMapping("/campaigns")
    public ResponseEntity<Object> getCampaigns(@RequestParam(required = false) String id) {
        String url = (id != null) ? BASE_URL + "/campaigns?id=" + id : BASE_URL + "/campaigns";
        try {
            if (id == null) {
                ResponseEntity<Object> response = restTemplate.getForEntity(url, Object.class);
                ArrayList<Campaign> campaigns = (ArrayList<Campaign>) response.getBody();
                return ResponseEntity.ok().body(campaigns);
            } else {
                ResponseEntity<Object> response = restTemplate.getForEntity(url, Object.class);
                Campaign campaign = restTemplate.getForObject(url, Campaign.class);
                return ResponseEntity.ok().body(campaign);
            }
        } catch (Exception e) {
            // Log the error or handle it in some way
            System.out.println(e.toString());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred while retrieving campaigns");
        }
    }

    @PostMapping("/campaigns")
    public ResponseEntity<Object> createCampaign(@RequestBody Campaign newCampaign) {
        try {
            String url = BASE_URL + "/campaigns";
            ResponseEntity<Object> response = restTemplate.postForEntity(url, newCampaign, Object.class);
            return ResponseEntity.status(HttpStatus.CREATED).body(response.getBody());
        } catch (Exception e) {
            // Log the error or handle it in some way
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred while creating a campaign");
        }
    }

    @PutMapping("/campaigns")
    public ResponseEntity<Object> updateCampaign(@RequestBody Campaign updatedCampaign) {
        try {
            String id = updatedCampaign.getId();
            String url = BASE_URL + "/campaigns/" + id;
            restTemplate.put(url, updatedCampaign);
            return ResponseEntity.ok().body(updatedCampaign);
        } catch (Exception e) {
            // Log the error or handle it in some way
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred while updating the campaign");
        }
     
    }

    // Generate the respective java spring boot model for Campaign

}
