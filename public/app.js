console.log("chay");
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
