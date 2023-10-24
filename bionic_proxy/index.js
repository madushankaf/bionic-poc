const express = require("express");
const axios = require('axios');

const Campaign = Object.freeze({
    id: "",
    createdAt: "",
    Company: "",
    CampaginName: "",
    Advertiser: "",
  });

const BASE_URL = process.env.BASE_URL || 'http://13.59.213.5:8080/bionic';

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/campaigns", (req, res) => {
    
    const id = req.query.id;
    const url = id ? `${BASE_URL}/campaigns?id=${id}` : `${BASE_URL}/campaigns`;
    axios.get(url)
      .then(response => {
        res.json(response.data);
      })
      .catch(error => {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
      });
});

app.post("/campaigns", (req, res) => {
  const newCampaign = req.body;
  axios.post(`${BASE_URL}/campaigns`, newCampaign)
    .then(response => {
      res.status(201).json(response.data);
    })
    .catch(error => {
      console.error(error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
});

app.put("/campaigns", (req, res) => {
    const updatedCampaign = req.body;
    const id = updatedCampaign.id;
    axios.put(`${BASE_URL}/campaigns/${id}`, updatedCampaign)
      .then(response => {
        res.status(200).json(response.data);
      })
      .catch(error => {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
      });
  });



app.listen(9090, () => {
  console.log("Server started on port 9090");
});