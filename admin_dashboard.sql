-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Mar 2021 pada 22.33
-- Versi server: 5.7.17-log
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_dashboard`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(4) NOT NULL,
  `id_parent` int(4) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `iconCls` varchar(50) DEFAULT NULL,
  `rowCls` varchar(50) DEFAULT NULL,
  `viewType` varchar(50) DEFAULT NULL,
  `routeId` varchar(50) DEFAULT NULL,
  `sequence` int(4) NOT NULL DEFAULT '0',
  `leaf` int(1) NOT NULL DEFAULT '0' COMMENT '0: memiliki submenu; 1: tidak memiliki submenu'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `id_parent`, `text`, `iconCls`, `rowCls`, `viewType`, `routeId`, `sequence`, `leaf`) VALUES
(1, 0, 'Halaman Utama', 'x-fa fa-desktop', 'nav-tree-badge nav-tree-badge-new', 'admindashboard', 'dashboard', 1, 1),
(2, 0, 'Kotak Surat', 'x-fa fa-paper-plane', 'nav-tree-badge nav-tree-badge-hot', 'email', NULL, 2, 1),
(3, 0, 'Profile', 'x-fa fa-user', NULL, 'profile', NULL, 3, 1),
(4, 0, 'Search results', 'x-fa fa-search', NULL, 'searchresults', NULL, 4, 1),
(5, 0, 'FAQ', 'x-fa fa-question', NULL, 'faq', NULL, 5, 1),
(6, 0, 'Pages', 'x-fab fa-leanpub', NULL, NULL, NULL, 6, 0),
(7, 6, 'Blank Page', 'x-fa fa-file', NULL, 'pageblank', NULL, 1, 1),
(8, 6, '404 Error', 'x-fa fa-exclamation-triangle', NULL, 'page404', NULL, 2, 1),
(9, 6, '500 Error', 'x-fa fa-times-circle', NULL, 'page500', NULL, 3, 1),
(10, 6, 'Lock Screen', 'x-fa fa-lock', NULL, 'lockscreen', NULL, 4, 1),
(11, 6, 'Login', 'x-fa fa-check', NULL, 'login', NULL, 5, 1),
(12, 6, 'Register', 'x-fa fa-edit', NULL, 'register', NULL, 6, 1),
(13, 6, 'Password Reset', 'x-fa fa-lightbulb', NULL, 'passwordreset', NULL, 7, 1),
(14, 0, 'Widgets', 'x-fa fa-flask', NULL, 'widgets', NULL, 7, 1),
(15, 0, 'Forms', 'x-fa fa-edit', NULL, 'forms', NULL, 8, 1),
(16, 0, 'Charts', 'x-fa fa-chart-pie', NULL, 'charts', NULL, 9, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
