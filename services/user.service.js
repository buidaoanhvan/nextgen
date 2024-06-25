const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
const passwordHash = require("password-hash");

exports.isUser = async (email) => {
  const user = prisma.users.findFirst({
    where: {
      email,
    },
  });
  return user;
};

exports.createUser = async (
  full_name,
  username,
  email,
  phone,
  address,
  password,
  status,
  roles
) => {
  const hashedPassword = await passwordHash.generate(password);
  const user = await prisma.users.create({
    data: {
      full_name,
      username,
      email,
      phone,
      address,
      password: hashedPassword,
      status,
      roles: JSON.stringify(roles),
    },
  });
  return user;
};
