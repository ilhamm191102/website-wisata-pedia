🖥️ Panduan Pemasangan XAMPP dan Memasukkan Database 📂

1️⃣ Instalasi XAMPP

🔽 Langkah 1: Unduh XAMPP

1️⃣ Buka situs resmi XAMPP: 🔗 Apache Friends
2️⃣ Pilih versi XAMPP yang sesuai dengan sistem operasi Anda (Windows, macOS, atau Linux)
3️⃣ ⬇️ Unduh file instalasi XAMPP

🛠️ Langkah 2: Instal XAMPP

1️⃣ Jalankan file instalasi yang telah diunduh 📥
2️⃣ Pilih komponen yang akan diinstal (pastikan ✅ Apache, ✅ MySQL, dan ✅ phpMyAdmin dipilih)
3️⃣ Tentukan lokasi instalasi (secara default: C:\xampp di Windows)
4️⃣ Klik "Next" 🔜 hingga proses instalasi selesai
5️⃣ Jalankan XAMPP Control Panel dan pastikan Apache serta MySQL dalam keadaan ✅ Running

2️⃣ Memasukkan Database ke dalam XAMPP

🌐 Langkah 1: Buka phpMyAdmin

1️⃣ Buka XAMPP Control Panel ⚙️
2️⃣ Pastikan ✅ Apache dan ✅ MySQL telah berjalan
3️⃣ Klik tombol Admin pada MySQL atau buka browser 🌍 dan akses http://localhost/phpmyadmin

🏗️ Langkah 2: Membuat Database Baru

1️⃣ Di phpMyAdmin, klik tab Databases 📂
2️⃣ Masukkan nama database pada kolom "Create database" 📝
3️⃣ Pilih "utf8_general_ci" sebagai collation 🌍
4️⃣ Klik tombol Create ➕

📥 Langkah 3: Mengimpor Database

1️⃣ Klik database yang telah dibuat 📑
2️⃣ Pilih tab Import 🔄
3️⃣ Klik tombol Choose File 📂 dan pilih file .sql yang ingin diimpor
4️⃣ Klik tombol Go ✅ untuk menjalankan impor database

3️⃣ Menjalankan Proyek PHP dengan XAMPP 🚀

1️⃣ Salin folder proyek 📂 ke dalam folder C:\xampp\htdocs (Windows) atau /opt/lampp/htdocs (Linux/macOS)
2️⃣ Buka browser 🌍 dan akses proyek dengan mengetikkan http://localhost/nama_proyek
3️⃣ Pastikan koneksi database telah dikonfigurasi dengan benar dalam file config.php atau .env 🔧

4️⃣ Troubleshooting ❌⚠️

❌ Jika Apache tidak bisa berjalan, coba ubah port 80 ke 8080 di file httpd.conf ⚙️

❌ Jika MySQL tidak berjalan, pastikan tidak ada aplikasi lain yang menggunakan port 3306 🔍

❌ Jika database gagal diimpor, periksa ukuran file 📏 dan format SQL yang digunakan
