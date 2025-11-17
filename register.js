const form = document.getElementById('registerForm');
const password = document.getElementById('password');
const confirmPassword = document.getElementById('confirmPassword');
const errorMsg = document.getElementById('errorMsg');

form.addEventListener('submit', function(e) {
  e.preventDefault();

  if (password.value !== confirmPassword.value) {
    errorMsg.style.display = 'block';
  } else {
    errorMsg.style.display = 'none';
    alert('Registrasi Berhasil! 🎉');
    form.reset();
  }
});
