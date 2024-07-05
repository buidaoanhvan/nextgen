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
      properties: `
      <table id="doc-pro-heard" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 25.0000%;">
				<div id="isPasted" style="text-align: center;"><strong><span style="font-size: 18px;">120</span></strong></div>
				<div style="text-align: center;">Calorise</div>
			</td>
			<td style="width: 25.0000%;">
				<div id="isPasted" style="text-align: center;"><strong><span style="font-size: 18px;">0</span></strong></div>
				<div style="text-align: center;">Fat</div>
			</td>
			<td style="width: 25.0000%;">
				<div style="text-align: center;"><strong><span style="font-size: 18px;">36g</span></strong></div>
				<div style="text-align: center;"><span style="white-space:pre-wrap;">Carbs</span></div>
			</td>
			<td style="width: 25.0000%;">
				<div id="isPasted" style="text-align: center;"><strong><span style="font-size: 18px;">&lt;1g</span></strong></div>
				<div style="text-align: center;"><span style="white-space:pre-wrap;">Protein</span></div>
			</td>
		</tr>
	</tbody>
</table>
<table id="doc-pro-body" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 25%; text-align: center;"><span style="white-space:pre-wrap;">Saturated fat</span></td>
			<td style="width: 25%; text-align: center;">0g</td>
			<td style="width: 25.0000%;">
				<div data-empty="true" style="text-align: center;">0g</div>
			</td>
			<td style="width: 25%; text-align: center;">0g</td>
		</tr>
		<tr>
			<td style="width: 25%; text-align: center;"><span style="white-space:pre-wrap;">Cholesterol</span></td>
			<td style="width: 25%; text-align: center;"><span style="white-space:pre-wrap;">0mg&nbsp;</span></td>
			<td style="width: 25.0000%;">
				<div data-empty="true" style="text-align: center;">10g</div>
			</td>
			<td style="width: 25%; text-align: center;">10g</td>
		</tr>
		<tr>
			<td style="width: 25%; text-align: center;"><span style="white-space:pre-wrap;">Almost</span></td>
			<td style="width: 25%; text-align: center;">1g</td>
			<td style="width: 25%; text-align: center;">0g</td>
			<td style="width: 25%; text-align: center;">100g</td>
		</tr>
	</tbody>
</table>
      `,
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
