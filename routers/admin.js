const express = require("express");
const admin_router = express.Router();

const authController = require("../controllers/admin/auth.controller");
const postController = require("../controllers/admin/post.controller");
const productController = require("../controllers/admin/product.controller");
const topingController = require("../controllers/admin/toping.controller");
const sizeController = require("../controllers/admin/size.controller");
const pageController = require("../controllers/admin/page.controller");
const { authJWT } = require("../middlewares/auth");

admin_router.get("/", authJWT, (req, res) => {
  res.render("admin/home");
});

//auth
admin_router.get("/login", authController.loginAdminPage);
admin_router.post("/login", authController.loginAdminSevice);
admin_router.get("/logout", authController.logoutAdminSevice);

//page
admin_router.get("/page/:slug", authJWT, pageController.getPage);
admin_router.post("/page/update/text", authJWT, pageController.updatePage);

//post
admin_router.get("/post", authJWT, postController.postIndex);
admin_router.get("/post/new", authJWT, postController.postNew);
admin_router.post("/post/new", authJWT, postController.createPost);
admin_router.get("/post/edit/:id", authJWT, postController.editPost);
admin_router.post("/post/update/:id", authJWT, postController.updatePost);

//product
admin_router.get("/product", authJWT, productController.productIndex);
admin_router.get("/product/new", authJWT, productController.productNew);
admin_router.post("/product/new", authJWT, productController.productCreate);
admin_router.get("/product/edit/:id", authJWT, productController.productEdit);

//product_tag
admin_router.post("/product/tagAdd", authJWT, productController.productAddTag);
admin_router.post("/product/tagDel", authJWT, productController.productDelTag);

//toping
admin_router.post("/toping/:id", authJWT, topingController.topingCreate);

//size
admin_router.post("/size/:id", authJWT, sizeController.sizeCreate);

//category
admin_router.get("/category", authJWT, productController.categoryIndex);
admin_router.post("/category", authJWT, productController.categoryCreate);
admin_router.post("/category/edit", authJWT, productController.categoryEdit);

module.exports = admin_router;
