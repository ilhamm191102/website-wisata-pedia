-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Waktu pembuatan: 11 Jul 2023 pada 18.14
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `alamat`, `no_telepon`, `email`, `password`, `role`) VALUES
(9, 'admin', '', 0, '', '123', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cafe`
--

CREATE TABLE `tbl_cafe` (
  `id` int(100) NOT NULL,
  `nama_cafe` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_cafe`
--

INSERT INTO `tbl_cafe` (`id`, `nama_cafe`, `tempat`, `deskripsi`, `gambar`) VALUES
(1, ' Dama Cafe', 'Bukit Sundi, Solok', 'Cafe yang satu ini terletak di Jl. Solok-Alahan Panjang, Kinari, Bukit Sundi, Solok, Sumatera Barat. Dama cafe ini buka dari jam 10 pagi sampai dengan jam 10 malam.Untuk tempatnya Anda tidak perlu khawatir karena cafe ini memiliki tempat yang cukup besar disertai pemandangan yang indah dan sangat cocok apabila mengajak banyak teman.', 'decoffe.jpg'),
(2, ' Sawah View Resto and Cafe', ' Payakumbuh Barat,Payakumbuh', 'Tempat ini memiliki daya tarik utama yakni menyajikan pesona alam yang indah.\r\n\r\nCafe ini didirikan pada area persawahan daerah Payolansek, Payakumbuh, Sumatera Barat.\r\n\r\nSelain itu, cafe ini juga menyediakan beberapa spot foto yang sangat instagramable.Untuk lokasi lengkapnya cafe ini berada di Jl. Anthurium, Payolansek, Kec. Payakumbuh Barat, Kota Payakumbuh, Sumatera barat.', 'sawahview.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id` int(100) NOT NULL,
  `nama_wisata` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi_info` mediumtext NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id`, `nama_wisata`, `tempat`, `deskripsi`, `gambar`, `deskripsi_info`, `jenis`) VALUES
(1, 'Lembah Anai', 'Kabupaten Tanah Datar', '    Lembah Anai merupakan sebuah jalur yang menghubungkan Padang Panjang – Bukittinggi. Jalur tersebut sangat terkenal akan keindahan alam yang akan disaksikan selama perjalanan.Apalagi terdapat sebuah air terjun yang cukup tinggi, yang letaknya berada di pinggir jalan raya sehingga dapat terlihat jelas ketika kamu melewatinya.\r\n\r\n    Air Terjun tersebut biasa disebut Air Terjun Lembah Anai, di Lembah Anai sendiri terdapat sekitar 6 air terjun yang dapat kamu eksplor.Maka dari itu banyak pengunjung yang beristirahat sejenak untuk menikmati kesegaran Air Terjun Lembah Anai ini, sebelum melanjutkan perjalanan kembali.\r\n\r\n    Lembah Anai menyimpan keindahan alam dan kekayaan hayati yang sangat beragam, perlu meluangkan waktu khusus jika kamu ingin mengenal lebih dekat lembah ini.\r\n\r\n', 'lembahanai.jpg', '', ''),
(2, 'Lembah Harau', 'Kabupaten Lima Puluh Kota,Harau', 'Lembah Harau adalah sebuah ngarai dekat Kota Payakumbuh di Kabupaten Limapuluh Koto, provinsi Sumatra Barat. Lembah Harau diapit dua bukit cadas terjal dengan ketinggian mencapai 150 meter berupa batu pasir yang terjal berwarna-warni, dengan ketinggian 100 sampai 500 meter. Topografi Cagar Alam Harau adalah berbukit-bukit dan bergelombang. Tinggi dari permukaan laut adalah 500 sampai 850 meter, bukit tersebut antara lain adalah Bukit Air Putih, Bukit Jambu, Bukit Singkarak, dan Bukit Tarantang. Berjalan menuju Lembah Harau amat menyenangkan. Dengan udara yang masih segar, anda bisa melihat keindahan alam sekitarnya.', 'lembahharau.webp', '', ''),
(3, 'Jam Gadang', 'Kabuapten Agam,Bukit Tinggi', 'Tempat wisata Sumatera Barat paling populer yang utama adalah Jam Gadang. Saat berkunjung ke Bukittinggi, rasanya kurang lengkap jika tidak berfoto dengan Jam Gadang. Menara jam yang berusia lebih dari 90 tahun tersebut masih mempertahankan bentuk aslinya. Pelatarannya yang dihiasi taman dengan pepohonan terawat bisa jadi latar belakang foto menarik. Jam Gadang, menurut beberapa catatan sejarah, dibangun pada 1926 setelah Ratu Belanda memberi mesin jam ini kepada Sekretaris Kota Bukittinggi pada saat itu--Rook Maker. Pembangunannya dilakukan oleh dua orang arsitek setempat, Yazin dan Sutan Gigi Ameh, dengan menghabiskan dana 3.000 Gulden.', 'jamgadang.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisataviral`
--

CREATE TABLE `tbl_wisataviral` (
  `id` int(100) NOT NULL,
  `nama_wisata` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_wisataviral`
--

INSERT INTO `tbl_wisataviral` (`id`, `nama_wisata`, `tempat`, `deskripsi`, `gambar`) VALUES
(1, 'Camping Ground Danau Talang', 'Kec. Danau Kembar, Kabupaten Solok', 'Kalau mau camping nyaman bareng keluarga atau teman-teman, datang saja ke Area Camping Ground Danau Talang. Apalagi, di sini tersedia penyewaan tenda.\r\n\r\nSelain itu, ada fasilitas warung yang menyediakan makanan, kayu bakar, tenda dan matras. Jadi, kalau kamu tidak membawa bekal, bisa beli makanan dan minuman di warung.\r\n\r\nTersedia juga fasilitas seperti musala dan kamar mandi. Kalau untuk air kamar mandi mungkin akan kurang di akhir pekan karena ramainya campers. Maka dari itu, kalau ingin camping yang lebih sepi dan nyaman maksimal, kamu bisa datang saat hari kerja.\r\n\r\nArtikel ini telah tayang sebelumnya di napaktilas.net dengan judul 7 Tempat Camping Terbaik di Solok yang Lagi Hits (2023).', 'camping.jpg'),
(2, 'Pulau Mandeh', 'Kecamatan Koto XI Tarusan, Pesisir Selatan\r\n', 'Pulau Mandeh terletak di Kecamatan Koto XI Tarusan, Pesisir Selatan, Sumatera Barat. Kawasan Pulau Mandeh dikenal sebagai Raja Ampat Sumatera Barat karena pulau ini memiliki pulau-pulau kecil di tengah bagian teluk. Pulau Mandeh memiliki wisata bahari dan keindahan pulau-pulau disekitarnya yang menakjubkan.\r\nPulau Mandeh mulai dikenal sebagai daerah wisata sekitar tahun 2000. Saat itu, Indonesia tengah mencari \"Bali Baru\", sehingga Pulau Mandeh terpilih menjadi tempat wisata. Pulau yang semula terisolir mulai dibuka dengan membangun jalan menuju Pesisir Selatan. Letak Pulau Mandeh tepatnya di Teluk Carocok Tarusan, dimana terdiri dari sejumlah pulau di antaranya Tarajun, Sironjong Besar dan Sironjong Kecil, Setan Kecil, Pulau Merak, dan Pulau Cubadak.\r\nPuncak Mandeh merupakan salah satu tempat menarik untuk dikunjungi. Dari tempat ini, wisatawan dapat melihat keindahan Teluk Carocok Terusan.  Puncak Mandeh ini juga menyediakan  area khusus untuk menikmati udara dan melihat pemandangan sekitar.\r\n\r\n\r\n', 'pulaumandeh.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_cafe`
--
ALTER TABLE `tbl_cafe`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_wisataviral`
--
ALTER TABLE `tbl_wisataviral`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_cafe`
--
ALTER TABLE `tbl_cafe`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_wisataviral`
--
ALTER TABLE `tbl_wisataviral`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
