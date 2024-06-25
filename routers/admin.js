const express = require("express");
const admin_router = express.Router();

const authController = require("../controllers/admin/auth.controller");
const { authJWT } = require("../middlewares/auth");

admin_router.get("/", authJWT, (req, res) => {
  res.render("admin/home");
});

admin_router.get("/login", authController.loginAdminPage);
admin_router.post("/login", authController.loginAdminSevice);
admin_router.get("/logout", authController.logoutAdminSevice);

module.exports = admin_router;
