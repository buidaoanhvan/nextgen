const express = require("express");
const admin_router = express.Router();

const authController = require("../controllers/admin/auth.controller");
const postController = require("../controllers/admin/post.controller");
const { authJWT } = require("../middlewares/auth");

admin_router.get("/", authJWT, (req, res) => {
  res.render("admin/home");
});

//auth
admin_router.get("/login", authController.loginAdminPage);
admin_router.post("/login", authController.loginAdminSevice);
admin_router.get("/logout", authController.logoutAdminSevice);

//post
admin_router.get("/post", authJWT, postController.postIndex);
admin_router.get("/post/new", authJWT, postController.postNew);

module.exports = admin_router;
