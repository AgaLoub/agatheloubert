function hideFlashAfter5sec() {
  const alert = document.querySelector(".alert-dismissible");
  if (alert) {
    setTimeout(() => {alert.style.display = "none"}, 8000);
  }
};

export { hideFlashAfter5sec };
