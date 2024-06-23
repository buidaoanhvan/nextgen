const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.getSettings = async () => {
  const settings = await prisma.settings.findMany();
  return settings.reduce((acc, setting) => {
    acc[setting.key] = setting.value;
    return acc;
  }, {});
};
