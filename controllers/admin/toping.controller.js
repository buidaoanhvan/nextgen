const topingSevice = require("../../services/toping.service");

exports.topingCreate = async (req, res) => {
  try {
    const toping = await topingSevice.createToping(req.body);
    const product_toppings = await topingSevice.addTopingProduct({
      product_id: req.params.id,
      topping_id: toping.id,
    });
    res.status(200).redirect("/admin/product/edit/" + req.params.id);
  } catch (error) {
    res.status(200).redirect("/admin/product/edit/" + req.params.id);
    console.log(error);
  }
};

exports.topingDel = async (req, res) => {
  try {
  } catch (error) {
    console.log(error);
  }
};
