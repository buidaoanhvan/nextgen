const express = require("express");
const web_router = express.Router();

const pageController = require("../controllers/page.controller");

web_router.get("/", pageController.homePage);
web_router.get("/gioi-thieu", pageController.aboutPage);

module.exports = web_router;
