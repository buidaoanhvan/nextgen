const productSevice = require("../../services/product.service");

exports.productIndex = async (req, res) => {
  const products = await productSevice.productAll();
  console.log(products);
  res.render("admin/product", { url: "product", products });
};

exports.productNew = async (req, res) => {
  res.render("admin/productNew", { url: "product" });
};

exports.productEdit = async (req, res) => {
  try {
    const product = await productSevice.productFindId(+req.params.id);
    const tagNames = product.product_tags.map((pt) => pt.tags.name);
    product.product_tags = tagNames.toString();
    res.render("admin/productEdit", { url: "product", product });
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/product");
  }
};

exports.productCreate = async (req, res) => {
  try {
    await productSevice.createProduct(req.body);
    res.status(200).redirect("/admin/product");
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/product");
  }
};

exports.productAddTag = async (req, res) => {
  try {
    const tag = await productSevice.productAddTag(
      req.body.productId,
      req.body.tagName
    );
    res.json(tag);
  } catch (error) {
    console.log(error);
    res.json(false);
  }
};

exports.productDelTag = async (req, res) => {
  try {
    const tagDel = await productSevice.productDelTag(
      req.body.productId,
      req.body.tagName
    );
    res.json(tagDel);
  } catch (error) {
    console.log(error);
  }
};
