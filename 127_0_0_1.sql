-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2024 pada 04.52
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `is62_cp`
--
CREATE DATABASE IF NOT EXISTS `is62_cp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `is62_cp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_biodata`
--

CREATE TABLE `tb_biodata` (
  `id_bio` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_biodata`
--

INSERT INTO `tb_biodata` (`id_bio`, `nama`, `tempat`, `tanggal`, `email`, `hp`, `agama`, `jk`, `foto`) VALUES
(1, 'cut putri efrina', 'Lhokseumawe', '2024-11-13', 'cutputri@gmail.com', '0856329874', 'Islam', 'Perempuan', '1.png'),
(2, '', '', '0000-00-00', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `nm_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `kode`, `nm_jurusan`) VALUES
(1, 'ik', 'informatika komputer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_biodata`
--
ALTER TABLE `tb_biodata`
  ADD PRIMARY KEY (`id_bio`),
  ADD UNIQUE KEY `hp` (`hp`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_biodata`
--
ALTER TABLE `tb_biodata`
  MODIFY `id_bio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"uts_cutputriefrina\",\"table\":\"tb_pesanan\"},{\"db\":\"project_is62\",\"table\":\"jurusans\"},{\"db\":\"quiz1_cutputriefrina\",\"table\":\"tb_dosen\"},{\"db\":\"is62_cp\",\"table\":\"tb_biodata\"},{\"db\":\"is62_cp\",\"table\":\"tb_jurusan\"},{\"db\":\"ujian\",\"table\":\"pasien\"},{\"db\":\"ujian\",\"table\":\"berobat\"},{\"db\":\"ujian\",\"table\":\"poli\"},{\"db\":\"ujian\",\"table\":\"dokter\"},{\"db\":\"ujikom\",\"table\":\"berobat\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ujikom', 'pasien', '{\"sorted_col\":\"`pasien`.`PasienKlinik_ID` ASC\"}', '2024-09-29 03:32:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-11-23 02:06:21', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":183}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project_is62`
--
CREATE DATABASE IF NOT EXISTS `project_is62` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project_is62`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` int(10) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `kode`, `jurusan`) VALUES
(1, 'IK', 'Engineering Informatic'),
(3, 'KA', 'Komputer Akuntansi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `quiz1_cutputriefrina`
--
CREATE DATABASE IF NOT EXISTS `quiz1_cutputriefrina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quiz1_cutputriefrina`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `rumpun` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`id`, `nidn`, `nama_lengkap`, `rumpun`, `tempat_lahir`, `tgl_lahir`, `email`) VALUES
(1, '11022255455252', 'cutputri', 'komputer', 'lhok', '2024-11-19', 'cutputri@gmail.com'),
(4, '10254552555', 'cutputri', 'komputer', 'lhok', '2024-11-21', 'cutputri@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ujian`
--
CREATE DATABASE IF NOT EXISTS `ujian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ujian`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berobat`
--

CREATE TABLE `berobat` (
  `No_Transaksi` varchar(10) NOT NULL,
  `PasienKlinik_ID` varchar(10) NOT NULL,
  `Dokter_ID` varchar(10) NOT NULL,
  `Keluhan_Pasien` text NOT NULL,
  `Biaya_Adm` decimal(10,2) NOT NULL,
  `Tanggal` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berobat`
--

INSERT INTO `berobat` (`No_Transaksi`, `PasienKlinik_ID`, `Dokter_ID`, `Keluhan_Pasien`, `Biaya_Adm`, `Tanggal`) VALUES
('TR002', '', '', 'Telinga', '200000.00', '2024-09-29 15:02:38'),
('TR005', '', '', 'Telinga', '200000.00', '2024-09-29 15:05:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `Dokter_ID` varchar(5) NOT NULL,
  `Nama_Dokter` varchar(100) NOT NULL,
  `Poli_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`Dokter_ID`, `Nama_Dokter`, `Poli_ID`) VALUES
('', 'dr. Enra', 'P001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `PasienKlinik_ID` varchar(10) NOT NULL,
  `Nama_PasienKlinik` varchar(100) NOT NULL,
  `Tanggal_LahirPasien` date NOT NULL,
  `Jenis_KelaminPasien` enum('L','P') NOT NULL,
  `Alamat_Pasien` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`PasienKlinik_ID`, `Nama_PasienKlinik`, `Tanggal_LahirPasien`, `Jenis_KelaminPasien`, `Alamat_Pasien`) VALUES
('', 'Barata Yuda', '2024-09-29', 'L', 'lamujong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `Poli_ID` varchar(10) NOT NULL,
  `Nama_Poli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`Poli_ID`, `Nama_Poli`) VALUES
('P001', 'Gigi'),
('P002', 'Umum'),
('P003', 'THT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`No_Transaksi`),
  ADD KEY `PasienKlinik_ID` (`PasienKlinik_ID`),
  ADD KEY `Dokter_ID` (`Dokter_ID`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`Dokter_ID`),
  ADD KEY `Poli_ID` (`Poli_ID`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`PasienKlinik_ID`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`Poli_ID`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD CONSTRAINT `berobat_ibfk_1` FOREIGN KEY (`PasienKlinik_ID`) REFERENCES `pasien` (`PasienKlinik_ID`),
  ADD CONSTRAINT `berobat_ibfk_2` FOREIGN KEY (`Dokter_ID`) REFERENCES `dokter` (`Dokter_ID`);

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`Poli_ID`) REFERENCES `poli` (`Poli_ID`);
--
-- Database: `ujikom`
--
CREATE DATABASE IF NOT EXISTS `ujikom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ujikom`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `Dokter_ID` int(11) NOT NULL,
  `Nama_Dokter` varchar(100) NOT NULL,
  `Poli_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`Dokter_ID`, `Nama_Dokter`, `Poli_ID`) VALUES
(1, 'dr. Enra', 1),
(2, 'dr. Rudy', 3),
(3, 'dr. Joko', 4),
(4, 'dr. Ratna', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `PasienKlinik_ID` int(11) NOT NULL,
  `Nama_PasienKlinik` varchar(50) NOT NULL,
  `Tanggal_LahirPasien` date NOT NULL,
  `Jenis_KelaminPasien` varchar(20) NOT NULL,
  `Alamat_Pasien` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`PasienKlinik_ID`, `Nama_PasienKlinik`, `Tanggal_LahirPasien`, `Jenis_KelaminPasien`, `Alamat_Pasien`) VALUES
(1, 'Barata Yuda', '2014-06-03', 'Laki-laki', 'ulee kareng'),
(2, 'Indah Susanti', '2004-06-02', 'Perempuan', 'Doy'),
(3, 'Kurniawan', '2014-01-29', 'L', 'Lambhuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `Poli_ID` int(11) NOT NULL,
  `Nama_Poli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`Poli_ID`, `Nama_Poli`) VALUES
(1, 'Gigi'),
(3, 'Umum'),
(4, 'THT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`Dokter_ID`),
  ADD KEY `Poli_ID` (`Poli_ID`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`PasienKlinik_ID`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`Poli_ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `Dokter_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `PasienKlinik_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `Poli_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`Poli_ID`) REFERENCES `poli` (`Poli_ID`);
--
-- Database: `uts_cutputriefrina`
--
CREATE DATABASE IF NOT EXISTS `uts_cutputriefrina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uts_cutputriefrina`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `produk` varchar(50) NOT NULL,
  `jumlah` int(1) NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id_pesanan`, `nm_pelanggan`, `produk`, `jumlah`, `tgl_pesan`) VALUES
(2, 'cut putri', 'aqua', 3, '2024-11-23'),
(4, 'rira', 'aqua', 1, '2024-11-06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
