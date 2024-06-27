const auth = require("../utils/auth");

// Middleware to authenticate JWT
exports.authJWT = async (req, res, next) => {
  try {
    const token = req.cookies.acNextGen;
    if (!token) {
      throw new Error("Phiên đăng nhập không hợp lệ!");
    }
    const user = await auth.verifyToken(token);
    req.user = user;
    next();
  } catch (error) {
    res.clearCookie("acNextGen");
    console.error(error);
    res.status(200).redirect("/admin/login");
  }
};
