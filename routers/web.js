const express = require("express");
const web_router = express.Router();

const pageController = require("../controllers/page.controller");

web_router.get("/", pageController.homePage);
web_router.get("/gioi-thieu", pageController.aboutPage);
web_router.get("/chinh-sach", pageController.policyPage);
web_router.get("/lien-he", pageController.contactPage);
web_router.get("/bai-viet", pageController.postPage);
web_router.get("/bai-viet/:slug", pageController.postPageDetail);
web_router.get("/san-pham", pageController.productPage);
web_router.get("/san-pham/:slug", pageController.productPageDetail);
web_router.get("/gio-hang", pageController.cartPage);

module.exports = web_router;
