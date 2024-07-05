const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.sizeCreate = async (data) => {
  const size = prisma.sizes.create({
    data: {
      name: data.name,
      additional_price: +data.price,
    },
  });
  return size;
};

exports.addSizeProduct = async (data) => {
  const size_product = await prisma.product_sizes.create({
    data: {
      product_id: +data.product_id,
      size_id: +data.size_id,
    },
  });
  return size_product;
};
