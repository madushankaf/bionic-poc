package com.wso2.choreo.sample.springboot.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.LinkedHashMap;

@RestController
public  class CampaignController {
    private final RestTemplate restTemplate = new RestTemplate();
    private static final String BASE_URL = System.getenv("BASE_URL") != null ? System.getenv("BASE_URL") : "http://3.19.66.80:8080/bionic";

    @GetMapping("/campaigns")
    public ResponseEntity<Object> getCampaigns(@RequestParam(required = false) String id) {
        String url = (id != null) ? BASE_URL + "/campaigns?id=" + id : BASE_URL + "/campaigns";
        try {
            ResponseEntity<Object> response = restTemplate.getForEntity(url, Object.class);
            return ResponseEntity.ok().body(response.getBody());
        } catch (Exception e) {
            // Log the error or handle it in some way
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred while retrieving campaigns");
        }
    }

    @PostMapping("/campaigns")
    public ResponseEntity<Object> createCampaign(@RequestBody Object newCampaign) {
        String url = BASE_URL + "/campaigns";
        ResponseEntity<Object> response = restTemplate.postForEntity(url, newCampaign, Object.class);
        return ResponseEntity.status(HttpStatus.CREATED).body(response.getBody());
    }

    @PutMapping("/campaigns")
    public ResponseEntity<Object> updateCampaign(@RequestBody Object updatedCampaign) {
        String id = (String) ((LinkedHashMap) updatedCampaign).get("id");
        String url = BASE_URL + "/campaigns/" + id;
        restTemplate.put(url, updatedCampaign);
        ResponseEntity<Object> response = restTemplate.getForEntity(url, Object.class);
        return ResponseEntity.status(HttpStatus.OK).body(response.getBody());
    }
}
