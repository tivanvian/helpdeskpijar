-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 08.50
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `helpdesk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian_departemen`
--

CREATE TABLE IF NOT EXISTS `bagian_departemen` (
  `id_bagian_dept` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bagian_dept` varchar(30) NOT NULL,
  `id_dept` int(11) NOT NULL,
  PRIMARY KEY (`id_bagian_dept`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `bagian_departemen`
--

INSERT INTO `bagian_departemen` (`id_bagian_dept`, `nama_bagian_dept`, `id_dept`) VALUES
(5, 'STIK', 8),
(7, 'WALIKOTA', 8),
(8, 'KECAMATAN', 8),
(9, 'KELURAHAN', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE IF NOT EXISTS `departemen` (
  `id_dept` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dept` varchar(30) NOT NULL,
  PRIMARY KEY (`id_dept`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`id_dept`, `nama_dept`) VALUES
(8, 'DPMPTSP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_feedback`
--

CREATE TABLE IF NOT EXISTS `history_feedback` (
  `id_feedback` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` varchar(13) NOT NULL,
  `feedback` int(11) NOT NULL,
  `reported` varchar(6) NOT NULL,
  PRIMARY KEY (`id_feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE IF NOT EXISTS `informasi` (
  `id_informasi` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `subject` varchar(35) NOT NULL,
  `pesan` text NOT NULL,
  `status` decimal(2,0) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  PRIMARY KEY (`id_informasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `tanggal`, `subject`, `pesan`, `status`, `id_user`) VALUES
(2, '2019-06-24 06:24:09', 'WAJIB MENGISI FEEDBACK', 'FEEDBACK SANGATLAH PENTING GUNA MEMBANTU KAMI DALAM MEMBERIKAN PENILAIAN TERHADAP KINERJA TEKNISI, INI MENYANGKUT DENGAN KEPUASAN ANDA.', 1, 'K0009');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'KASATPEL'),
(2, 'TEKNISI'),
(4, 'CLIENT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `nik` varchar(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nrk` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(10) NOT NULL,
  `id_bagian_dept` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `nrk`, `alamat`, `jk`, `id_bagian_dept`, `id_jabatan`) VALUES
('K0009', 'ALFIAN', '123', 'JL. LAGOA TERUSAN GG. 2 D1 NO.23\r\nJAKARTA UTARA', 'LAKI-LAKI', 5, 2),
('K0010', 'SUDIMAN SYAH WIDODO', '1', 'GABUS', 'LAKI-LAKI', 5, 2),
('K0011', 'ANITA', '2', 'BEKASI TIMUR', 'PEREMPUAN', 5, 2),
('K0012', 'M. ALDI FIRDAUS', '3', 'DEPOK', 'LAKI-LAKI', 5, 2),
('K0013', 'ADITIYA', '4', 'PASEBAN', 'LAKI-LAKI', 5, 2),
('K0014', 'RAVI ZULFIKAR', '5', 'WARAKAS', 'LAKI-LAKI', 5, 2),
('K0015', 'FIQRY FEBRIANDRI', '6', 'BEKASI', 'LAKI-LAKI', 5, 2),
('K0016', 'ADE KOMARUDIN', '7', 'GARUT', 'LAKI-LAKI', 5, 2),
('K0017', 'JODI SETIAWAN', '8', 'CAKUNG', 'LAKI-LAKI', 5, 2),
('K0018', 'OKI SETYO NUGROHO', '9', 'WARAKAS 2', 'LAKI-LAKI', 5, 2),
('K0019', 'ALFIAN 2', '10', 'LAGOA', 'LAKI-LAKI', 5, 2),
('K0020', 'ARIS PANTOYO', '165616', 'DEPOK', 'LAKI-LAKI', 7, 4),
('K0021', 'DIDIT KARYADI', '80', 'JAKARTA', 'LAKI-LAKI', 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(35) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(7, 'JAKARTA UTARA'),
(8, 'JAKARTA SELATAN'),
(9, 'JAKARTA TIMUR'),
(10, 'JAKARTA BARAT'),
(11, 'JAKARTA PUSAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE IF NOT EXISTS `kondisi` (
  `id_kondisi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kondisi` varchar(30) NOT NULL,
  `waktu_respon` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_kondisi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `nama_kondisi`, `waktu_respon`) VALUES
(1, 'MENDESAK', 1),
(2, 'SEGERA', 3),
(3, 'MONITORING', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori`
--

CREATE TABLE IF NOT EXISTS `sub_kategori` (
  `id_sub_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sub_kategori` varchar(35) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id_sub_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `sub_kategori`
--

INSERT INTO `sub_kategori` (`id_sub_kategori`, `nama_sub_kategori`, `id_kategori`) VALUES
(24, 'KOTA ADMINISTRASI JAKARTA PUSAT', 11),
(25, 'KOTA ADMINISTRASI JAKARTA UTARA', 7),
(26, 'KOTA ADMINISTRASI JAKARTA BARAT', 10),
(27, 'KOTA ADMINISTRASI JAKARTA SELATAN', 8),
(28, 'KOTA ADMINISTRASI JAKARTA TIMUR', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi`
--

CREATE TABLE IF NOT EXISTS `teknisi` (
  `id_teknisi` varchar(5) NOT NULL,
  `nik` varchar(5) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `point` decimal(2,0) NOT NULL,
  PRIMARY KEY (`id_teknisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teknisi`
--

INSERT INTO `teknisi` (`id_teknisi`, `nik`, `id_kategori`, `status`, `point`) VALUES
('T0001', 'K0010', 9, '', 0),
('T0002', 'K0011', 9, '', 0),
('T0003', 'K0012', 8, '', 0),
('T0004', 'K0013', 8, '', 0),
('T0005', 'K0014', 7, '', 0),
('T0006', 'K0015', 7, '', 0),
('T0007', 'K0016', 10, '', 0),
('T0008', 'K0017', 10, '', 0),
('T0009', 'K0018', 11, '', 0),
('T0010', 'K0019', 11, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` varchar(13) NOT NULL,
  `tanggal` datetime NOT NULL,
  `tanggal_proses` datetime NOT NULL,
  `tanggal_solved` datetime NOT NULL,
  `reported` varchar(6) NOT NULL,
  `id_sub_kategori` int(11) NOT NULL,
  `problem_summary` varchar(50) NOT NULL,
  `problem_detail` text NOT NULL,
  `id_teknisi` varchar(5) NOT NULL,
  `status` int(11) NOT NULL,
  `progress` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking`
--

CREATE TABLE IF NOT EXISTS `tracking` (
  `id_tracking` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` varchar(13) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` varchar(6) NOT NULL,
  PRIMARY KEY (`id_tracking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(5) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(7, 'K0009', '202cb962ac59075b964b07152d234b70', 'ADMIN'),
(27, 'K0010', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(28, 'K0011', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(29, 'K0012', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(30, 'K0013', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(31, 'K0014', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(32, 'K0015', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(33, 'K0016', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(34, 'K0017', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(35, 'K0018', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(36, 'K0019', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(37, 'K0020', '202cb962ac59075b964b07152d234b70', 'USER'),
(38, 'K0021', '202cb962ac59075b964b07152d234b70', 'KASATPEL');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
