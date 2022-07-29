-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2022 pada 06.02
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k3v0_admin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id_about` bigint(20) UNSIGNED NOT NULL,
  `about_aplikasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_lab` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `about_aplikasi`, `about_lab`, `created_at`, `updated_at`) VALUES
(1, '<p>Dalam <i>melakukan</i> pembangunan diperlukan beberapa faktor yang meunjang seperti faktor modal, alam, dan tenaga kerja. Ketiga faktor tersebut merupakan hal yang sangat penting yang tidak dapat dipisahkan satu sama lainnya. Dari ketiga faktor tersebut, faktor tenaga kerja merupakan peranan yang tidak kalah pentingnya dibanding faktor penunjang lainnya. Hal ini didukung oleh jumlah penduduk yang sangat besar, merupakan salah satu modal yang sangat penting.<br>Mengingat faktor tenaga kerja dalam proses pembangunan ini harus diperhatikan. Oleh karena itu, diperlukan usaha-usaha untuk membina, mengarahkan serta perlindungan bagi tenaga kerja untuk menciptakan kesejahteraan yang berkaitan dngan yang dilakukannya.<br>Pada dasarnya perlindungan bagi tenaga kerja dimaksudkan untuk menjaga agar tenaga kerja menjadi lebih dimanusiakan. Para tenaga kerja mendapatkan kesempataln utuk melaksanakan berbagai tugas dan kewajiban sosialnya, dapat mengembangkan potensi dirinya, sehingga pada gilirannya dapat meningkat kualitas hidup dan keranya dapat hidup layak sebagai manusia.</p>', '<p><strong>Tentang</strong><i><strong> </strong></i>labbbbbbbbbbbbbbbbbbbb</p>', '2022-06-18 01:27:51', '2022-07-28 06:20:09'),
(2, 'Tentang Aplikasi', 'Tentang Lab', '2022-06-22 07:22:36', '2022-06-22 07:22:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bab`
--

