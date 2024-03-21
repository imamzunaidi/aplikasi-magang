-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 07:51 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasi_magang`
--

-- --------------------------------------------------------

--
-- Table structure for table `alur`
--

CREATE TABLE `alur` (
  `id_alur` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alur`
--

INSERT INTO `alur` (`id_alur`, `judul`, `deskripsi`, `gambar_alur`, `created_at`, `updated_at`) VALUES
(1, 'Registrasi', 'Sebelum melakukan pendaftaran silahkan lakukan registrasi terlebih dahulu agar mempunyai akun', 'alur-26012022da48f06eb9.png', '2024-01-24 10:14:57', '2024-01-24 17:14:57'),
(2, 'Lengkapi Berkas', 'Setelah registrasi tunggu beberapa saat sampai ada persetujuan dari admin untuk login ke akun masing- masing. Apabila sudah mendapatkan persetujuan silahkan login dan lengkapi berkas-berkas yang sudah tertera.', 'alur-2601202268e28289f3.png', '2023-12-21 03:02:14', '2023-12-21 10:02:14'),
(5, 'Menunggu Hasil', 'Setelah melengkapi berkas yang sudah ada, Tunggu Hasil dan Cek Secara Berkala Pada sub Menu lamaran yang ad pada profil', 'alur-260120227dc482823b.png', '2023-12-21 03:04:21', '2023-12-21 10:04:21'),
(6, 'Selesai', 'Semua Proses Wajib Di Ikuti Secara Urut Untuk Dapat Mendaftar Pada Perusahaan Kami, Terimakasih dan Semoga Keterima.', 'alur-260120228d907c820f.png', '2023-12-21 03:04:58', '2023-12-21 10:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `detail_users`
--

CREATE TABLE `detail_users` (
  `id_detail_users` int(11) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_users`
--

INSERT INTO `detail_users` (`id_detail_users`, `nim`, `nik`, `jenis_kelamin`, `agama`, `tanggal_lahir`, `tempat_lahir`, `id_users`, `alamat_lengkap`, `nama_lengkap`, `created_at`, `updated_at`) VALUES
(3, '3232', '324234', 'laki-laki', 'Islam', '2023-10-03', 'dffdg', 5, 'ewrewr', 'ewrfewr', '2023-10-02 08:38:45', NULL),
(4, '32423', '3234324', 'laki-laki', 'Islam', '2023-10-03', 'sdfsdf', 3, 'dsfdsfds', 'dsfdsf sdf dsfdsf dsf sfdsf', '2023-10-03 14:44:27', '2023-10-03 14:44:27'),
(5, '23456789', '123456789', 'perempuan', 'Khonghucu', '2023-12-21', 'smd', 7, 'bukuan', 'lantiur', '2023-12-20 23:35:44', NULL),
(6, '1234589', '12345678', 'perempuan', 'Khonghucu', '2023-12-21', 'samarinda', 8, 'palaran', 'Lantiur', '2023-12-21 00:53:00', NULL),
(7, '12345567', '123456789', 'perempuan', 'Kristen', '2023-12-20', 'Samarinda', 9, 'Samarinda', 'Sinta', '2023-12-21 04:14:58', NULL),
(8, '12345', '12345', 'perempuan', 'Kristen', '2023-12-21', 'samarinda', 12, 'palaran', 'Lantiur Siregar', '2023-12-21 07:14:00', NULL),
(9, '123', '12345678', 'perempuan', 'Kristen', '2024-01-15', 'smd', 13, 'SAMARINDA', 'santi', '2024-01-09 02:18:16', NULL),
(10, '234567890', '647235468905', 'perempuan', 'Kristen', '2002-05-22', 'SAMARINDA', 15, 'JL. PALARAN RT. 033', 'LANTIUR SIREGAR', '2024-01-15 04:49:27', '2024-01-15 11:49:27'),
(11, '201600580', '647323456718', 'perempuan', 'Kristen', '2002-06-21', 'Samarinda', 16, 'JL. Palaran', 'LANTIUR SIREGAR', '2024-01-22 10:12:13', NULL),
(12, '20607567', '63452678912345', 'perempuan', 'Kristen', '2002-01-10', 'Samarinda', 17, 'Jl. Antasari', 'Sinta Permatasari', '2024-01-24 08:20:40', NULL),
(13, '123456', '23456718', 'perempuan', 'Kristen', '2000-01-25', 'Samarinda', 18, 'Palaran', 'Lantiur', '2024-01-25 01:33:46', NULL),
(14, '1234567', '1234567', 'perempuan', 'Kristen', '2018-01-25', 'Samarinda', 19, 'Palaran', 'Lantiur', '2024-01-25 03:26:48', NULL),
(15, '124', '12345', 'laki-laki', 'Islam', '2024-02-19', 'samarinda', 20, 'Samarinda', 'Dimas', '2024-02-19 13:39:23', NULL),
(16, '3523523', '32423423', 'laki-laki', 'Islam', '2024-03-18', 'sdfsdf', 22, 'dsfsdf', 'test', '2024-03-18 04:13:49', NULL),
(17, '3523523', '32423423', 'laki-laki', 'Islam', '2024-03-18', 'sdfsdf', 24, 'dsfsdf', 'test', '2024-03-18 04:14:31', NULL),
(18, '2312321', '2131231', 'laki-laki', 'Islam', '2024-03-20', 'jakarta', 25, 'dfddfs', 'testingdata', '2024-03-20 11:37:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `galeri_gambar`, `created_at`, `updated_at`) VALUES
(16, '1696263984_bkilogonew-whitebg.png', '2023-10-02 09:26:24', NULL),
(19, '1703125089_WhatsApp Image 2023-12-21 at 08.09.11.jpeg', '2023-12-21 01:18:09', NULL),
(22, '1703126885_BLI00652.JPG', '2023-12-21 01:48:05', NULL),
(24, '1703127223_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '2023-12-21 01:53:43', NULL),
(25, '1703143243_1aa.png', '2023-12-21 06:20:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`, `created_at`, `updated_at`) VALUES
(2, 'Employee Gathering', 'Upaya perusahaan dalam meningkatkan kesehatan fisik maupun mental pada karyawannya, demi mencapai lingkungan kerja yang lebih kolaboratif dan produktif di kemudian hari.', 'Panitia', '1703128277_WhatsApp Image 2023-12-21 at 08.09.11.jpeg', '2023-12-13', '2024-01-10 14:01:17', '2024-01-10 21:01:17'),
(3, 'Peserta Magang Politeknik Pertanian Negeri Samarinda', 'Magang selama 3 bulan untuk memenuhi syarat perkuliahan', 'Politani', '1703143200_1aa.png', '2023-12-14', '2023-12-21 07:20:00', '2023-12-21 14:20:00');

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
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `universitas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `surat_rekomendasi` varchar(255) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `proposal` varchar(255) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `dari_tanggal` varchar(255) NOT NULL,
  `sampai_tanggal` varchar(255) NOT NULL,
  `status_pendaftaran` varchar(200) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `syarat` varchar(255) DEFAULT NULL,
  `status_syarat` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `gambar`, `ktp`, `universitas`, `jurusan`, `prodi`, `surat_rekomendasi`, `cv`, `proposal`, `id_users`, `dari_tanggal`, `sampai_tanggal`, `status_pendaftaran`, `keterangan`, `syarat`, `status_syarat`, `created_at`, `updated_at`) VALUES
(8, '1696599311_back.jpg', '1696599311_caravan travel.png', 'vcdbvdsgdeg', 'gdsghfg', 'werewrewrsdf', '1696599311_background.jpeg', '1696599311_bc.jpg', NULL, 5, '2023-10-06', '2023-10-17', 'tidak diterima', 'as dasdasd', NULL, NULL, '2023-11-12 13:07:36', '2023-11-12 13:06:02'),
(10, '1701934013_back.jpg', '1701934013_download (2).jpg', 'cgdf', 'sdfsdf', 'cvf', '1701934013_bc.jpg', '1701934013_background.jpeg', '', 3, '2023-12-07', '2023-12-20', 'diterima', 'Selamat Anda Keterima', NULL, NULL, '2023-12-21 04:16:47', '2023-12-21 11:16:47'),
(11, '1703124096_WhatsApp Image 2023-12-21 at 08.09.11.jpeg', '1703124096_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 'politeknik', 'informatika', 'trpl', '1703124096_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703124096_WhatsApp Image 2023-12-21 at 08.09.11.jpeg', '1703124096_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 8, '2023-12-21', '2023-12-31', 'diterima', 'benar', NULL, NULL, '2023-12-21 02:02:40', '2023-12-21 09:02:40'),
(12, '1703146921_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703146921_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 'Politeknik', 'Informatika', 'TRPL', '1703146921_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703146921_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703146921_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 12, '2023-12-21', '2023-12-21', 'diterima', 'magang dimulai pada tanggal sekian', NULL, NULL, '2023-12-21 08:25:24', '2023-12-21 15:25:24'),
(13, '1703203038_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703203038_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 'Politeknik', 'Informatika', 'TRPL', '1703203038_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703203038_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', '1703203038_WhatsApp Image 2023-12-21 at 09.27.40.jpeg', 9, '2023-12-22', '2023-12-22', 'pengajuan', NULL, NULL, NULL, '2023-12-21 22:57:18', NULL),
(14, '1704256286_BLI00569.JPG', '1704256286_BLI00569.JPG', 'UT', 'Informatika', 'Teknik Informatika', '1704256286_BLI00569.JPG', '1704256286_BLI00569.JPG', '1704256286_BLI00569.JPG', 12, '2024-01-11', '2024-01-24', 'tidak diterima', 'berkas tidak memenuhi', NULL, NULL, '2024-01-03 04:32:42', '2024-01-03 11:32:42'),
(15, '1704970094_1.1.1.jpg', '1704970094_New Wireframe 1.png', 'Mulawarman', 'Komunikasi', 'Ilmu Komunikasi', '1704970094_New Wireframe 1.png', '1704970094_New Wireframe 1.png', '1704970094_New Wireframe 1.png', 13, '2024-01-11', '2024-01-31', 'tidak diterima', 'Pendaftaran magang tersedia dibulan 2', NULL, NULL, '2024-01-22 11:33:53', '2024-01-22 18:33:53'),
(16, '1705237135_WhatsApp Image 2023-12-31 at 18.11.40.jpeg', '1705237135_WhatsApp Image 2024-01-01 at 21.23.05.jpeg', 'Politeknik Pertanian Negeri Samarinda', 'Rekayasa dan Komputer', 'Teknologi Rekayasa Perangkat Lunak', '1705237135_WhatsApp Image 2024-01-01 at 21.23.05.jpeg', '1705237135_WhatsApp Image 2024-01-01 at 21.23.05.jpeg', '1705237135_WhatsApp Image 2024-01-01 at 21.23.05.jpeg', 15, '2024-01-14', '2024-02-16', 'diterima', 'SELAMAT ANDA LULUS', NULL, NULL, '2024-01-14 12:59:55', '2024-01-14 19:59:55'),
(17, '1705922741_BLI00762.JPG', '1705922741_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 'Politeknik Pertanian Negeri Samarinda', 'Rekayasa dan Komputer', 'Teknologi Rekayasa Perangkat Lunak', '1705922741_WhatsApp Image 2024-01-01 at 20.54.11 (3).jpeg', '1705922741_WhatsApp Image 2024-01-01 at 20.54.10.jpeg', '1705922741_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 16, '2024-01-22', '2024-01-31', 'diterima', 'Selamat Anda Diterima', NULL, NULL, '2024-01-22 11:31:17', '2024-01-22 18:31:17'),
(18, '1706087759_1.1.1.jpg', '1706087759_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 'Universitas Terbuka', 'FISIP', 'Administrasi Negara', '1706087759_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706087759_WhatsApp Image 2024-01-01 at 20.54.11.jpeg', '1706087759_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 13, '2024-01-24', '2024-02-27', 'tidak diterima', 'Mohon maaf masih penuh', NULL, NULL, '2024-01-24 09:17:30', '2024-01-24 16:17:30'),
(19, '1706088331_1.1.1.jpg', '1706088331_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 'Universitas Mulawarman', 'FISIP', 'Administrasi Negara', '1706088331_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706088331_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706088331_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 17, '2023-10-02', '2024-01-31', 'tidak diterima', 'Masih ada anak magang', NULL, NULL, '2024-01-24 09:26:58', '2024-01-24 16:26:58'),
(20, '1706088932_1.1.1.jpg', '1706088932_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 'Universitas Mulawarman', 'FISIP', 'Administrasi Negara', '1706088932_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706088932_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706088932_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 17, '2023-11-08', '2024-01-31', 'tidak diterima', 'Penuh!', NULL, NULL, '2024-01-24 09:36:53', '2024-01-24 16:36:53'),
(21, '1706089117_1.1.1.jpg', '1706089117_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 'Universitas Mulawarman', 'FISIP', 'Administrasi Negara', '1706089117_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706089117_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', '1706089117_WhatsApp Image 2024-01-01 at 20.54.11 (1).jpeg', 17, '2024-01-01', '2024-01-31', 'diterima', 'Selamat Anda Keterima dibulan januari!\r\nSilahkan Masuk sesuai tanggal yang sudah tertera', NULL, NULL, '2024-01-24 09:39:53', '2024-01-24 16:39:53'),
(22, '1706150259_test2.PNG', '1706150259_1.1.1.jpg', 'Politeknik Pertanian Negeri Samarinda', 'Informatika', 'TRPL', '1706150259_1.1.1.jpg', '1706150259_1.1.1.jpg', '1706150259_1.1.1.jpg', 18, '2024-01-25', '2024-01-25', 'diterima', 'Selamat anda keterima', NULL, NULL, '2024-01-25 02:41:45', '2024-01-25 09:41:45'),
(23, '1710736354_bc.jpg', '1710736354_caravan travel.png', 'test', 'test', 'test', '1710736354_COD.jpg', '1710736354_COD.jpg', '1710736354_COD.jpg', 24, '2024-03-18', '2024-03-21', 'diterima bersyarat', NULL, 'harus membuat surat pernyataan', 'setuju', '2024-03-21 06:51:24', '2024-03-21 13:51:24'),
(24, '1710934764_bc.jpg', '1710934764_COD.jpg', 'sdfdsf', 'sdfds', 'dsfsdf', '1710934764_bc.jpg', '1710934764_COD.jpg', '1710934764_bc.jpg', 25, '2024-03-20', '2024-03-21', 'diterima bersyarat', NULL, 'harus memenuhi aturan yang ada', NULL, '2024-03-20 11:40:16', '2024-03-20 18:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL,
  `gambar_perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id_perusahaan`, `nama_perusahaan`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_perusahaan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'PT. Biro Klasifikasi Indonesia(Persero) Cabang Klas Utama Samarinda', 'Biro Klasifikasi Indonesia (BKI) menjadi badan klasifikasi ke-4 di Asia setelah Jepang, China dan Korea, dan menjadi satu-satunya badan klasifikasi nasional yang bertugas untuk mengklaskan kapal-kapal niaga berbendera Indonesia dan kapa lberbendera asing yang secara reguler beroperasi di perairan Indonesia.', 'Menjadi holding perusahaan pemastian yang berkelas dunia dan memberdayakan bangsa dengan membangun kepercayaan.', 'Menyediakan jasa yang komprehensif dan terpercaya dengan memperkuat kapasitas dan kapabilitas terkait sumber daya manusia, teknologi dan inovasi melalui sinergi dan integrasi bisnis.', '0852131231232', 'bki samarinda', 'admin@gmail.com', '@bkisamarinda', 1, '1696263384_bkilogonew-whitebg.png', 'JL. MT Haryono No.199 Air Putih, Samarinda, Provinsi Kalimantan Timur.', '2024-01-24 10:14:40', '2024-01-24 17:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_telp`, `status`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Nf68ysXF3R9i12HV8cVwFOv.Kbam3MwNQX2dONoO94A9wZdSIV5Qy', 'admin', '32423423', '1', 'adminadmin', NULL, '2023-10-02 06:03:43', '2023-10-02 06:50:38'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$Y40ROh/JIZHrTs8xfDm96.S1OHz/66vCTXj7NAEUBGBsIJXJrkaCa', 'admin', '3434324', '1', 'test', NULL, '2023-10-02 06:04:10', NULL),
