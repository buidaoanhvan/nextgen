const jwt = require("jsonwebtoken");

exports.signToken = async (payload) => {
  const token = await jwt.sign(payload, "buidaoanhvan", { expiresIn: "1h" });
  return token;
};

exports.verifyToken = async (token) => {
  const user = await jwt.verify(token, "buidaoanhvan");
  return user;
};
