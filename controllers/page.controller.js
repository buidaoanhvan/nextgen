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
  console.log(contents);
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

  console.log(contents);
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

  console.log(contents);
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

  console.log(contents);
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
  console.log(posts);
  res.render("web/blog", { setting, contents, posts});
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
  console.log(post);
  res.render("web/postDetail", { setting, post });
};
