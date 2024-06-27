const express = require("express");
const rootRouter = express.Router();

/* web */
rootRouter.use("/", require("./web"));
/* admin */
rootRouter.use("/admin", require("./admin"));
rootRouter.use("/upload", require("./upload"));

module.exports = rootRouter;
