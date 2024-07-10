const { PrismaClient } = require("@prisma/client");
const { data } = require("autoprefixer");
const prisma = new PrismaClient();

exports.getPage = async (data) => {
  const page = await prisma.pages.findFirst({
    where: {
      slug: data.slug,
    },
    include: {
      contents: true,
    },
  });
  return page;
};

exports.updatePageCode = async (data) => {
  const value = await prisma.contents.update({
    where: {
      id: +data.id,
    },
    data: {
      content: data.value,
    },
  });
  return value;
};
