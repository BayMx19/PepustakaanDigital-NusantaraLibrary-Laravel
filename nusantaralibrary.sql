-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 01:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nusantaralibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kta` bigint(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `user_id`, `kta`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`, `created_at`, `updated_at`) VALUES
(3, 4, 20051397019, 'Isa Iman Muhammad', 'Surabaya', '2002-12-24', 'L', 'TI', '2022-06-03 06:37:17', '2022-06-03 06:37:17'),
(4, 6, 20051397027, 'Tatsbita Thifalia', 'Batam', '2002-12-12', 'P', 'SI', '2022-06-03 06:37:53', '2022-06-03 06:37:53'),
(5, 7, 20051397045, 'Gagah Rizky Mulyawan', 'Tangerang', '2001-09-25', 'L', 'TI', '2022-06-03 06:38:45', '2022-06-03 06:38:45'),
(6, 5, 20051397081, 'Britani Adiningati', 'Surabaya', '2002-05-07', 'P', 'KM', '2022-06-03 06:39:55', '2022-06-03 06:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` enum('rak1','rak2','rak3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `isbn`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_buku`, `deskripsi`, `lokasi`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Belajar Pemrograman Java', '9920392749', 'Abdul Kadir', 'PT. Restu Ibu', 2018, 20, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak1', 'buku_java.jpg', '2022-06-03 06:26:00', '2022-06-03 06:26:00'),
(2, 'Pemrograman Android', '9920395559', 'Muhammad Nurhidayat', 'PT. Restu Guru', 2018, 14, 'Jurus Rahasia Menguasai Pemrograman Android', 'rak2', 'jurus_rahasia.jpg', '2022-06-03 06:26:00', '2022-06-03 06:26:00'),
(3, 'Android Application', '9920392000', 'Dina Aulia', 'PT. Restu Ayah', 2018, 5, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak2', 'create_your.jpg', '2022-06-03 06:26:00', '2022-06-03 06:26:00'),
(4, 'Laut Bercerita', '9786024246945', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', 2017, 20, 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.', 'rak3', '98033-2022-06-04-16-29-43.jpeg', '2022-06-04 09:29:43', '2022-06-04 09:29:43'),
(5, '5 CM', '9789790818521', 'Donny Dhirgantoro', 'Grasindo (Gramedia Widia Sarana Indonesia)', 2013, 18, 'Lima sahabat telah menjalin persahabatan selama tujuh tahun. Kegemaran mereka adalah mengeksekusi hal-hal yang tidak mungkin dan mencoba segala hal, mulai dari kafe paling terkenal di Jakarta, sampai nonton layar tancap. Semuanya penggemar film, dari film Hollywood sampai film yang nggak kelas-kecuali film India karena mereka punya prinsip bahwa semua persoalan di dunia atau masalah pasti ada jalan keluarnya, tapi bukan dengan dalam bentuk joget.   Suatu saat, karena terdorong oleh rasa bosan di antara satu dan yang lain, mereka memutuskan untuk tidak saling berkomunikasi dan bertemu satu sama lain selama tiga bulan.', 'rak2', '59321-2022-06-04-16-35-00.jpeg', '2022-06-04 09:35:00', '2022-06-04 09:35:00'),
(6, 'Membasmi Virus Komputer dan Android', '978-623-00-1696-7', 'Dedik Kurniawan', 'PT. Elex Media Komputindo', 2020, 5, 'Virus, trojan, dan semua komplotannya merupakan program jahat yang selalu mempunyai tujuan untuk menghancurkan, merusak data serta sistem komputer dan Android yang kita miliki. Virus tidak pernah pilih kasih, tidak pandang bulu, dan tidak mempunyai belas kasihan sedikit pun. Untuk itu, jangan sampai semua itu terjadi dan menimpa pada diri Anda. Bentengi segera komputer, laptop, Android, dan seluruh data yang Anda miliki. Buku ini hadir untuk membantu dan memberikan solusi keamanan. Buku ini akan mengupas tuntas bagaimana cara-cara membentengi sekaligus memusnahkan virus. Berikut ini beberapa hal yang dibahas: - Memusnahkan virus yang menginfeksi PC, laptop & Android.', 'rak1', '88207-2022-06-04-16-36-42.jpeg', '2022-06-04 09:36:42', '2022-06-05 03:59:38'),
(7, 'The Comfort Book', '9781786898296', 'Matt Haig', 'Canongate Books Ltd', 2021, 10, 'The Comfort Book is Haig’s life raft: it’s a collection of notes, lists, and stories written over a span of several years that originally served as gentle reminders to Haig’s future self that things are not always as dark as they may seem. Incorporating a diverse array of sources from across the world, history, science, and his own experiences, Haig offers warmth and reassurance, reminding us to slow down and appreciate the beauty and unpredictability of existence.', 'rak3', '23319-2022-06-04-16-38-38.jpeg', '2022-06-04 09:38:38', '2022-06-04 09:38:38'),
(8, 'Day Trading', '978-623-00-1730-8', 'Amathevs', 'PT. Elex Media Komputindo', 2020, 7, 'Biasanya trader aktif yangg sudah cukup lama kerap mengalami disorientasi dalam market dan kerap melakukan tindakan-tindakan yang tanpa disadari atau memang disadarinya bertentangan dengan prinsip-prinsip umum di Forex Market meski sebenarnya di dunia Forex market ini serba abu-abu dan tidak ada yang 100% benar atau pun 100% salah seperti ada yang bilang Trading di Daily Chart atau weekly Chart jauh lebih bagus ya benar tapi tahukah risiko yang harus ditanggung apabila market berbalik melawan arah? Day Trading adalah salah satu gaya trading yang memiliki risiko yang jauh lebih rendah dibanding Swing Trading atau Positioning Trading namun jauh lebih rileks dibanding gaya trading Scalping yang jauh lebih melelahkan dan ada satu lagi keuntungan trader tersebut tidak perlu khawatir dan berlama-lama dengan posisi yang ter-floating karena pada umumnya posisi sudah ditutup pada', 'rak3', '88939-2022-06-04-16-40-38.jpeg', '2022-06-04 09:40:38', '2022-06-04 10:02:06'),
(9, 'Cantik Itu Luka', '978-602-031-258-3', 'Eka Kurniawan', 'Penerbit Jendela, Gramedia Pustaka Utama (Jakarta)', 2015, 8, 'Akhirnya. Siapa orang tua Ali dijawab di buku ini.  Ali, bertahun-tahun, berusaha memecahkan misteri itu. Raib dan Seli tentu tidak akan membiarkan Ali sendirian, mereka sahabat sejati. Dan jangan lupakan, Batozar alias Master B, dengan segenap kalimat kasar, seolah tidak peduli, dia selalu siap membela. Tapi bagaimana jika misteri itu terhadang tembok kokoh SagaraS? Dan mereka harus bertarung hidup-mati lima ronde melawan Ksatria Sagara', 'rak2', '22901-2022-06-04-16-42-09.jpeg', '2022-06-04 09:42:09', '2022-06-04 09:42:09'),
(10, 'SagaraS', '978-623-97262-5-6', 'Ali', 'Gramedia', 2021, 2, 'Akhirnya. Siapa orang tua Ali dijawab di buku ini.  Ali, bertahun-tahun, berusaha memecahkan misteri itu. Raib dan Seli tentu tidak akan membiarkan Ali sendirian, mereka sahabat sejati. Dan jangan lupakan, Batozar alias Master B, dengan segenap kalimat kasar, seolah tidak peduli, dia selalu siap membela. Tapi bagaimana jika misteri itu terhadang tembok kokoh SagaraS? Dan mereka harus bertarung hidup-mati lima ronde melawan Ksatria SagaraS?', 'rak2', '48329-2022-06-04-16-46-33.jpeg', '2022-06-04 09:46:33', '2022-06-04 09:46:33'),
(11, 'Azzamine', '47585585959955', 'Sophie Aulia', '@bukune', 2022, 50, '“Kalaupun nanti saya udah sayang sama kamu, angka-angka sebesar apa pun nggak akan bisa menggambarkan rasa sayang saya.” “Terus, lo kalo sayang sama gue digambarin pake apa?” “Saya akan selalu langitkan nama kamu di sepertiga malam saya, Jasmine”  Azzam datang ke kehidupan Jasmine lewat perjodohan yang tidak ia sangka. Jasmine yang tidak siap dengan perjodohan ini pun mencoba memberi kesempatan kepada siapa dirinya akan dijodohkan.  Azzam datang ke kehidupan Jasmine lewat perjodohan yang tidak ia sangka. Jasmine yang tidak siap dengan perjodohan ini pun mencoba memberi kesempatan kepada siapa dirinya akan dijodohkan.  Namun rupanya dengan cepat, Azzam berhasil merebut perhatian Jasmine.  Lewat tutur kata dan perhatian yang tulus dan lembut, Azzam benar-benar mencuri hati Jasmine. Mereka pun mulai menjalin hubungan sementara Jasmine masih menyimpan kegelisahan akan hati yang harus dikorbankan; Deka, pria yang juga menyayangi Jasmine.', 'rak1', '79297-2022-06-04-16-48-12.jpeg', '2022-06-04 09:48:12', '2022-06-04 09:48:12'),
(12, 'The Midnight Library', '9780525559481', 'Matt Haig', 'PT. Elex Media Komputindo', 2020, 19, 'Somewhere out beyond the edge of the universe there is a library that contains an infinite number of books, each one the story of another reality. One tells the story of your life as it is, along with another book for the other life you could have lived if you had made a different choice at any point in your life. While we all wonder how our lives might have been, what if you had the chance to go to the library and see for yourself? Would any of these other lives truly be better?  In The Midnight Library, Matt Haig\'s enchanting blockbuster novel, Nora Seed finds herself faced with this decision. Faced with the possibility of changing her life for a new one, following a different career, undoing old breakups, realizing her dreams of becoming a glaciologist; she must search within herself as she travels through the Midnight Library to decide what is truly fulfilling in life, and what makes it worth living in the first place.', 'rak1', '32726-2022-06-04-16-49-42.jpeg', '2022-06-04 09:49:42', '2022-06-04 09:49:42'),
(13, 'Membuat Website Cantik dan Menarik dengan JQuery', '978-623-00-1150-4', 'Arista Prasetyo Adi', 'PT. Elex Media Komputindo', 2020, 3, 'JQuery merupakan salah satu library Javascript yang powerful dan sudah banyak digunakan oleh website-website terkenal. Beberapa keunggulan JQuery adalah mampu menciptakan animasi, efek menarik, dan load data tanpa refresh. Jika ingin mengembangkan website supaya dinamis dan menarik, tentunya JQuery menjadi pilihan utama. Dengan JQuery Anda tidak perlu menuliskan kode yang panjang, tinggal memanggil library dari beberapa kode program saja.  Selain membahas tentang fungsi dan elemen penting yang ada di JQuery, buku ini juga mambahas plug-ins JQuery yang disediakan oleh JQuery UI, serta pembahasan tentang JQuery Ajax. Pembahasan disajikan dengan mudah dan cocok bagi pemula yang inign menguasai JQuery untuk pengembangan website.', 'rak3', '22570-2022-06-04-16-51-11.jpeg', '2022-06-04 09:51:11', '2022-06-04 09:51:11'),
(14, 'Teknik Hacking Android', '978-623-00-0097-3', 'Dedik Kurniawan', 'PT. Elex Media Komputindo', 2019, 35, 'Buku ini akan membimbing Anda dalam belajar cara-cara hacking Android. Anda akan ditunjukkan berbagai hal yang mungkin tidak pernah Anda bayangkan sebelumnya dan tentu materi-materi pada buku ini akan sangat bermanfaat untuk Anda yang berminat mengutak-atik ponsel Anda. Dijamin, Anda akan heran dan kagum karena ternyata hacking Android itu sangat mudah untuk dilakukan.', 'rak3', '71199-2022-06-04-16-52-27.jpeg', '2022-06-04 09:52:27', '2022-06-04 09:52:27'),
(15, 'Resign!', '978-602-03-8071-1', 'Almira Bastari', 'PT. Gramedia Pustaka Utama', 2018, 45, 'MetroPop: Resign! Penulis Almira Bastari Penerbit PT. Gramedia Pustaka Utama ISBN 978-602-03-8071-1 EISBN 978-602-03-8072-8 Tahun Terbit 2018  Sinopsis Kompetisi sengit terjadi di sebuah kantor konsultan di Jakarta. Empat anggota The Cungpret, alias kacung kampret, tak ada yang mengincar penghargaan pegawai terbaik, jabatan tertinggi, atau bonus terbesar. Namun mereka bertaruh dan saling sikut untuk resign!  Cungpret #1: Alranita Pegawai termuda tapi paling lama bertahan di sebuah tim yang dipimpin Bos Galak.  Cungpret #2: Carlo Pegawai yang baru menikah dan ingin mencari pekerjaan dengan gaji lebih tinggi.  Cungpret #3: Karenina Pegawai senior yang selalu dianggap tidak becus tapi terus-menerus dijejali proyek baru.  Cungpret #4: Andre Pegawai senior kesayangan si bos yang berniat resign demi dapat menikmati kehidupan keluarga yang lebih normal dan seimbang.  Sang Bos: Tigran Genius, misterius, dan galak, tapi sukses dipercaya untuk memimpin timnya sendiri di usianya yang masih cukup muda.', 'rak1', '30992-2022-06-04-16-54-03.jpeg', '2022-06-04 09:54:03', '2022-06-04 09:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2018_06_17_070037_create_anggotas_table', 1),
(7, '2018_06_17_130244_create_bukus_table', 1),
(8, '2018_06_18_014155_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(10) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('pinjam','kembali') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `anggota_id`, `buku_id`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'TR00001', 3, 8, '2022-06-04', '2022-06-09', 'kembali', NULL, '2022-06-04 10:00:49', '2022-06-04 10:02:06'),
(2, 'TR00002', 3, 6, '2022-06-05', '2022-06-10', 'kembali', NULL, '2022-06-05 03:59:10', '2022-06-05 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `gambar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin NuLib', 'Admin', 'admin123@gmail.com', '$2y$10$B7YuqcxS54q7ul3EvNCTKOOhzJjzhJjM8zVJnNEJRFCvKLJ5kGTs.', NULL, 'admin', 'Mhly7dSG3Wf1FiAtQKoVeCxTf0eziXkRlEY4pPho2xsC8vOINuXi1nQA9WJ9', '2022-06-03 06:31:20', '2022-06-03 06:31:20'),
(4, 'Isa Iman Muhammad', 'iim24', 'isaiman@gmail.com', '$2y$10$vTBCKkCKBww70EcyaxACV.ZF1F2Fa/6zcp1OnpK1K1Oxw.8ns/JBq', NULL, 'user', 'VFJX8ciiZju3iSLm8xckED2De4nLqpgRv3slrLnnmpAEJZkusCQN7Uu9Dt0l', '2022-06-03 06:32:43', '2022-06-03 06:32:43'),
(5, 'Britani Adiningati', 'britzee', 'britania@gmail.com', '$2y$10$qzjiTrQKRMwk4BfRxBJn0eEGQTSeKd9Yg0k3hwxuOT.ukhz6XsIcK', NULL, 'user', NULL, '2022-06-03 06:33:19', '2022-06-03 06:33:19'),
(6, 'Tatsbita Thifalia', 'tabi', 'tabi123@gmail.com', '$2y$10$bSjON.67W.xZOZBLXSNK4u/gD6UAMAgFpPBQYDpWoG58KN8eJOp0i', NULL, 'user', 'QDXiWUXJR2GartA9X9zoRjv1GkwQavSj1kiaFz7BuJcQFEWE7Nso5juXjVIA', '2022-06-03 06:34:05', '2022-06-03 06:34:05'),
(7, 'Gagah Rizky', 'gr123', 'gagahrizky@gmail.com', '$2y$10$jjbln4Y9jqhNkPBehgFOBeH0nKCUCgQmISBfeMsyFkfExp2L9XVsS', NULL, 'user', NULL, '2022-06-03 06:35:06', '2022-06-03 06:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_user_id_foreign` (`user_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `transaksi_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
