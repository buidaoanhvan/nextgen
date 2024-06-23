const express = require("express");
const admin_router = express.Router();

admin_router.get("/", (req, res) => {
  res.send("Welcome to the admin");
});

module.exports = admin_router;
