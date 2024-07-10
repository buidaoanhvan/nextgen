console.log("JS Runing");

document.getElementById("menu-btn").addEventListener("click", function () {
  var menu = document.getElementById("menu-let");
  menu.classList.toggle("hidden");
});

let cart = [];

// Hàm lưu giỏ hàng vào localStorage
function saveCart() {
  localStorage.setItem("cart", JSON.stringify(cart));
  combineCartItems();
}

// Hàm tải giỏ hàng từ localStorage
function loadCart() {
  const cartData = localStorage.getItem("cart");
  if (cartData) {
    cart = JSON.parse(cartData);
  }
  updateCountCart();
}
loadCart();

function updateCountCart() {
  const countCart = document.getElementById("countCart");
  countCart.innerText = cart.length;
}

// Hàm thêm sản phẩm vào giỏ hàng
function addToCart(product) {
  cart.push(product);
  saveCart(); // Lưu giỏ hàng sau khi thêm sản phẩm
}

document.querySelectorAll(".accordion-header").forEach((button) => {
  button.addEventListener("click", () => {
    const accordionItem = button.parentElement;

    if (accordionItem.classList.contains("active")) {
      accordionItem.classList.remove("active");
    } else {
      document.querySelectorAll(".accordion-item.active").forEach((item) => {
        item.classList.remove("active");
      });
      accordionItem.classList.add("active");
    }
  });
});

function generateSlug(text) {
  const map = {
    à: "a",
    á: "a",
    ạ: "a",
    ả: "a",
    ã: "a",
    â: "a",
    ầ: "a",
    ấ: "a",
    ậ: "a",
    ẩ: "a",
    ẫ: "a",
    ă: "a",
    ằ: "a",
    ắ: "a",
    ặ: "a",
    ẳ: "a",
    ẵ: "a",
    è: "e",
    é: "e",
    ẹ: "e",
    ẻ: "e",
    ẽ: "e",
    ê: "e",
    ề: "e",
    ế: "e",
    ệ: "e",
    ể: "e",
    ễ: "e",
    ì: "i",
    í: "i",
    ị: "i",
    ỉ: "i",
    ĩ: "i",
    ò: "o",
    ó: "o",
    ọ: "o",
    ỏ: "o",
    õ: "o",
    ô: "o",
    ồ: "o",
    ố: "o",
    ộ: "o",
    ổ: "o",
    ỗ: "o",
    ơ: "o",
    ờ: "o",
    ớ: "o",
    ợ: "o",
    ở: "o",
    ỡ: "o",
    ù: "u",
    ú: "u",
    ụ: "u",
    ủ: "u",
    ũ: "u",
    ư: "u",
    ừ: "u",
    ứ: "u",
    ự: "u",
    ử: "u",
    ữ: "u",
    ỳ: "y",
    ý: "y",
    ỵ: "y",
    ỷ: "y",
    ỹ: "y",
    đ: "d",
    À: "A",
    Á: "A",
    Ạ: "A",
    Ả: "A",
    Ã: "A",
    Â: "A",
    Ầ: "A",
    Ấ: "A",
    Ậ: "A",
    Ẩ: "A",
    Ẫ: "A",
    Ă: "A",
    Ằ: "A",
    Ắ: "A",
    Ặ: "A",
    Ẳ: "A",
    Ẵ: "A",
    È: "E",
    É: "E",
    Ẹ: "E",
    Ẻ: "E",
    Ẽ: "E",
    Ê: "E",
    Ề: "E",
    Ế: "E",
    Ệ: "E",
    Ể: "E",
    Ễ: "E",
    Ì: "I",
    Í: "I",
    Ị: "I",
    Ỉ: "I",
    Ĩ: "I",
    Ò: "O",
    Ó: "O",
    Ọ: "O",
    Ỏ: "O",
    Õ: "O",
    Ô: "O",
    Ồ: "O",
    Ố: "O",
    Ộ: "O",
    Ổ: "O",
    Ỗ: "O",
    Ơ: "O",
    Ờ: "O",
    Ớ: "O",
    Ợ: "O",
    Ở: "O",
    Ỡ: "O",
    Ù: "U",
    Ú: "U",
    Ụ: "U",
    Ủ: "U",
    Ũ: "U",
    Ư: "U",
    Ừ: "U",
    Ứ: "U",
    Ự: "U",
    Ử: "U",
    Ữ: "U",
    Ỳ: "Y",
    Ý: "Y",
    Ỵ: "Y",
    Ỷ: "Y",
    Ỹ: "Y",
    Đ: "D",
  };
  return text
    .split("")
    .map((char) => map[char] || char)
    .join("")
    .toString() // Convert to string
    .toLowerCase() // Convert to lowercase
    .trim() // Trim whitespace
    .replace(/[^a-z0-9\s-]/g, "") // Remove invalid chars
    .replace(/\s+/g, "-") // Replace spaces with -
    .replace(/-+/g, "-"); // Replace multiple - with single -
}

document.addEventListener("DOMContentLoaded", function () {
  const moneyElements = document.querySelectorAll(".money");
  moneyElements.forEach((element) => {
    const value = parseInt(element.getAttribute("data-value")).toLocaleString(
      "en-US"
    );
    element.textContent = value;
  });
});

function combineCartItems() {
  const cart = JSON.parse(localStorage.getItem("cart"));
  let combinedCart = [];
  // Create a temporary object to group items
  let temp = {};
  cart.forEach((item) => {
    // Create a unique key for each combination of id, selectedSize, and selectedTopping
    let key = `${item.id}-${item.selectedSize.id}-${JSON.stringify(
      item.selectedTopping
    )}`;
    // If the key already exists, increment the quantity
    if (temp[key]) {
      temp[key].quantity += item.quantity;
    } else {
      // Otherwise, add the item to the temporary object
      temp[key] = { ...item };
    }
  });
  // Convert the temporary object back to an array
  for (let key in temp) {
    combinedCart.push(temp[key]);
  }
  localStorage.setItem("cart", JSON.stringify(combinedCart));
  loadCart();
}
