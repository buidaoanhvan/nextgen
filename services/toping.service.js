const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.createToping = async (data) => {
  const toping = await prisma.toppings.create({
    data: {
      name: data.name,
      additional_price: +data.price,
    },
  });
  return toping;
};

exports.addTopingProduct = async (data) => {
  const toping_product = await prisma.product_toppings.create({
    data: {
      product_id: +data.product_id,
      topping_id: +data.topping_id,
    },
  });
  return toping_product;
};
