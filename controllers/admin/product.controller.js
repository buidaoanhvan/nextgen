const productSevice = require("../../services/product.service");

exports.productIndex = async (req, res) => {
  const products = await productSevice.productAll();
  res.render("admin/product", { url: "product", products });
};

exports.productNew = async (req, res) => {
  const categories = await productSevice.categoryAll();
  res.render("admin/productNew", { url: "product", categories });
};

exports.productEdit = async (req, res) => {
  try {
    const product = await productSevice.productFindId(+req.params.id);
    const tags = product.product_tags.map((pt) => pt.tags.name);
    product.product_tags = tags.toString();
    const topings = product.product_toppings.map((pt) => ({
      id: pt.toppings.id,
      name: pt.toppings.name,
      additional_price: pt.toppings.additional_price,
    }));
    product.product_toppings = topings;
    const sizes = product.product_sizes.map((pt) => ({
      id: pt.sizes.id,
      name: pt.sizes.name,
      additional_price: pt.sizes.additional_price,
    }));
    product.product_sizes = sizes;
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

exports.categoryIndex = async (req, res) => {
  const categories = await productSevice.categoryAll();
  res.render("admin/category", { url: "category", categories });
};

exports.categoryCreate = async (req, res) => {
  try {
    await productSevice.categoryCreate(req.body);
    res.status(200).redirect("/admin/category");
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/category");
  }
};

exports.categoryEdit = async (req, res) => {
  try {
    await productSevice.categoryEdit(req.body);
    res.status(200).redirect("/admin/category");
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/category");
  }
};
