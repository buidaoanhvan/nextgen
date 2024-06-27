const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.allPost = async () => {
  const posts = await prisma.posts.findMany({
    include: {
      users: true,
    },
  });
  return posts;
};

exports.findPostById = async (id) => {
  const post = await prisma.posts.findFirst({
    where: {
      id: id,
    },
    include: {
      users: true,
    },
  });
  return post;
};

exports.createPost = async (data, user) => {
  const keyword = JSON.parse(data.post_keyword)
    .map((item) => item.value)
    .join(",");
  const post = await prisma.posts.create({
    data: {
      title: data.post_title,
      slug: data.post_link,
      author_id: user.i,
      img: data.post_img,
      content: data.post_content,
      status: "public",
      meta: keyword,
    },
  });
  return post;
};

exports.updatePost = async (data, user, id) => {
  const keyword = JSON.parse(data.post_keyword)
    .map((item) => item.value)
    .join(",");
    console.log(keyword);
  const post = await prisma.posts.update({
    where: {
      id,
    },
    data: {
      title: data.post_title,
      slug: data.post_link,
      author_id: user.i,
      img: data.post_img,
      content: data.post_content,
      status: "public",
      meta: keyword,
    },
  });
  return post;
};
