const { PrismaClient } = require("@prisma/client");
const { getSettings } = require("../utils/getSetting");
const prisma = new PrismaClient();

exports.homePage = async (req, res) => {
  const setting = await getSettings();
  const data = await prisma.pages.findFirst({
    include: {
      contents: true,
    },
  });

  const contents = data.contents.reduce((acc, content) => {
    acc[content.code] = content.content;
    return acc;
  }, {});
  console.log(contents);
  res.render("web/home", { setting, contents });
};
