const userSevices = require("../../services/user.service");
const passwordHash = require("password-hash");
const auth = require("../../utils/auth");

exports.loginAdminPage = async (req, res) => {
  const token = req.cookies.acNextGen;
  if (token) {
    res.status(200).redirect("/admin");
  }
  res.render("admin/login", { url: "login" });
};

exports.loginAdminSevice = async (req, res) => {
  try {
    const user = await userSevices.isUser(req.body.email);
    if (!user) {
      throw new Error("Email khoản không hợp lệ!");
    }
    const checkPassword = await passwordHash.verify(
      req.body.password,
      user.password
    );
    if (!checkPassword) {
      throw new Error("Mật khẩu không hợp lệ!");
    }
    const token = await auth.signToken({
      i: user.id,
      e: user.email,
      p: user.phone,
      r: user.roles,
    });
    res.cookie("acNextGen", token, { httpOnly: true });
    res.status(200).redirect("/admin");
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/login");
  }
};

exports.logoutAdminSevice = async (req, res) => {
  res.clearCookie("acNextGen");
  res.status(200).redirect("/admin/login");
};

// const user = await userSevices.createUser(
//   "buidaoanhvan",
//   "buidaoanhvan",
//   req.body.email,
//   "0987654321",
//   "37 Đường 13 Quận 12 TP.HCM",
//   req.body.password,
//   1,
//   ["admin"]
// );
