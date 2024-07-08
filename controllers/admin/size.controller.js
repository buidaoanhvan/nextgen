const sizeService = require("../../services/size.service");

exports.sizeCreate = async (req, res) => {
  try {
    const size = await sizeService.sizeCreate(req.body);
    const product_sizes = await sizeService.addSizeProduct({
      product_id: req.params.id,
      size_id: size.id,
    });
    res.status(200).redirect("/admin/product/edit/" + req.params.id);
  } catch (error) {
    console.log(error);
    res.status(200).redirect("/admin/product/edit/" + req.params.id);
  }
};
