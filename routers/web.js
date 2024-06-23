const express = require("express");
const web_router = express.Router();

const pageController = require("../controllers/page.controller");

web_router.get("/", pageController.homePage);

module.exports = web_router;