(3, 'pelamar', 'pelamar@gmail.com', NULL, '$2y$10$Hn89bAp1.mOWn.VgF5xGD.aq3Vf1joCdlT9pfLQNe1KcObTY5scFm', 'pelamar', '3423423432', '1', 'test', NULL, '2023-10-02 07:25:32', '2023-10-03 07:44:28'),
(6, 'ewrewr', 'desa@gmail.com', NULL, '$2y$10$Sfju4FIYHqmWE/fFzS.01.75nnGKr7MxYeacz4zNzI7mxb3xTiEb6', 'pelamar', '081229677253', '0', 'sdfsdf', NULL, '2023-10-06 20:44:49', NULL),
(7, 'lantiur', 'lantiur@gmail.com', NULL, '$2y$10$jMYSXvGlxdx3ZfuQONroJex6lXLYdGME1rbwStMJ.Y75CA7BX7kbK', 'pelamar', '1234567', '1', 'bukuan', NULL, '2023-12-20 23:35:44', '2024-03-20 11:45:56'),
(8, 'Lantiur', 'lantiur22@gmail.com', NULL, '$2y$10$tuzRVB2UYtxaRFe7/SXKw.5cjMNR4nVyQauj4jk7qzw95Lp0g0Imu', 'pelamar', '123456789', '1', 'palaran', NULL, '2023-12-21 00:53:00', '2023-12-21 00:58:50'),
(9, 'Sinta', 'sinta@gmail.com', NULL, '$2y$10$YXOmcU2pi/z8X0M8EPrgDu3Gio5lC2mJOHHGS24R1pXzdFYEpW3ue', 'pelamar', '12345667899', '1', 'Samarinda', NULL, '2023-12-21 04:14:58', '2023-12-21 04:15:14'),
(13, 'santi', 'santi@gmail.com', NULL, '$2y$10$zaeRYHu2I1B8hh8xwfAkP.36b9H06NEL7l.lrtpeLOVKSaKkh7StS', 'pelamar', '12356789', '1', NULL, NULL, '2024-01-09 02:18:16', '2024-01-11 09:43:43'),
(17, 'Sinta Permatasari', 'sinta02@gmail.com', NULL, '$2y$10$b/ULwRcip.cHNivvN0mRMuiJgRJqlD8/HJxC0EwZAxRSdWqrv/dT2', 'pelamar', '0822134563524', '1', NULL, NULL, '2024-01-24 08:20:40', '2024-01-24 08:21:32'),
(18, 'Lantiur', 'lantiur23@gmail.com', NULL, '$2y$10$QgimPwZYlowOuHdbmknQHuqRXsx4FQosfJ5ytpxMGUPkpuNp1Byfu', 'pelamar', '12345', '1', NULL, NULL, '2024-01-25 01:33:46', '2024-01-25 01:35:06'),
(19, 'Lantiur', 'lantiur25@gmail.com', NULL, '$2y$10$UJERqmLaaRLn6vrovzE/d.1bRBYl0scijs8f7cVv1P5NFw5GfiFYy', 'pelamar', '123456', '0', NULL, NULL, '2024-01-25 03:26:48', '2024-01-25 03:26:48'),
(20, 'Dimas', 'dimas01@gmail.com', NULL, '$2y$10$vKy12XHxPz1sExvjQBdF6ub1KeEfR9cfm88vZUBMIIhZVawjWqGSi', 'pelamar', '12333333', '1', NULL, NULL, '2024-02-19 13:39:23', '2024-02-19 13:40:40'),
(24, 'test', 'ujicoba@gmail.com', NULL, '$2y$10$1p/xuQC6MwTuk2RsiLr0xeAEpBH/dpjj432kwVgaSSC/tCsTDelbW', 'pelamar', '3423423', '1', NULL, NULL, '2024-03-18 04:14:31', '2024-03-18 04:29:50'),
(25, 'testingdata', 'testingdata@gmail.com', NULL, '$2y$10$Ah3sbxR8DAHX1kOOWi7G6uJGn.7RmZqtZtK1FhyfcHZ/4WKG9w5Km', 'pelamar', '65438543685', '1', NULL, NULL, '2024-03-20 11:37:26', '2024-03-20 11:38:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alur`
--
ALTER TABLE `alur`
  ADD PRIMARY KEY (`id_alur`);

--
-- Indexes for table `detail_users`
--
ALTER TABLE `detail_users`
  ADD PRIMARY KEY (`id_detail_users`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_perusahaan`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alur`
--
ALTER TABLE `alur`
  MODIFY `id_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_users`
--
ALTER TABLE `detail_users`
  MODIFY `id_detail_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
