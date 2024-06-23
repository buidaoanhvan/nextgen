const express = require("express");
const app = express();
const port = 3000;
const path = require("path");
const rootRouter = require("./routers/index");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

// Routes
app.use(rootRouter);

// Middleware xử lý lỗi tổng quát
app.use((err, req, res, next) => {
  res.status(err.status || 500);
  res.json({
    error: {
      message: err.message,
    },
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