CREATE TABLE `bab` (
  `id_bab` bigint(20) UNSIGNED NOT NULL,
  `nama_bab` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_materi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bab`
--

INSERT INTO `bab` (`id_bab`, `nama_bab`, `isi_materi`, `created_at`, `updated_at`) VALUES
(1, 'BAB I', '1655541912.pdf', '2022-06-18 01:45:12', '2022-06-18 01:45:12'),
(2, 'BAB II', '1656038463.pdf', '2022-06-23 19:41:03', '2022-06-23 19:41:03'),
(3, 'BAB III', '1656038475.pdf', '2022-06-23 19:41:15', '2022-06-23 19:41:15'),
(4, 'BAB IV', '1656038507.pdf', '2022-06-23 19:41:47', '2022-06-23 19:41:47'),
(5, 'BAB V', '1656038524.pdf', '2022-06-23 19:42:04', '2022-06-23 19:42:04'),
(6, 'BAB VI', '1656038543.pdf', '2022-06-23 19:42:23', '2022-06-23 19:42:23'),
(7, 'BAB VII', '1656038563.pdf', '2022-06-23 19:42:43', '2022-06-23 19:42:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dokumentasi` bigint(20) UNSIGNED NOT NULL,
  `dokumentasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `introduction`
--

CREATE TABLE `introduction` (
  `id_introduction` bigint(20) UNSIGNED NOT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `introduction`
--

INSERT INTO `introduction` (`id_introduction`, `introduction`, `created_at`, `updated_at`) VALUES
(1, 'K3V0 merupakan aplikasi yang ditujukan kepada siswa SMK untuk mendapatkan informasi K3 secara mudah guna mengimplementasikan K3 saat di lab dan magang industri.', '2022-06-18 01:27:51', '2022-06-18 01:27:51'),
(2, 'K3V0 merupakan aplikasi yang ditujukan kepada siswa SMK untuk mendapatkan informasi K3 secara mudah guna mengimplementasikan K3 saat di lab dan magang industri.', '2022-06-22 07:22:36', '2022-06-22 07:22:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_05_24_042004_create_introduction_table', 1),
(10, '2022_05_24_042537_create_about_table', 1),
(11, '2022_05_29_162414_create_bab_table', 1),
(12, '2022_06_04_072453_create_soal_table', 1),
(13, '2022_06_05_041803_alter_bab_table', 1),
(14, '2022_06_05_050252_create_dokumentasi_table', 1),
(15, '2022_06_05_050347_alter_dokumentasi_table', 1),
(16, '2022_06_05_075349_add_field_level_users_table', 1),
(17, '2022_07_28_142210_add_field_nilai_soal_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0968d23e26b53689b985ea6a07bf07d440af3447b7a1321ad28da46af47af2a9ec30e72746293f46', 1, 1, 'authToken', '[]', 1, '2022-06-18 22:07:46', '2022-06-18 22:07:46', '2023-06-19 05:07:46'),
('0ce8c1c8c9d488458c1665e20db511ed684307bc236ccca830092aadd02c653beba7988bf5a32a7a', 1, 1, 'authToken', '[]', 0, '2022-06-18 09:59:15', '2022-06-18 09:59:15', '2023-06-18 16:59:15'),
('0d36d240b6d81dd2edab871d708f69ca11c7fb0bd3e8de9e7d7439361f7e2d0ebc28afeea52096d0', 1, 1, 'authToken', '[]', 0, '2022-06-22 07:09:44', '2022-06-22 07:09:44', '2023-06-22 14:09:44'),
('11b3b4ab16944cc9578f93cb0259b91670598be7f6353b80676730ae50cb86abd04cd857e64e95ea', 1, 1, 'authToken', '[]', 1, '2022-06-18 21:17:04', '2022-06-18 21:17:04', '2023-06-19 04:17:04'),
('11f431b07177c6c000b5ca81616bfa1e6d81c0c4e40dc6a5f8bc01809f0d14b8c8863e006e0674fa', 1, 1, 'authToken', '[]', 1, '2022-06-18 07:08:55', '2022-06-18 07:08:55', '2023-06-18 14:08:55'),
('138842a79d4253f59c5a39423909783900fdf67259576a70d5f17ab1207048a586d5968ae793bb55', 6, 1, 'authToken', '[]', 0, '2022-06-26 21:12:20', '2022-06-26 21:12:20', '2023-06-27 04:12:20'),
('144cc2d464f3e89c9caa5176ac3518a326f3c8624409034c95a8f61a6855890c07440b2005212c80', 1, 1, 'authToken', '[]', 0, '2022-06-18 07:30:37', '2022-06-18 07:30:37', '2023-06-18 14:30:37'),
('14abe9be1d2d4e1931dea5018de8748252347962b44ff6ae4baf6bc57f4968d5eeb0adf3ff6dace3', 6, 1, 'authToken', '[]', 1, '2022-07-28 06:19:28', '2022-07-28 06:19:28', '2023-07-28 13:19:28'),
('1962509cd7769e8fcb73a75e96e4c8c9b1ea0986db6e0ad3ad4f52f18aba524bafd84fb3c4c47a1c', 1, 1, 'authToken', '[]', 0, '2022-06-18 22:03:55', '2022-06-18 22:03:55', '2023-06-19 05:03:55'),
('1aa1c130d34fa8cf708486478c36dd9b71b3f28c95fdb59a98c72f04549e87f263ccfe9d4f9d05e4', 6, 1, 'authToken', '[]', 0, '2022-07-28 19:16:14', '2022-07-28 19:16:14', '2023-07-29 02:16:14'),
('1bb49a132422b227060743ff2598446087c806634c9c5e5d378860533bad87cde45f286525815db0', 1, 1, 'authToken', '[]', 0, '2022-06-18 01:35:41', '2022-06-18 01:35:41', '2023-06-18 08:35:41'),
('1bca851e2c3d657a98c98a524132d3bc4357e788ee98b45a5d6ec95149df66081fd8ac96ffd68cc1', 6, 1, 'authToken', '[]', 0, '2022-06-22 07:23:22', '2022-06-22 07:23:22', '2023-06-22 14:23:22'),
('22f651ac29725bae4f252fa37678e42d7d1f6e75d3d21713edf09b373305f33a1e9fbea3b20d422e', 6, 1, 'authToken', '[]', 1, '2022-06-26 18:59:15', '2022-06-26 18:59:15', '2023-06-27 01:59:15'),
('23dbdcd6ba5976ff60ce98fc7ff4ac2250330c3a44ae0e7fdee4839e9db9d76fc53ae4be9c474584', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:06:58', '2022-06-26 20:06:58', '2023-06-27 03:06:58'),
('2b444c04b2304e2c46c3ffc50b6c103be6399d6a0069de163c7ec3e6bd2231e8b610d91a496a1ce8', 6, 1, 'authToken', '[]', 0, '2022-07-16 23:32:29', '2022-07-16 23:32:29', '2023-07-17 06:32:29'),
('2c6227bfbef8477579a76622200c3c35d69a343a55d5758cd46aa28891c585d62e8c0b9de8e48fb8', 1, 1, 'authToken', '[]', 0, '2022-06-18 07:45:16', '2022-06-18 07:45:16', '2023-06-18 14:45:16'),
('2f1664fca04e6240014678ef747036690027d7c82a61f90f50f7bf62f75b816d1c6a32012fb4d0d4', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:53:12', '2022-06-26 20:53:12', '2023-06-27 03:53:12'),
('33fdffa9a018d16fb22f956b1e113da7f36ce16d7877eeca7c9330554ada09884308efff06267d8b', 1, 1, 'authToken', '[]', 0, '2022-06-18 09:23:27', '2022-06-18 09:23:27', '2023-06-18 16:23:27'),
('3dd66f3c1ef74650dfd0c0fe34fa6b7da44d94db78ae9ca8ceeea0a03210d8d886d1c96a505697bf', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:34:32', '2022-06-26 20:34:32', '2023-06-27 03:34:32'),
('413af7f174290d4ec10521f42f2aab6778fc2a6f5e0a797f72a62c03c5a93310725d96fbcbdd7270', 6, 1, 'authToken', '[]', 1, '2022-06-23 06:30:06', '2022-06-23 06:30:06', '2023-06-23 13:30:06'),
('49f227accc4162485aa28866b2ae0607cb1250c9afcd879cab786fd8aba8417ee362dc9094e6ad34', 1, 1, 'authToken', '[]', 0, '2022-06-22 05:52:25', '2022-06-22 05:52:25', '2023-06-22 12:52:25'),
('53ac95548bb4afd2b646c80902ef5372bce90f15a5f99fdc50b441bc27d9ea8e5c9666c4e22ade66', 6, 1, 'authToken', '[]', 0, '2022-06-23 03:13:39', '2022-06-23 03:13:39', '2023-06-23 10:13:39'),
('55ef43b9bb03ef1ecddd57dc493d92587588c01b1ed4051af70126b547c3b1f9e4b8170085fed253', 6, 1, 'authToken', '[]', 1, '2022-06-23 20:12:13', '2022-06-23 20:12:13', '2023-06-24 03:12:13'),
('5639b6e78735fdaab68444a3230e08ba637922ca6d3fe2a4d41b9b6f5cc2d86c840c4242210b730f', 6, 1, 'authToken', '[]', 0, '2022-06-23 20:01:19', '2022-06-23 20:01:19', '2023-06-24 03:01:19'),
('588fbefd012eca233c85523de8841319ac4960a1ed3324126c06eacd3dabf033f60c06264d362504', 6, 1, 'authToken', '[]', 0, '2022-07-03 23:37:27', '2022-07-03 23:37:27', '2023-07-04 06:37:27'),
('5df42a2d4d9b1a275f2056bfacd93cb8f85783ebfec31d03c13cda4c8248b762747054d7ee412277', 1, 1, 'authToken', '[]', 1, '2022-06-18 07:44:30', '2022-06-18 07:44:30', '2023-06-18 14:44:30'),
('72cfa6e71e5b097cf69512d4e22de2853cb290150456a654287659ac881e8457e9bf3a837e65ec0a', 6, 1, 'authToken', '[]', 1, '2022-06-23 20:02:19', '2022-06-23 20:02:19', '2023-06-24 03:02:19'),
('736840fff824276f92fe4daa84c3c6cac67b16b038593df909907dff4cd219e9546b264f57d84009', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:39:47', '2022-06-26 20:39:47', '2023-06-27 03:39:47'),
('766b896b5e99b31a77bc5d9d74e828eeb029447bc8a613f0d4a9eb6ba0b25b91f6fbf6e1a3d07257', 6, 1, 'authToken', '[]', 0, '2022-07-14 20:17:17', '2022-07-14 20:17:17', '2023-07-15 03:17:17'),
('7a1bdf87d2fb998e704fccb655ba365d79eb7c591a521ee6e11333a2f3bde9dd34ba23229d374530', 6, 1, 'authToken', '[]', 1, '2022-06-26 23:37:09', '2022-06-26 23:37:09', '2023-06-27 06:37:09'),
('7c6235ce927791c7fd7b65fcb17d66be0201f3eb88f2efce5a1083ac523aea4a30df3d7f35e2cc58', 6, 1, 'authToken', '[]', 0, '2022-07-24 08:34:06', '2022-07-24 08:34:06', '2023-07-24 15:34:06'),
('7d531f267bfc8f89b4bec8f2d87f740dac318bfa6ff3a5637cf745247c8a637e8bb9dd734e28ddf8', 1, 1, 'authToken', '[]', 1, '2022-06-18 07:10:51', '2022-06-18 07:10:51', '2023-06-18 14:10:51'),
('7e36f9a4a71c80c951ada97e3d43e1b3659fbcd473bf2eb004c107f5510bc51d07ff68801d9e1b0e', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:52:47', '2022-06-26 20:52:47', '2023-06-27 03:52:47'),
('845b79a96c56888ea848f56f74fa308845f8e5e5333fabfdf8b906887244a7d4f88cdda092566518', 1, 1, 'authToken', '[]', 0, '2022-06-18 09:19:42', '2022-06-18 09:19:42', '2023-06-18 16:19:42'),
('8838dfc72b0436d161ef54e4b897e7074318aa686b59b4608c3b0a62a1a7bfe9dab40ac1dad2b6f9', 1, 1, 'authToken', '[]', 1, '2022-06-18 09:52:12', '2022-06-18 09:52:12', '2023-06-18 16:52:12'),
('89385892b8bf9ef0de76761ec375433727f96ba49056c6812cb73a360795d54ae0bde2d6f6caf2e2', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:43:20', '2022-06-26 20:43:20', '2023-06-27 03:43:20'),
('8e2a29592274812ad72ad940a6fb1ae05ac30194175d07a402a5599d0f5c424226eb8cc9a44f9e3c', 6, 1, 'authToken', '[]', 1, '2022-06-26 19:32:40', '2022-06-26 19:32:40', '2023-06-27 02:32:40'),
('a4beaaf6b22e02ecfd05d118eaecc6b93d5e2b4b9c3eb27c5a20c4097621efb20c995cbfcaec2b6b', 6, 1, 'authToken', '[]', 0, '2022-06-22 07:43:35', '2022-06-22 07:43:35', '2023-06-22 14:43:35'),
('a984651f84d3159bfc4f45420260ac89305cd3476126c3eeae9b17ee2f3cd8139e23af45b7ed8942', 1, 1, 'authToken', '[]', 0, '2022-06-18 07:02:19', '2022-06-18 07:02:19', '2023-06-18 14:02:19'),
('a9ff4e9b48a56280561704aa33321cc73e8a2e600b1697a9931188c9d822b60de7028c5d18d275a1', 1, 1, 'authToken', '[]', 0, '2022-06-18 07:31:24', '2022-06-18 07:31:24', '2023-06-18 14:31:24'),
('abe9f310c3000ff1ed9673cf8a1f95fe24095886fff92a4eeee8f8bd94d38e80cbcee0f904c7898c', 6, 1, 'authToken', '[]', 0, '2022-06-26 23:41:34', '2022-06-26 23:41:34', '2023-06-27 06:41:34'),
('ae475da3a6c57dc4d62a92fed14ee7f4349e7b27ab16c91cef43bae08843abe4111ac1e14a83d753', 6, 1, 'authToken', '[]', 0, '2022-06-23 20:04:53', '2022-06-23 20:04:53', '2023-06-24 03:04:53'),
('afade6533ddfcc2ade5f9b7667622b21e5402c87b6f127212699f5bdfc7792febf23750541d8a504', 6, 1, 'authToken', '[]', 0, '2022-06-23 03:34:38', '2022-06-23 03:34:38', '2023-06-23 10:34:38'),
('b163be3d2e61e15e4ba5606976d9133482fafda775c97b2789a6a8e5f8931585e44b9be736fa1f3f', 1, 1, 'authToken', '[]', 1, '2022-06-18 07:09:50', '2022-06-18 07:09:50', '2023-06-18 14:09:50'),
('b5e9ca398ba8c278cd695b27c64ca524d61d74d6e448028d5eb13bac6af5b552f79e0bd533842059', 6, 1, 'authToken', '[]', 0, '2022-07-13 02:27:32', '2022-07-13 02:27:32', '2023-07-13 09:27:32'),
('bbd5be136f6c48d2f57894631ab3805400d410a287812c6927e89bca44768875b399a554cb9ff4cf', 6, 1, 'authToken', '[]', 0, '2022-06-23 21:31:27', '2022-06-23 21:31:27', '2023-06-24 04:31:27'),
('becd30907a73d02c385aa9375038cf6e156bfd854cdc7942978b7bad50e6258b628d77fd45cce306', 1, 1, 'authToken', '[]', 1, '2022-06-18 07:37:56', '2022-06-18 07:37:56', '2023-06-18 14:37:56'),
('bf5535ca4e8e0e09d05254737001b76e8342e2ad6cef3ded7f182326234c930b3f5130abaf74f822', 1, 1, 'authToken', '[]', 0, '2022-06-18 01:57:46', '2022-06-18 01:57:46', '2023-06-18 08:57:46'),
('c5de949730f2593c575f9b6a406ff8e6762677b9f231ce2aaab85b33e347d0fa30ada5aca5d9aec4', 6, 1, 'authToken', '[]', 1, '2022-06-26 23:26:53', '2022-06-26 23:26:53', '2023-06-27 06:26:53'),
('cf6e6a4791cd9416022eb41f9796c20f1b16b1c5c6c1c335ba35270fa459087ef1997fce9beac85a', 6, 1, 'authToken', '[]', 1, '2022-06-23 19:43:29', '2022-06-23 19:43:29', '2023-06-24 02:43:29'),
('d2a386c33941fb13c923a059bfe6aa8775b0871178f0c9cd735b4aea7265c8a58cf2b55b9ae0c215', 1, 1, 'authToken', '[]', 0, '2022-06-18 22:17:11', '2022-06-18 22:17:11', '2023-06-19 05:17:11'),
('d3eb6e17eb97c063460f2256346999909d7e2aefa87dd7c37dd09a2facc267910ad2f7cb18d4a067', 1, 1, 'authToken', '[]', 0, '2022-06-22 05:30:24', '2022-06-22 05:30:24', '2023-06-22 12:30:24'),
('d5210e81643da6a49052c54f0b46076b168a823a54ca24f56fa0a8cdcc7b241ea4366cc03686d8aa', 6, 1, 'authToken', '[]', 1, '2022-06-26 19:27:12', '2022-06-26 19:27:12', '2023-06-27 02:27:12'),
('dbbc3a40319c8ce7e54faebebfaec9edc31a086e6e8750443388b043fccbd452ff7eb14fd46cec7b', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:36:39', '2022-06-26 20:36:39', '2023-06-27 03:36:39'),
('ddf48ce5f646a97122184989f2c431c05d46793f657b8a0e38a7e7292ba371d780ba0b4ac6cd44f5', 3, 1, 'authToken', '[]', 0, '2022-06-22 07:18:39', '2022-06-22 07:18:39', '2023-06-22 14:18:39'),
('e4206ace439a5b4158fc22b77cf61c84c64b27d5186fc6406873015528c532f0285143c21ab1e3af', 6, 1, 'authToken', '[]', 0, '2022-07-15 02:17:39', '2022-07-15 02:17:39', '2023-07-15 09:17:39'),
('ea984c601f8e6667a1735ddd26e10e5599e0af34c77347a418a2072fec673904a6674d38271eba83', 1, 1, 'authToken', '[]', 0, '2022-06-18 01:36:20', '2022-06-18 01:36:20', '2023-06-18 08:36:20'),
('eeb503516bf957dfd74631a1f17c76e5e85263308ed4197ecfab1377ef2bab407efc63ab38b636c6', 6, 1, 'authToken', '[]', 0, '2022-07-28 08:14:30', '2022-07-28 08:14:30', '2023-07-28 15:14:30'),
('eec715e64dddfdbce169a683f935c562a6f580e547df31a997f3f5c13781b0c60f930af4e096d5e8', 6, 1, 'authToken', '[]', 1, '2022-06-26 20:38:51', '2022-06-26 20:38:51', '2023-06-27 03:38:51'),
('fa4364e61c3b5ccf18b929a5499d84fcb2fb62d821a4cf6f9edd9e47bc7c368645603d1f9610b0d3', 6, 1, 'authToken', '[]', 1, '2022-06-26 23:16:58', '2022-06-26 23:16:58', '2023-06-27 06:16:58'),
('fbb35d93648069080bad80fbb29d84e95eb56148cef85714498267e42048ce3f8f4d9cb3e7e2da53', 6, 1, 'authToken', '[]', 0, '2022-06-26 19:20:15', '2022-06-26 19:20:15', '2023-06-27 02:20:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'GSZAcF1fYCm28UNsJjpLCfah7SaFAqahBJum3Bst', NULL, 'http://localhost', 1, 0, 0, '2022-06-18 01:35:37', '2022-06-18 01:35:37'),
(2, NULL, 'Laravel Password Grant Client', 'Iw5CWfy3GL88Q6QOocxFBa1WjsWaGvbuyRoR0BK4', 'users', 'http://localhost', 0, 1, 0, '2022-06-18 01:35:37', '2022-06-18 01:35:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-18 01:35:37', '2022-06-18 01:35:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` bigint(20) UNSIGNED NOT NULL,
  `id_bab` bigint(20) UNSIGNED NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kunci_jawaban` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `A` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `B` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `C` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `D` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_bab`, `soal`, `kunci_jawaban`, `A`, `B`, `C`, `D`, `created_at`, `updated_at`) VALUES
