const { PrismaClient } = require("@prisma/client");
const { getSettings } = require("../utils/getSetting");
const prisma = new PrismaClient();

exports.homePage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 1,
    },
    include: {
      contents: true,
    },
  });

  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  res.render("web/home", { setting, contents });
};

exports.aboutPage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 2,
    },
    include: {
      contents: true,
    },
  });
  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  res.render("web/about", { setting, contents });
};

exports.policyPage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 3,
    },
    include: {
      contents: true,
    },
  });
  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  res.render("web/policy", { setting, contents });
};

exports.contactPage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 4,
    },
    include: {
      contents: true,
    },
  });
  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  res.render("web/contact", { setting, contents });
};

exports.postPage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 3,
    },
    include: {
      contents: true,
    },
  });
  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  const posts = await prisma.posts.findMany();
  res.render("web/blog", { setting, contents, posts });
};

exports.postPageDetail = async (req, res) => {
  const setting = await getSettings();
  const post = await prisma.posts.findFirst({
    where: {
      slug: req.params.slug,
    },
    include: {
      users: true,
    },
  });
  res.render("web/postDetail", { setting, post });
};

exports.productPageDetail = async (req, res) => {
  const setting = await getSettings();
  const product = await prisma.products.findFirst({
    where: {
      slug: req.params.slug,
    },
    include: {
      product_toppings: {
        include: {
          toppings: true,
        },
      },
      product_sizes: {
        include: {
          sizes: true,
        },
      },
    },
  });
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
  console.log(product);
  res.render("web/productDetail", { setting, product });
};

exports.productPage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    where: {
      id: 3,
    },
    include: {
      contents: true,
    },
  });
  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});

  const products = await prisma.products.findMany();
  console.log(products);
  const categories = await prisma.categories.findMany();
  res.render("web/product", { setting, contents, products, categories });
};

exports.cartPage = async (req, res) => {
  const setting = await getSettings();
  res.render("web/cart", { setting });
};
