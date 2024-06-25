exports.postIndex = async (req, res) => {
  res.render("admin/post", { url: "post" });
};

exports.postNew = async (req, res) => {
  res.render("admin/postNew", { url: "post" });
};