(1, 4, '<p>Apakah ini??</p>', 'A', 'a', 'b', 'd', 'c', '2022-07-28 07:28:59', '2022-07-28 07:28:59'),
(2, 4, '<p>A</p>', 'A', '1', '2', '3', '4', '2022-07-28 07:29:38', '2022-07-28 07:29:38'),
(3, 4, '<p>B</p>', 'B', '1', '2', '3', '4', '2022-07-28 07:29:49', '2022-07-28 07:29:49'),
(4, 4, '<p>C</p>', 'D', '1', '2', '3', '4', '2022-07-28 07:30:02', '2022-07-28 07:30:02'),
(5, 4, '<p>E</p>', 'C', '1', '2', '3', '4', '2022-07-28 07:30:18', '2022-07-28 07:30:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auth'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$mw3EivjTnYyX3EA.hqQiKudAqfFjLE/5zmePVJ.7AYY77ueAFxsiS', NULL, NULL, '2022-06-26 23:25:39', 'admin'),
(14, 'user', 'user@gmail.com', NULL, '$2y$10$XlwwxeBaiLE7/cexNk.ZjO3IRXtpkJgPLgQjhga0Oo45/B87dGk8q', NULL, '2022-07-24 08:36:14', '2022-07-24 08:37:11', 'auth');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `bab`
--
ALTER TABLE `bab`
  ADD PRIMARY KEY (`id_bab`);

--
-- Indeks untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `introduction`
--
ALTER TABLE `introduction`
  ADD PRIMARY KEY (`id_introduction`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `soal_id_bab_foreign` (`id_bab`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id_about` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bab`
--
ALTER TABLE `bab`
  MODIFY `id_bab` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dokumentasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `introduction`
--
ALTER TABLE `introduction`
  MODIFY `id_introduction` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_id_bab_foreign` FOREIGN KEY (`id_bab`) REFERENCES `bab` (`id_bab`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
