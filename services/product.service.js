const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.productFindId = async (id) => {
  const product = await prisma.products.findFirst({
    where: {
      id: id,
    },
    include: {
      product_tags: {
        include: {
          tags: true,
        },
      },
    },
  });
  return product;
};

exports.productAll = async () => {
  const products = await prisma.products.findMany();
  return products;
};

exports.createProduct = async (data) => {
  const isProduct = await prisma.products.findFirst({
    where: {
      slug: data.product_link,
    },
  });
  if (isProduct) {
    throw new Error("Slug đã tồn tại!");
  }
  const product = await prisma.products.create({
    data: {
      name: data.product_title,
      slug: data.product_link,
      price: +data.product_price,
      image_url: data.product_img,
      description: data.product_des,
    },
  });
  return product;
};

exports.productAddTag = async (id, tag) => {
  const isTag = await prisma.tags.findFirst({
    where: {
      name: tag,
    },
  });
  if (isTag) {
    await prisma.product_tags.create({
      data: {
        tag_id: isTag.id,
        product_id: +id,
      },
    });
    return true;
  }
  const newTag = await prisma.tags.create({
    data: {
      name: tag,
    },
  });
  await prisma.product_tags.create({
    data: {
      product_id: +id,
      tag_id: newTag.id,
    },
  });
  return true;
};

exports.productDelTag = async (id, tag) => {
  const isTag = await prisma.tags.findFirst({
    where: {
      name: tag,
    },
  });
  if (!isTag) {
    throw new Error("Tag not found");
  }
  await prisma.product_tags.delete({
    where: {
      product_id_tag_id: {
        tag_id: isTag.id,
        product_id: +id,
      },
    },
  });
  return true;
};
