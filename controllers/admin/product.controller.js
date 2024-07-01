exports.productIndex = async (req, res) => {
  res.render("admin/product", { url: "product" });
};

exports.productNew = async (req, res) => {
    res.render("admin/productNew", { url: "product" });
  };
  