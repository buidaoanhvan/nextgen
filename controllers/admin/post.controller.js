const postService = require("../../services/post.service");
const dayjs = require("dayjs");

exports.postIndex = async (req, res) => {
  const posts = await postService.allPost();
  const formattedPosts = posts.map((post) => ({
    ...post,
    formattedDate: dayjs(post.created_at).format("YYYY-MM-DD HH:mm:ss"),
  }));
  res.render("admin/post", { url: "post", posts: formattedPosts });
};

exports.postNew = async (req, res) => {
  res.render("admin/postNew", { url: "post" });
};

exports.createPost = async (req, res) => {
  try {
    const post = await postService.createPost(req.body, req.user);
    res.status(200).redirect("/admin/post/new");
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/post");
  }
};

exports.editPost = async (req, res) => {
  try {
    const post = await postService.findPostById(+req.params.id);
    if (!post) {
      throw new Error("Khôn tồn tại bài viết!");
    }
    res.render("admin/postEdit", { url: "post", post });
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/post");
  }
};

exports.updatePost = async (req, res) => {
  try {
    console.log(req.body);
    const post = await postService.updatePost(
      req.body,
      req.user,
      +req.params.id
    );
    res.status(200).redirect("/admin/post/edit/" + req.params.id);
  } catch (error) {
    console.error(error);
    res.status(200).redirect("/admin/post/new");
  }
};
