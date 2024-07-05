const pageSevice = require("../../services/page.service");

exports.getPage = async (req, res) => {
  const page = await pageSevice.getPage({ slug: req.params.slug });
  console.log(page);
  res.render("admin/page", { page });
};

exports.updatePage = async (req, res) => {
  const value = await pageSevice.updatePageCode({
    id: req.body.id,
    value: req.body.value,
  });
  res.json(value);
};
