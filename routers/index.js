const express = require("express");
const rootRouter = express.Router();

/* web */
rootRouter.use("/", require("./web"));
/* admin */
rootRouter.use("/admin", require("./admin"));

module.exports = rootRouter;
