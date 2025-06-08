<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>RaflyStore - Top Up Game Terlengkap</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    function showConfirmation() {
      const confirmation = document.getElementById('confirmation');
      confirmation.classList.remove('hidden');
      confirmation.scrollIntoView({ behavior: 'smooth' });

      // Redirect ke halaman sukses setelah 3 detik
      setTimeout(() => {
        window.location.href = "#success";
      }, 3000);
    }
  </script>
</head>
<body class="bg-gray-100 text-gray-800">
  <!-- Header -->
  <header class="bg-indigo-600 text-white p-4 shadow-md">
    <div class="max-w-7xl mx-auto flex justify-between items-center">
      <h1 class="text-2xl font-bold">RaflyStore</h1>
      <nav>
        <a href="#games" class="mx-3 hover:underline">Game</a>
        <a href="#form" class="mx-3 hover:underline">Top Up</a>
        <a href="#payment" class="mx-3 hover:underline">Pembayaran</a>
        <a href="#contact" class="mx-3 hover:underline">Kontak</a>
      </nav>
    </div>
  </header>

  <!-- Hero Section -->
  <section class="text-center py-10 bg-white shadow">
    <h2 class="text-3xl font-bold mb-4">Top Up Game Favorit Kamu Dengan Mudah</h2>
    <p class="text-lg">Proses cepat, pembayaran lengkap, harga murah!</p>
  </section>

  <!-- Game List -->
  <section id="games" class="max-w-7xl mx-auto py-10 px-4">
    <h3 class="text-2xl font-semibold mb-6">Pilih Game</h3>
    <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-4">
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/freefire.png" alt="Free Fire" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">Free Fire</h4>
      </div>
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/mlbb.png" alt="Mobile Legends" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">Mobile Legends</h4>
      </div>
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/pubg.png" alt="PUBG Mobile" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">PUBG Mobile</h4>
      </div>
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/codm.png" alt="COD Mobile" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">COD Mobile</h4>
      </div>
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/valorant.png" alt="Valorant" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">Valorant</h4>
      </div>
      <div class="bg-white p-3 rounded-xl shadow hover:shadow-lg cursor-pointer">
        <img src="https://cdn.example.com/genshin.png" alt="Genshin Impact" class="w-full h-24 object-cover rounded">
        <h4 class="text-center mt-2 font-medium">Genshin Impact</h4>
      </div>
    </div>
  </section>

  <!-- Form Top Up -->
  <section id="form" class="max-w-2xl mx-auto py-10 px-4 bg-white rounded-xl shadow mt-10">
    <h3 class="text-2xl font-semibold mb-6 text-center">Form Top Up</h3>
    <form class="space-y-4" action="https://script.google.com/macros/s/AKfycbyYOUR_GOOGLE_APPS_SCRIPT_URL/exec" method="POST" onsubmit="showConfirmation(); return true;">
      <div>
        <label class="block mb-1 font-medium">Pilih Game</label>
        <select name="game" class="w-full border border-gray-300 rounded px-3 py-2">
          <option value="Free Fire">Free Fire</option>
          <option value="Mobile Legends">Mobile Legends</option>
          <option value="PUBG Mobile">PUBG Mobile</option>
          <option value="COD Mobile">COD Mobile</option>
          <option value="Valorant">Valorant</option>
          <option value="Genshin Impact">Genshin Impact</option>
        </select>
      </div>
      <div>
        <label class="block mb-1 font-medium">User ID / UID</label>
        <input name="uid" type="text" class="w-full border border-gray-300 rounded px-3 py-2" placeholder="Masukkan ID Anda">
      </div>
      <div>
        <label class="block mb-1 font-medium">Jumlah Top Up</label>
        <select name="jumlah" class="w-full border border-gray-300 rounded px-3 py-2">
          <option value="10">10 Diamond</option>
          <option value="50">50 Diamond</option>
          <option value="100">100 Diamond</option>
          <option value="200">200 Diamond</option>
        </select>
      </div>
      <div>
        <label class="block mb-1 font-medium">Metode Pembayaran</label>
        <select name="pembayaran" class="w-full border border-gray-300 rounded px-3 py-2">
          <option value="QRIS">QRIS</option>
          <option value="E-Wallet">E-Wallet (Dana, OVO, Gopay)</option>
        </select>
      </div>
      <div class="text-center">
        <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=https://linktr.ee/topupzone" alt="QRIS Code" class="mx-auto mb-4">
        <p class="text-sm text-gray-500">Scan kode QR untuk pembayaran melalui QRIS.</p>
      </div>
      <div>
        <button type="submit" class="bg-indigo-600 text-white px-6 py-2 rounded hover:bg-indigo-700">Kirim</button>
      </div>
    </form>
  </section>

  <!-- Konfirmasi -->
  <section id="confirmation" class="max-w-xl mx-auto py-10 px-4 bg-green-100 text-green-900 rounded-xl shadow mt-10 hidden">
    <h3 class="text-xl font-bold mb-2">Berhasil Dikirim!</h3>
    <p>Data top up kamu telah dikirim. Silakan selesaikan pembayaran dan tunggu proses maksimal 5 menit.</p>
  </section>

  <!-- Halaman Redirect / Sukses -->
  <section id="success" class="max-w-xl mx-auto py-10 px-4 bg-white rounded-xl shadow mt-10 hidden">
    <h3 class="text-2xl font-bold mb-4 text-green-600">Top Up Berhasil!</h3>
    <p>Terima kasih telah melakukan pemesanan. Tim kami sedang memproses top up kamu.</p>
    <p class="mt-2">Jika ada kendala, silakan hubungi kami melalui kontak di bawah ini.</p>
  </section>

  <!-- Payment Section -->
  <section id="payment" class="max-w-3xl mx-auto py-10 px-4 bg-white rounded-xl shadow mt-10">
    <h3 class="text-2xl font-semibold mb-6 text-center">Metode Pembayaran</h3>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
      <div class="text-center">
        <img src="https://upload.wikimedia.org/wikipedia/commons/1/17/QRIS_logo.svg" alt="QRIS" class="w-32 mx-auto mb-2">
        <h4 class="font-bold">QRIS</h4>
        <p>Bisa dibayar pakai semua e-wallet (Gopay, OVO, Dana, dll).</p>
      </div>
      <div class="text-center">
        <img src="https://cdn-icons-png.flaticon.com/512/5977/5977578.png" alt="E-wallet" class="w-24 mx-auto mb-2">
        <h4 class="font-bold">E-Wallet</h4>
        <p>Terima Dana, OVO, Gopay, ShopeePay.</p>
      </div>
    </div>
  </section>

  <!-- Contact Section -->
  <section id="contact" class="bg-white py-10 px-4 mt-10">
    <div class="max-w-md mx-auto text-center">
      <h3 class="text-2xl font-semibold mb-4">Kontak Kami</h3>
      <p>Email: ardiansyahsuseno20@gmail.com</p>
      <p>WA: +62 856-9314-7242</p>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-indigo-600 text-white text-center p-4">
    <p>&copy; 2025 RaflyStore. Semua hak dilindungi.</p>
  </footer>
</body>
</html>
