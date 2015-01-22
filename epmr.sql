-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2015 at 01:18 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epmr`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
`iddokter` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT '0',
  `lokasi` varchar(100) DEFAULT '0',
  `telepon` varchar(100) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`iddokter`, `nama`, `lokasi`, `telepon`) VALUES
(1, 'Harry Rayadi, MARS., AV', 'Kimia Farma 356', '61012507'),
(2, 'Yuhana P. Mukhlis, SpA.', 'Kimia Farma 356', '7319311'),
(3, 'Indrarini, Sp.KK.', 'Jl. Gajah No 1 Palasari', '7303850'),
(4, 'Vera Nurmawati, dr', 'Kimia Farma 356', '7319311'),
(5, 'David Rahmadi, drg', 'Kimia Farma 356', '7319311'),
(6, 'Gracia Richata, drg', 'Kimia Farma 356', '7319311'),
(7, 'Elfira Megasari, drg', 'Kimia Farma 356', '7319311'),
(8, 'Fahmi Halimi, Sp. THT.', 'RSMB', '');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE IF NOT EXISTS `kunjungan` (
`id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `tipe` varchar(20) DEFAULT '. . .',
  `dokter` varchar(50) DEFAULT '. . .',
  `obat` varchar(500) DEFAULT '. . .',
  `idpas` int(11) DEFAULT '0',
  `info_dokter` varchar(100) DEFAULT '. . .',
  `khasiat_obat` varchar(100) DEFAULT '. . .',
  `keterangan_resep` varchar(100) DEFAULT '. . .',
  `penyimpanan_obat` varchar(100) DEFAULT '. . .',
  `interaksi_obat` varchar(100) DEFAULT '. . .'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=283 ;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id`, `tanggal`, `tipe`, `dokter`, `obat`, `idpas`, `info_dokter`, `khasiat_obat`, `keterangan_resep`, `penyimpanan_obat`, `interaksi_obat`) VALUES
(5, '2014-05-07', 'Resep', 'Fahmi Halimi, Sp.THT', 'R/<div>Vestein cap No XII</div><div>s2dd1</div><div><br></div><div>R/</div><div>Allerin expect no I</div><div>s2ddcth1</div><div><br></div><div>R/</div><div>Seloxy No X</div><div>s1dd1</div>', 5, 'Flu batuk', 'alergi, batuk, antioksidan', 'diambil semua', 'suhu kamar', ''),
(6, '2014-05-14', 'Resep', 'Indrarini, Sp.KK', 'R/<div>Medixon tab no XX</div><div>s2dd2</div><div><br></div><div>R/</div><div>Telfast HD</div><div>s1dd1 malam</div><div><br></div><div>R/ Digenta cr tb I</div><div>sue</div>', 6, '', 'antiradang, antialergi', 'diambil semua', 'suhu kamar', ''),
(7, '2014-05-16', 'Resep', 'Indrarini, Sp.KK', 'R/ Prolic 150 No XXX<div>s2dd1</div>', 7, '', 'antibiotik', 'diambil semua', 'suhu kamar', ''),
(8, '2014-05-19', 'Resep', 'Indrarini, Sp.KK', 'R/ Prolic 150 no XX<div>s2dd1</div><div><br></div><div>R/ Digenta cr tb I</div><div>sue</div>', 7, '', 'antibiotik', 'diambil semua', 'suhu kamar', ''),
(9, '2014-09-03', 'Resep', 'Indrarini, Sp.KK', 'R/<div>Noroid lot fl 1/2</div><div>Elocon lot fl 1/2</div><div>mflalot</div><div>sue</div><div><br></div><div>R/ Tiriz capl No x</div><div>s1dd1 malam</div><div><br></div><div>R/ Imboost cap no X</div><div>s1dd1 pagi</div>', 8, '', 'pelembab, antialergi, antioksidan', 'diambil semua', 'suhu kamar', ''),
(10, '2014-05-06', 'Resep', 'Indrarini, Sp.KK', 'R/ Scabimite cr tb I<div>sue (24 jam)</div><div><br></div><div>R/ Claneksi 500 no X</div><div>s3dd1</div><div><br></div><div>R/ Celestamin tab no XV</div><div>s3dd1</div>', 9, '', 'skabies, antialergi', 'diambil semua', 'suhu kamar', ''),
(11, '2014-05-02', 'Resep', 'Indrarini, Sp.KK', 'R/ Inclovir 500 &nbsp;No X<div>s3dd1</div><div><br></div><div>R/ Truxanthine cap no XV</div><div>s1dd1</div>', 10, '', 'antivirus, antioksidan', 'diambil semua', 'suhu kamar', ''),
(12, '2014-05-03', 'Resep', 'Indrarini, Sp.KK', 'R/ Inclovir 500 No XX<div>s3dd1</div>', 10, '', 'antivirus', 'diambil semua', 'suhu kamar', ''),
(13, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>Sumagesic 1/2</div><div>Merislon 4</div><div>Lapibal 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 11, 'vertigo', 'analgesik', 'diambil semua', 'suhu kamar', ''),
(14, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Gastrolan 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1pc</div>', 12, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(15, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Gastrolan 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 13, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(16, '2014-05-01', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Ketricin 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 14, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(17, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>Analtram 1/3</div><div>Primacid 1/2</div><div>Lasgan 12</div><div>mfcapsdtdno XXIV</div><div>s1dd1</div><div><br></div><div>R/ Primaroid no XX</div><div>s2dd1</div>', 15, '', 'analgesik', 'diambil semua', 'suhu kamar', ''),
(18, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Stator 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 16, '', 'kolesterol, tensi', 'diambil semua', 'suhu kamar', ''),
(19, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>Furosemide 1/2</div><div>Spironolacton 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 17, 'pembengkakan', 'diuretik', 'diambil semua', 'suhu kamar', ''),
(20, '2014-05-18', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primasing no XXX</div><div>s3dd1</div>', 18, '', 'nyeri, radang, peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(21, '2014-06-18', 'Resep', 'Harry Rayadi', 'R/<div>Primasing No XXX</div><div>s2dd1</div><div><br></div><div>R/</div><div>Movix 7.5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 18, '', 'nyeri, radang, peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(22, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 19, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(23, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>Lactrin 1/3</div><div>Neuciti 1/3</div><div>mfpulvdtdno XII</div><div>da in Imunos syr 60cc I</div><div>s2ddcth1</div>', 20, '', 'batuk, pilek, syaraf', 'diambil semua', 'suhu kamar', ''),
(24, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Lasgan 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 21, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(25, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/ Proneuron no X<div>s 0-0-1</div><div><br></div><div>R/</div><div>Hapsen 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 22, '', 'nyeri, tensi', 'diambil semua', 'suhu kamar', ''),
(26, '2014-06-04', 'Resep', 'Harry Rayadi', 'R/<div>Analtram 1/2</div><div>Lasgan 1/2</div><div>Invomit 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1pc</div><div><br></div><div>R/ Primacid no XX</div><div>s1dd1ac</div>', 23, '', 'analgesik, antiemetik,', 'diambil semua', 'suhu kamar', ''),
(27, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>Meloxin 7.5</div><div>Gastrolan 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primatens no XX</div><div>s1dd1</div>', 24, '', 'analgesik, antiradang,tensi', 'diambil semua', 'suhu kamar', ''),
(28, '2014-05-18', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ B-beta no X</div><div>s 0-0-1</div>', 25, '', 'nyeri, radang, tensi', 'diambil semua', 'suhu kamar', ''),
(29, '2014-06-04', 'Resep', 'Harry Rayadi', 'R/<div>B-Beta 1/2</div><div>A-B Vask 5</div><div>mfcapsdtdno XX</div><div>s 0-0-1</div>', 25, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(30, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>AB Vask 5 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primacid 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 26, '', 'tensi, lambung', 'diambil semua', 'suhu kamar', ''),
(31, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>Imunos Plus 1/2</div><div>Proliva 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 27, '', 'imunomodulator', 'diambil semua', 'suhu kamar', ''),
(32, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/ Primajar 1/2<div>Biobran 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 28, '', 'kelenjar', 'diambil semua', 'suhu kamar', ''),
(33, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Inlacine 50</div><div>Amadiab 2 1/2</div><div>Mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>Primasing no XX</div><div>s2dd1</div>', 29, '', 'diabetes, peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(34, '2014-05-16', 'Resep', 'Harry Rayadi', 'R/<div>Biobran 1/2</div><div>Glucan 5 EX 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 30, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(35, '2014-05-03', 'Resep', 'Harry Rayadi', 'R/ Retaphyl SR no XV<div>s1dd1prn</div><div><br></div><div>R/</div><div>Clarihis 1/2</div><div>Ketricin 1/2</div><div>Lactrin 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 31, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(36, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>AB Vask 5</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 32, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(37, '2014-05-04', 'Resep', 'Harry Rayadi', 'R/<div>Cendo Albuvit I</div><div>s2ddgtt1</div>', 33, '', 'tetes mata, iritasi', 'diambil semua', 'suhu kamar', ''),
(38, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>Furosemid 1/2</div><div>Spironolacton 1/2</div><div>Imunos Plus 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Nervaplus no X</div><div>s1dd1</div>', 34, 'kista', 'peluruh kencing', 'diambil semua', 'suhu kamar', ''),
(39, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/ Primaroid no XX<div>s2dd2</div><div><br></div><div>R/</div><div>Tineuron 1/2</div><div>Sumagesic 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 35, '', 'hemoroid, syaraf', 'diambil semua', 'suhu kamar', ''),
(40, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>Levazide 1/2</div><div>Neuciti 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/&nbsp;</div><div>Inlacine 1/2</div><div>Amadiab 2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 36, '', 'saraf, diabetes', 'diambil semua', 'suhu kamar', ''),
(41, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Tineuron 1/3</div><div>Neuciti 1/2</div><div>Nervaplus 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div><div><br></div><div>R/ Trihexyphenidil no LX</div><div>s2dd1</div><div><br></div><div>R/ Leparson No XXX</div><div>s1dd1</div>', 37, '', 'saraf, parkinson', 'diambil semua', 'suhu kamar', ''),
(42, '2014-05-02', 'Resep', 'Harry Rayadi', 'R/<div>Melonox F No I</div><div>Biocream no I</div><div>mflalot</div><div>sue</div><div><br></div><div>R/</div><div>Afamed 1/2</div><div>Nervaplus 1/2</div>', 38, '', 'pemutih, pelembab, sayaraf', 'diambil semua', 'suhu kamar', ''),
(43, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/ Otopain TT<div>s2ddgtt1</div><div><br></div><div>R/</div><div>Disolf 1/2</div><div>Neuciti 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 38, '', 'infeksi kuping, syaraf', 'diambil semua', 'suhu kamar', ''),
(44, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 39, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(45, '2014-05-02', 'Resep', 'Harry Rayadi', 'R/<div>Analtram 1/2</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Acyclovir cr I</div><div>sue</div><div><br></div><div>R/ Kloderma cr I</div><div>sue</div>', 40, '', 'analgesik, antiradang, antivirus', 'diambil semua', 'suhu kamar', ''),
(46, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Disolf 1/2</div><div>Mecola 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 41, '', 'melancarkan peredaran darah', 'diambil semua', 'suhu kamar', ''),
(47, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Thyrozol no XX</div><div>s1dd1</div><div><br></div><div>R/ Imox no XX</div><div>s1dd1</div>', 42, '', 'pelangsing, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(48, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/ Glucan 5 EX<div>s1dd1</div>', 43, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(49, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/ Primacid no XV<div>s2dd1</div><div><br></div><div>R/</div><div>Analtram 1/2</div><div>Invomit 1/2</div><div>mfcapsdtdno XIV</div><div>s2dd1</div>', 44, '', 'lambung, nyeri, mual', 'diambil semua', 'suhu kamar', ''),
(50, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 45, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(51, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>Clarihis 1/2</div><div>Triamcort 1/2</div><div>Primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 46, '', 'alergi, radang', 'diambil semua', 'suhu kamar', ''),
(52, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Tineuron 1/2</div><div>Fucoidan 1/2</div><div>Lapraz 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div><div><br></div><div>R/ Primacid no XXX</div><div>s1dd1</div>', 47, '', 'syaraf, antipsikotik', 'diambil semua', 'suhu kamar', ''),
(53, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/ Primacid no XX<div>s2dd1</div><div><br></div><div>R/ AB Vask 5 1/2</div><div>BBeta 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 48, '', 'lambung, tensi', 'diambil semua', 'suhu kamar', ''),
(54, '2014-05-16', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Triamcort 1/2</div><div>Lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Imunos Plus capl no X</div><div>s1dd1</div>', 49, '', 'nyeri, radang, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(55, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Mecola 1/2</div><div>Disolf 1/2</div><div>Inlacine 50</div><div>mfcapsdtd no XX</div><div>s1dd1</div>', 50, '', 'gula, melancarkan darah', 'diambil semua', 'suhu kamar', ''),
(56, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>AB Vask 5 1/2</div><div>B Beta 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 51, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(57, '2014-05-02', 'Resep', 'Harry Rayadi', 'R/<div>Lasgan 1/2</div><div>Carniq 1/2</div><div>Mecola 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 52, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(58, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/ Bioquinone no X<div>s1dd1</div><div><br></div><div>R/ Fucohelix no X</div><div>s1dd1</div>', 52, '', 'antibiotik, lambung', 'diambil semua', 'suhu kamar', ''),
(59, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>Movix 5</div><div>Triamcort 1/2</div><div>Lasgan 1/3</div><div>mfcapsdtdno XV</div><div>s1dd1</div><div><br></div><div>R/ Valisanbe 5</div><div>s1dd1</div>', 53, '', 'nyeri, sedatif', 'diambil semua', 'suhu kamar', ''),
(60, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>Analtram 1/2</div><div>Invomit 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Leparson 1/2</div><div>Neuciti 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 54, '', 'mual, syaraf', 'diambil semua', 'suhu kamar', ''),
(61, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Meloxin 5</div><div>Protop 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 55, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(62, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>Lapibal 1/2</div><div>Stator 1/2</div><div>Disolf 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 56, '', 'kolesterol', 'diambil semua', 'suhu kamar', ''),
(63, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>Clarihis 1/2</div><div>Triamcort 1/2</div><div>Lactrin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 57, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(64, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Meloxin 7.5</div><div>Triamcort 1/2</div><div>Protop 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Imunos Plus</div><div>s1dd1</div>', 58, '', 'analgesik, antiradang, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(65, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Stator 1/2</div><div>Nerva Plus 1/2</div><div>Sumagesic 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 59, '', 'kolesterol, saraf', 'diambil semua', 'suhu kamar', ''),
(66, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Disolf 1/2</div><div>Mecola 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 60, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(67, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>Neuciti 1/2</div><div>Nerva Plus 1/2</div><div>mfcapsdtdno XIV</div><div>s1dd1</div>', 61, '', 'saraf', 'diambil semua', 'suhu kamar', ''),
(68, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Stator 1/2</div><div>Primasing 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>Amadiab 2</div><div>Inlacine 50</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 62, '', 'kolesterol, diabetes', 'diambil semua', 'suhu kamar', ''),
(69, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Lasgan 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Lapibal no X</div><div>s1dd1</div>', 63, '', 'nyeri, radang, syaraf', 'diambil semua', 'suhu kamar', ''),
(70, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>Biobran 1/2</div><div>imox 1/2</div><div>mfcapsdtdno xx</div><div>s2dd1</div><div><br></div><div>R/</div><div>kloderma I</div><div>diprosalic oint I</div><div>mflalot</div><div>sue</div>', 64, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(71, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>Meloxin 7.5</div><div>protop 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno x</div><div>s1dd1</div><div><br></div><div>R/ primacid no X</div><div>s1dd1</div>', 65, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(72, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>inlacine 50</div><div>mfcapsdtdno xxx</div><div>s2dd1</div>', 66, '', 'lambung, gula darah', 'diambil semua', 'suhu kamar', ''),
(73, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>stator 1/2</div><div>natto 1/2</div><div>mfcapsdtdno xx</div><div>s2dd1</div>', 67, '', 'kolesterol', 'diambil semua', 'suhu kamar', ''),
(74, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>lasgan 1/2</div><div>redacid 1/2</div><div>ketricin 1/2</div><div>mfcapsdtd no xx</div><div>s2dd1</div>', 68, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(75, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno xx</div><div>s1dd1</div><div><br></div><div>R/ ositin no x</div><div>s1dd1</div>', 69, '', 'lambung, persendian', 'diambil semua', 'suhu kamar', ''),
(76, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>primatens 1/2</div><div>b beta 1/2</div><div>disolf 1/2</div><div>mfcapsdtdno xx</div><div>s1dd1</div>', 70, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(77, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>disolf 1/2</div><div>pidovix 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Primatens no XX</div><div>s2dd1</div>', 71, '', 'tens', 'diambil semua', 'suhu kamar', ''),
(78, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>disolf 1/2</div><div>pidovix 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>primatens no xx</div><div>s2dd1</div>', 71, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(79, '2014-05-03', 'Resep', 'Harry Rayadi', 'R/<div>proliva 1/3</div><div>hepatin 1/3</div><div>analtram 1/4</div><div>mfcapsdtdno xxiv</div><div>s2dd1pc</div>', 72, '', 'analgesik, sedatif', 'diambil semua', 'suhu kamar', ''),
(80, '2014-05-03', 'Resep', 'Harry Rayadi', 'R/<div>afamed 1/2</div><div>neuciti 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/</div><div>ab vask 5</div><div>primatens 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 73, '', 'tensi, syaraf', 'diambil semua', 'suhu kamar', ''),
(81, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>afamed 1/2</div><div>neuciti 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 73, '', 'suplemen syaraf', 'diambil semua', 'suhu kamar', ''),
(82, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/<div>Analtram 1/2</div><div>Triamcort 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ ositin no XV</div><div>s1dd1</div>', 74, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(83, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>stator 1/2</div><div>b beta 1/2</div><div>ab vask 5</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>ositin no X</div><div>s1dd1</div>', 75, '', 'tensi, kolesterol, persendian', 'diambil semua', 'suhu kamar', ''),
(84, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s1dd1</div><div><br></div><div>R/</div><div>codipront cum exp 1/2</div><div>clarihis 1/2</div><div>ketricin 1/2</div><div>mfcapsdtdno X</div><div>s 0-0-1</div>', 76, '', 'batuk, kelenjar', 'diambil semua', 'suhu kamar', ''),
(85, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>movix 5</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 77, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(86, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>biobran 1/2</div><div>glucan 5 ex</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 78, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(87, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>carniq 1/2</div><div>natto 1/2</div><div>disolf 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 79, '', 'suplemen pelancar peredaran darah', 'diambil semua', 'suhu kamar', ''),
(88, '2014-05-10', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>lasgan 1/2</div><div>triamcort 1/2</div><div>s1dd1</div>', 80, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(89, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>biobran 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 81, '', 'imunomodulator', 'diambil semua', 'suhu kamar', ''),
(90, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>ketricin 1/2</div><div>mfcapsdtdno xx</div><div>s2dd1</div>', 82, '', 'lambung, antiradang', 'diambil semua', 'suhu kamar', ''),
(91, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>ab vask 5 1/2</div><div>spironolacton 1/2</div><div>mfcapsdtdno xx</div><div>s1dd1</div><div><br></div><div>R/</div><div>natto 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 83, '', 'tensi, suplemen', 'diambil semua', 'suhu kamar', ''),
(92, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/<div>stugeron 1/2</div><div>mecola 1/2</div><div>disolf 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 84, '', 'vertigo, melancarkan peredaran darah', 'diambil semua', 'suhu kamar', ''),
(93, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ primacid no XX</div><div>s2dd1</div>', 85, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(94, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 86, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(95, '2014-05-02', 'Resep', 'Harry Rayadi', 'R/<div>triamcort 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primaroid no XX</div><div>s1dd1</div>', 87, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(96, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>ketricin 1/2</div><div>lactin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 88, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(97, '2014-05-15', 'Resep', 'Harry Rayadi', 'R/ primaroid no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>biobran 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 89, 'myoma', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(98, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>protop 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 90, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(99, '2014-05-09', 'Resep', 'Harry Rayadi', 'R/ primasing no XX<div>s2dd1</div><div><br></div><div>R/</div><div>carniq 1/2</div><div>sumagesic 1/2</div><div>mfcapsdtdno XII</div><div>s2dd1</div>', 91, '', 'analgesik, peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(100, '2014-05-07', 'Resep', 'Harry Rayadi', 'R/<div>meloxicam 5</div><div>primacid 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 92, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(101, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div><br></div><div>R/ mecola no X</div><div>s1dd1</div>', 93, '', 'pencernaan', 'diambil semua', 'suhu kamar', ''),
(102, '2014-05-16', 'Resep', 'Harry Rayadi', 'R/ cefila no X<div>s2dd1</div><div><br></div><div>R/</div><div>sumagesic 1/2</div><div>clarihis 1/2</div><div>ketricin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Proliva no X</div><div>s1dd1</div>', 94, '', 'antibiotik, nreri radang, vitamin', 'diambil semua', 'suhu kamar', ''),
(103, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 95, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(104, '2014-05-14', 'Resep', 'Harry Rayadi', 'R/<div>galvus 1/2</div><div>inlacine 50</div><div>amadiab 1</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>disolf 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 96, '', 'antidiabetes', 'diambil semua', 'suhu kamar', ''),
(105, '2014-05-02', 'Resep', 'Harry Rayadi', 'R/ alviz 1mg<div>s1dd1 malam</div><div><br></div><div>R/ codipront cum exp&nbsp;</div><div>s1dd1 pagi</div><div><br></div><div>R/</div><div>meloxin 7.5</div><div>triamcort 1/2</div><div>protop 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 97, '', 'batu, obat tidur, nyeri radang', 'diambil semua', 'suhu kamar', ''),
(106, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>meloxin 7.5</div><div>triamcort 1/2</div><div>protop 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 97, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(107, '2014-05-08', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>Disolf 1/2</div><div>nervaplus 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 98, '', 'lambung, melancarkan peredaran darah', 'diambil semua', 'suhu kamar', ''),
(108, '2014-05-13', 'Resep', 'Harry Rayadi', 'R/<div>Mecola 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 99, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(109, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>Primajar 1/2</div><div>Biobran 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/ Primacid no XX</div><div>s2dd1</div>', 28, '', '', 'diambil semua', 'suhu kamar', ''),
(110, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>Inlacine 50</div><div>Amadiab 2 1/2</div><div>Mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primasing no XX</div><div>s2dd1</div>', 29, '', '', 'diambil semua', 'suhu kamar', ''),
(111, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>Disolf 1/2</div><div>Neuciti 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Nerva plus no XX</div><div>s1dd1</div>', 100, '', 'saraf', 'diambil semua', 'suhu kamar', ''),
(112, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>Digoxin 1</div><div>Disolf 1/2</div><div>Natto 1/2</div><div>mfcapstdno XX</div><div>s1dd1</div><div><br></div><div>R/ Lactrin 1/2</div><div>Interpril 5</div><div>primatens 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 100, '', 'jantung, tensi', 'diambil semua', 'suhu kamar', ''),
(113, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/ Primasing no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>Thyrax 1/2</div><div>Imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 101, '', 'peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(114, '2014-06-19', 'Resep', 'Harry Rayadi', 'R/<div>Thyrax 1/2</div><div>Inlacine 50</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/ Primasing noXXX</div><div>s2dd1</div>', 101, '', 'peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(115, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/ Analtram 1/2<div>Triamcort 1/2</div><div>Primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ BBeta no X</div><div>s1dd1</div>', 102, '', 'tensi, nyeri', 'diambil semua', 'suhu kamar', ''),
(116, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>Amadiab 1</div><div>Mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 103, '', 'tensi, diabetes', 'diambil semua', 'suhu kamar', ''),
(117, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>AB Vask 5 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>Analtram 1/2</div><div>Lasgan 1/2</div><div>Primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 104, '', 'tensi, nyeri', 'diambil semua', 'suhu kamar', ''),
(118, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>Sumagesic 1/2</div><div>Tineuron 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Primacid no XX</div><div>s2dd1</div>', 105, '', 'nyeri, syaraf', 'diambil semua', 'suhu kamar', ''),
(119, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>Primacid 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Disolf 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 106, '', 'lambung, pelancar darah', 'diambil semua', 'suhu kamar', ''),
(120, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/Imunos plus no X<div>s1dd1</div><div><br></div><div>R/ Glutrop no X</div><div>s1dd1</div>', 107, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(121, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/ ositin no X<div>s1dd1</div>', 108, '', 'persendian', 'diambil semua', 'suhu kamar', ''),
(122, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 109, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(123, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/ furosemide 1/2<div>spironolactone 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/ imunos plus 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 34, 'kista', 'diuretik', 'diambil semua', 'suhu kamar', ''),
(124, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>PCT 1500</div><div>CTM 12</div><div>Luminal 60</div><div>da in VRoxil F syr 60</div><div>s3ddcth1</div><div><br></div><div>R/ Vometa syr I</div><div>s3ddcth1/2ac</div>', 110, '', 'mual, demam', 'diambil semua', 'suhu kamar', ''),
(125, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/ primaroid no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>disolf 1/2</div><div>Triamcort 1/2</div><div>Nerva plus 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 35, '', 'syaraf, pencernaa', 'diambil semua', 'suhu kamar', ''),
(126, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/ Kloderma tb I<div>Kalcinol N tb I</div><div>mflalot I</div><div>sue</div>', 35, '', '', 'diambil semua', 'suhu kamar', ''),
(127, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/ Biothicol no X<div>s3dd1</div><div><br></div><div>R/ Buscopan plus no V</div><div>s2dd1</div><div><br></div><div>R/ Biodiar no VI</div><div>s2dd2</div>', 111, '', 'diare, nyeri perut', 'diambil semua', 'suhu kamar', ''),
(128, '2014-05-22', 'Resep', 'Harry Rayadi', 'R/ neuciti 1/2<div>nervaplus 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 112, '', 'syaraf', 'diambil semua', 'suhu kamar', ''),
(129, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>AB Vask 5 1/2</div><div>Interpril 5 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ primacid no XX</div><div>s2dd1</div>', 113, '', 'tensi, lambung', 'diambil semua', 'suhu kamar', ''),
(130, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>stugeron 1/2</div><div>neuciti 1/2</div><div>imox 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ primacid no XX</div><div>s2dd1</div>', 113, '', 'vertigo, lambung', 'diambil semua', 'suhu kamar', ''),
(131, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 114, '', 'antineoplastik, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(132, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/ epocaldi no XV<div>s1dd1</div>', 115, '', 'kalsium, menopause', 'diambil semua', 'suhu kamar', ''),
(133, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>braxidin 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 116, '', 'sedatif', 'diambil semua', 'suhu kamar', ''),
(134, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/ levazide no XX<div>s1dd1</div><div><br></div><div>R/</div><div>amadiab 1</div><div>galvus 1/2</div><div>inlacine 50</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ codipront cum exp</div><div>s 0-0-1</div>', 36, '', 'parkinson, diabetes, batuk', 'diambil semua', 'suhu kamar', ''),
(135, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>lasgan 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1pc</div>', 117, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(136, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>analtram 1/2</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 118, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(137, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>triamcort 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 119, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(138, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/ primagin no LX<div>s2dd2</div>', 121, '', 'ginjal', 'diambil semua', 'suhu kamar', ''),
(139, '2014-05-22', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>Pidovix 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>Nervaplus no XX</div><div>s1dd1</div>', 122, '', 'tensi, syaraf', 'diambil semua', 'suhu kamar', ''),
(140, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>gastrolan 1/2</div><div>sumagesic 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ primacid no XX</div><div>s2dd1</div>', 123, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(141, '2014-05-06', 'Resep', 'Harry Rayadi', 'R/ ositin no X<div>s1dd1</div><div><br></div><div>R/</div><div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 124, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(142, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>stugeron 1/2</div><div>alviz 1/2</div><div>lapibal 1/2</div><div>mfcapsdtdno XX</div><div>s 0-0-1</div>', 125, '', 'vertigo, sedatif', 'diambil semua', 'suhu kamar', ''),
(143, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>biobran 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/</div><div>analtram 1/2</div><div>invomit 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 126, '', 'antineoplastik, mual muntah', 'diambil semua', 'suhu kamar', ''),
(144, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>imox 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 126, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(145, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/ coditam no XX<div>s2dd1</div><div><br></div><div>R/ primajar no XXX</div><div>s2dd1</div>', 127, '', 'antineoplastik, analgesik', 'diambil semua', 'suhu kamar', ''),
(146, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>biobran 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 127, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(147, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/ fucohelix 1/2<div>lasgan 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div><div><br></div><div>R/ disolf 1/2</div><div>pidovix 1/2</div><div>nervaplus 1/2</div><div>mfcapsdtdno LX</div><div>s1dd1</div><div><br></div><div>R/ Imox 1/2</div><div>Triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 128, '', 'lambung, melancarkan peredaran darah, antiradang', 'diambil semua', 'suhu kamar', ''),
(148, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/ ositin no X<div>s1dd1</div><div><br></div><div>R/</div><div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 129, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(149, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1pc</div><div><br></div><div>R/ primacid no XX</div><div>s1dd1ac</div>', 130, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(150, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>primacid 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 131, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(151, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>stator 1/2</div><div>disolf 1/2</div><div>lapibal 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 41, '', 'kolesterol', 'diambil semua', 'suhu kamar', ''),
(152, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/ lapiflox no X<div>s2dd1</div><div><br></div><div>R/</div><div>proneuron 1/2</div><div>sumagesic 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XIV</div><div>s2dd1</div>', 132, '', 'antibiotik, nyeri', 'diambil semua', 'suhu kamar', ''),
(153, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>ketricin 1/2</div><div>mfpulvdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>kloderma 1/2</div><div>diprosalic 1/2</div><div>mflalot I</div><div>sue</div>', 133, '', 'antiradang, antialergi', 'diambil semua', 'suhu kamar', ''),
(154, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/ imunos plus no XV<div>s1dd1</div><div><br></div><div>R/</div><div>clarihis 1/2</div><div>triamcort 1/2</div><div>lactrin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 134, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(155, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/ carniq no X<div>s1dd1</div><div><br></div><div>R/ primasing no XXX</div><div>s2dd1</div>', 135, '', 'peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(156, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>lasgan 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ ositin no X</div><div>s1dd1</div>', 45, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(157, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>gastrolan 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 136, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(158, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>tineuron 1/2</div><div>sumagesic 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 137, '', 'syaraf', 'diambil semua', 'suhu kamar', ''),
(159, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>neuciti 1/2</div><div>AB Vask 5 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ primacid no XX</div><div>s1dd1</div>', 48, '', 'tensi, lambung', 'diambil semua', 'suhu kamar', ''),
(160, '0000-00-00', 'Resep', 'Harry Rayadi', 'R/<div>meloxin 7.5</div><div>triamcort 1/2</div><div>protop 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 138, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(161, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/ primasing no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>biobran 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 139, '', 'peluruh lemak, suplemen', 'diambil semua', 'suhu kamar', ''),
(162, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>stugeron 1/2</div><div>neuciti 1/2</div><div>disolf 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 140, '', 'vertigo, melancarkan peredaran darah', 'diambil semua', 'suhu kamar', ''),
(163, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 141, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(164, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1pc</div>', 141, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(165, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>primatens 1/3</div><div>interpril 5 1/3</div><div>mfcapsdtdno XXI</div><div>s1dd1</div>', 51, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(166, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 142, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(167, '2014-06-06', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>biobran 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 142, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(168, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>imunos plus 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 143, '', 'antine', 'diambil semua', 'suhu kamar', ''),
(169, '2014-06-06', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/</div><div>imunos plus 1/2</div><div>spironolacton 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 143, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(170, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1</div><div><br></div><div>R/ coditam no XX</div><div>s1dd1</div>', 144, '', 'analgesik', 'diambil semua', 'suhu kamar', ''),
(171, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/ coditam no XX<br>s1dd1', 144, '', 'analgesik', 'diambil semua', 'suhu kamar', ''),
(172, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>ketricin 1/2</div><div>mfcapsdtdno XX</div><div>s3dd1</div>', 144, '', 'antiradang, antialergi', 'diambil semua', 'suhu kamar', ''),
(173, '2014-06-19', 'Resep', 'Harry Rayadi', 'R/<div>alviz 1 no X</div><div>s1dd1</div><div><br></div><div>R/</div><div>biobran 1/2</div><div>imox 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 144, '', 'sedatif, kanker', 'diambil semua', 'suhu kamar', ''),
(174, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>sumagesic 1/2</div><div>merislon 1/2</div><div>neuciti 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 145, '', 'neurotropik, analgesic', 'diambil semua', 'suhu kamar', ''),
(175, '2014-06-22', 'Resep', 'Harry Rayadi', 'R/<div>neuciti 1/2</div><div>clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 145, '', 'neurotropik, antiradang', 'diambil semua', 'suhu kamar', ''),
(176, '2014-06-06', 'Resep', 'Harry Rayadi', 'R/movix 7.5<div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 146, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(177, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 147, '', 'antiradang', 'diambil semua', 'suhu kamar', ''),
(178, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1</div><div><br></div><div>R/</div><div>fucohelix 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 148, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(179, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/<div>primatens 1/3</div><div>AB Vask 10 1/3</div><div>mfcap XXX</div><div>s1dd1</div>', 149, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(180, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>analtram 1/2</div><div>triamcort 1/2</div><div>primacid 1/2</div><div>mfcapno XX</div><div>s1dd1</div>', 150, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(181, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/ codipront cum exp 1/2<div>clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapno XX</div><div>s2dd1</div><div><br></div><div>R/ imunos plus no X</div><div>s1dd1</div>', 151, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(182, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>AB Vask 5</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Proneuron</div><div>s2dd1</div>', 152, '', 'tensi, analgesik', 'diambil semua', 'suhu kamar', ''),
(183, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>ketricin 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ Tineuron no X</div><div>s 1-0-0</div><div><br></div><div>R/ Coditam no X</div><div>s 0-0-1</div>', 153, '', 'nyeri, syaraf', 'diambil semua', 'suhu kamar', ''),
(184, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>Sumagesic 1/2</div><div>Ketricin 1/2</div><div>Tineuron 1/2</div><div>mfcapsdtdno XIV</div><div>s1dd1</div>', 154, '', 'nyeri, syaraf', 'diambil semua', 'suhu kamar', ''),
(185, '2014-06-06', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 155, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(186, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/ ositin no X<div>s1dd1</div><div><br></div><div>R/</div><div>analtram 1/2</div><div>triamcort 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 156, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(187, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/3</div><div>ketricin 1/3</div><div>mfpulvdtdno XII</div><div>da in imunos syr 60cc no I</div><div>s2dd1</div>', 157, '', 'antiradang, antialergi', 'diambil semua', 'suhu kamar', ''),
(188, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>hepatin 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 158, '', 'lambung, hepatoprotektor', 'diambil semua', 'suhu kamar', ''),
(189, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/ Codipront cum exp no X<div>s 0-0-1</div><div><br></div><div>R/</div><div>movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 159, '', 'batuk, analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(190, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/ codipront cum exp 1/2<div>clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ AB Vask 5 1/2</div><div>imox 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 160, '', 'batuk, sesak, tensi', 'diambil semua', 'suhu kamar', ''),
(191, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>analtram 1/2</div><div>lapibal 1/2</div><div>disolf 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 161, '', 'melancarkan peredaran darah, nyeri', 'diambil semua', 'suhu kamar', ''),
(192, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>rifampicin 150</div><div>INH 150</div><div>hepatin 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 162, '', 'TB', 'diambil semua', 'suhu kamar', ''),
(193, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>lapibal 1/2</div><div>natto 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 163, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(194, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/ buscopan plus no V<div>s2dd1</div><div><br></div><div>R/ primacid no XX</div><div>s2dd1</div>', 164, '', 'pencernaan', 'diambil semua', 'suhu kamar', ''),
(195, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/<div>asthin force 1/2</div><div>proliva 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 165, '', 'antioksidan', 'diambil semua', 'suhu kamar', ''),
(196, '2014-05-21', 'Resep', 'Harry Rayadi', 'R/<div>Movix 7.5</div><div>Triamcort 1/2</div><div>Gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 166, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(197, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ Nervaplus no XX</div><div>s1dd1</div>', 63, '', 'nyeri, radang sendi, persyarafan', 'diambil semua', 'suhu kamar', ''),
(198, '2014-06-06', 'Resep', 'Harry Rayadi', 'R/ kalnex no XX<div>s2dd1</div><div><br></div><div>R/</div><div>imox 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 64, '', 'pengencer darah, kelenjar', 'diambil semua', 'suhu kamar', ''),
(199, '2014-05-22', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5<br>ketricin 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 167, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(200, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>MOVIX 7.5</div><div>TRIAMCORT 1/2</div><div>LASGAN 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 65, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(201, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>proneuron 1/2</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div><div><br></div><div>R/ Primacid no XX</div><div>s2dd1</div>', 168, '', 'nyeri, lambung', 'diambil semua', 'suhu kamar', ''),
(202, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>ketricin 1/2</div><div>lactrin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 169, '', 'batuk, sesak', 'diambil semua', 'suhu kamar', ''),
(203, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>imunos plus 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 66, '', 'lambung, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(204, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/ proneuron no X<div>s2dd1</div><div><br></div><div>R/</div><div>BBeta 1/2</div><div>AB Vask 5</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 67, '', 'nyeri, tensi', 'diambil semua', 'suhu kamar', ''),
(205, '2014-05-22', 'Resep', 'Harry Rayadi', 'R/<div>analtram 1/2</div><div>triamcort 1/2</div><div>mecola 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 170, '', 'nyeri, syaraf', 'diambil semua', 'suhu kamar', ''),
(206, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>stugeron 1/2</div><div>proneuron 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1pc</div>', 171, '', 'nyeri, vertigo', 'diambil semua', 'suhu kamar', ''),
(207, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>lasgan 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ ositin no X</div><div>s1dd1</div>', 69, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', '');
INSERT INTO `kunjungan` (`id`, `tanggal`, `tipe`, `dokter`, `obat`, `idpas`, `info_dokter`, `khasiat_obat`, `keterangan_resep`, `penyimpanan_obat`, `interaksi_obat`) VALUES
(208, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/</div><div>Nervaplus 1/2</div><div>Natto 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 70, '', 'tensi, syaraf', 'diambil semua', 'suhu kamar', ''),
(209, '2014-06-05', 'Resep', 'Harry Rayadi', 'R/<div>afamed 1/2</div><div>neuciti 1/2</div><div>nervaplus 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 73, '', 'syaraf', 'diambil semua', 'suhu kamar', ''),
(210, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/ lapiflox no X<div>s2dd1</div>', 172, '', 'antibiotik', 'diambil semua', 'suhu kamar', ''),
(211, '2014-06-10', 'Resep', 'Harry Rayadi', 'R/<div>clarihis 1/2</div><div>triamcort 1/2</div><div>lactrin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>primacid 1/2</div><div>sumagesic 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 173, '', 'batuk, sesak, nyeri', 'diambil semua', 'suhu kamar', ''),
(212, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/ codipront cum exp 1/2<div>clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ imunos plus no X</div><div>s1dd1</div>', 174, '', 'batuk, imunomodulator', 'diambil semua', 'suhu kamar', ''),
(213, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/<div>movix 5</div><div>triamcort 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ osteokom no XX</div><div>s1dd1</div>', 74, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(214, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>meloxin 7.5</div><div>triamcort 1/2</div><div>protop 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 175, '', 'nyeri, radang sendi', 'diambil semua', 'suhu kamar', ''),
(215, '2014-05-23', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 176, '', 'radang', 'diambil semua', 'suhu kamar', ''),
(216, '2014-06-12', 'Resep', 'Harry Rayadi', 'R/<div>BBeta 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 177, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(217, '2014-05-20', 'Resep', 'Harry Rayadi', 'R/ amoxsan F syr I<div>s3ddcth1</div><div><br></div><div>R/</div><div>cataflam 1/3</div><div>ketricin 1/3</div><div>mfpulvdtdno XV</div><div>s3dd1</div>', 178, '', 'antibiotik, antiradang', 'diambil semua', 'suhu kamar', ''),
(218, '2014-05-19', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>biobran 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 179, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(219, '2014-06-11', 'Resep', 'Harry Rayadi', 'R/<div>asthin force 1/2</div><div>hepatin 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 180, '', 'suplemen', 'diambil semua', 'suhu kamar', ''),
(220, '2014-07-26', 'Resep', 'Harry Rayadi', 'R/<div>B Beta 1/2</div><div>AB vask 1/2</div><div>Primatens 1/2</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 177, '', 'tensi', 'diambil semua', 'suhu kamar', ''),
(221, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>gastrolan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 182, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(222, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1</div><div><br></div><div>R/</div><div>tineuron 1/3</div><div>analtram 1/3</div><div>mfcapsdtdno XXX</div><div>s1dd1</div>', 183, '', 'lambung, persyarafan', 'diambil semua', 'suhu kamar', ''),
(223, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/ primasing no XXX<div>s2dd1</div>', 184, '', 'peluruh lemak', 'det 16, diambil sisanya', 'suhu kamar', ''),
(224, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/<div>biobran 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 126, '', 'kelenjar', 'diambil semua', 'suhu kamar', ''),
(225, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/<div>stator 1/2</div><div>primatens 1/2</div><div>mfcapsdtdno XX</div><div>s 0-0-1</div>', 67, '', 'tensi, kolesterol', 'diambil semua', 'suhu kamar', ''),
(226, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/ primagin no LX<div>s2dd2</div>', 121, '', 'ginjal', 'diambil semua', 'suhu kamar', ''),
(227, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div><br></div><div>R/</div><div>proliva 1/2</div><div>hepatin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 185, '', 'pencernaan, hepatoprotektor', 'diambil semua', 'suhu kamar', ''),
(228, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div><br></div><div>R/ primasing no XX</div><div>s2dd1</div>', 186, '', 'hemoroid, pencernaan, peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(229, '2014-07-25', 'Resep', 'Harry Rayadi', 'R/<div>meloxicam 7.5</div><div>ketricin 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 187, '', 'nyeri, radang sendi', 'Iter 2x, sudah det orig + 1X', 'suhu kamar', ''),
(230, '2014-07-23', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>proliva 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 188, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(231, '2014-07-23', 'Resep', 'Harry Rayadi', 'R/ alabetic no X<div>s1dd1</div><div><br></div><div>R/ meloxin 7.5</div><div>triamcort 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 189, '', 'gula darah, nyeri radang sendi', 'diambil semua', 'suhu kamar', ''),
(232, '2014-07-23', 'Resep', 'Harry Rayadi', 'R/ biobran 1/2<div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/ movix 5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 190, '', 'antineoplastik, nyeri radang sendi', 'diambil semua', 'suhu kamar', ''),
(233, '2014-07-23', 'Resep', 'Harry Rayadi', 'R/ sumagesic no X<div>s2dd1</div><div><br></div><div>R/ primacid 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 191, '', 'nyeri, lambung', 'diambil semua', 'suhu kamar', ''),
(234, '2014-07-23', 'Resep', 'Harry Rayadi', 'R/<div>primacid 1/2</div><div>biobran 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 66, '', 'lambung, antioksidan', 'diambil 16', 'suhu kamar', ''),
(235, '2014-07-24', 'Resep', 'Harry Rayadi', 'R/ primasing no XXX<div>s2dd1</div>', 184, '', 'peluruh lemak', 'diambil semua', 'suhu kamar', ''),
(236, '2014-07-24', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div style="text-align: center;">did</div><div style="text-align: left;">R/ movix 5</div><div style="text-align: left;">triamcort 1/2</div><div style="text-align: left;">gastrolan 1/2</div><div style="text-align: left;">mfcapsdtdno XX</div><div style="text-align: left;">s1dd1</div><div style="text-align: center;">did</div>', 12, '', 'pencernaan, nyeri radang sendi', 'diambil sisa', 'suhu kamar', ''),
(237, '2014-07-24', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/ movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 192, '', 'nyeri, radang sendi, antineoplastik', 'diambil semua', 'suhu kamar', ''),
(238, '2014-07-24', 'Resep', 'Harry Rayadi', 'R/ primasing no XXX<div>s2dd1</div><div><br></div><div>R/ carniq 1/2</div><div>clarihis 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 193, '', 'peluruh lemak, antialergi', 'diambil semua', 'suhu kamar', ''),
(239, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/<div>analtram 1/2</div><div>primacid 1/2</div><div>nervaplus 1/2</div><div>mfcapsdtdno X</div><div>s1dd1</div>', 194, '', 'nyeri, persyarafan', 'diambil semua', 'suhu kamar', ''),
(240, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/<div>biobra 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XL</div><div>s2dd1</div>', 89, '', 'antineoplastik', 'myoma', 'suhu kamar', ''),
(241, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/ primacid no X<div>s2dd1</div><div><br></div><div>R/ lasgan 1/2</div><div>hepatin 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 195, '', 'lambung,', 'diambil semua', 'suhu kamar', ''),
(242, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/ biobran 1/2<div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div><div><br></div><div>R/ movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 196, 'kanker', 'nyeri, radang sendi, antineoplastik', 'diambil semua', 'suhu kamar', ''),
(243, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/ biobran 1/2<div>primajar 1/2</div><div>mfcapsdtdno XL</div><div>s2dd1</div>', 142, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(244, '2014-07-22', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div><br></div><div>R/ lanaven no XX</div><div>s2dd1</div>', 93, 'hemoroid', 'antihemoroid', 'diambil semua', 'suhu kamar', ''),
(245, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/<div>biobran 1/2</div><div>primajar 12</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 197, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(246, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/ biobran 1/2</div><div>proliva 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 198, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(247, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/ primacid 1/2<div>lasgan 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 199, '', 'lambung', 'diambil semua', 'suhu kamar', ''),
(248, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/<div>primajar 1/2</div><div>biobran 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/</div><div>spironolacton 1/2</div><div>furosemid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 34, 'kista', 'antineoplastik, diuretik', 'diambil semua', 'suhu kamar', ''),
(249, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/ primagin no XX<div>s2dd1</div><div><br></div><div>R/ lapiflox no X</div><div>s1dd1</div>', 200, 'ISK', 'antibiotik, kesehatan ginjal', 'diambil semua', 'suhu kamar', ''),
(250, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/ primajar 1/2<div>biobran 12</div><div>mfcapsdtdno XL</div><div>s2dd1</div>', 28, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(251, '2014-07-21', 'Resep', 'Harry Rayadi', 'R/ primacid 1/2<div>buscopan plus 1/2</div><div>mfcapsdtdno X</div><div>s2dd1</div><div><br></div><div>R/ movix 5</div><div>ketricin 1/2</div><div>lasgan 1/2</div><div>mfcpasdtdno XX</div><div>s1dd1</div>', 156, '', 'lambung, nyeri radang sendi', 'diambil semua', 'suhu kamar', ''),
(252, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ biobran 1/2<div>primacid 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 201, '', 'antioksidan, pencernaan', 'diambil semua', 'suhu kamar', ''),
(253, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1</div><div><br></div><div>R/ analtram 1/2</div><div>ketricin 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 187, '', 'lambung, analgesik', 'diambil semua', 'suhu kamar', ''),
(254, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ analtram 1/2<div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 148, '', 'analgesik', 'diambil semua', 'suhu kamar', ''),
(255, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ ositin no X<div>s1dd1</div><div><br></div><div>R/ analtram 1/2</div><div>primacid 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 202, '', 'nyeri, radang', 'diambil semua', 'suhu kamar', ''),
(256, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ proliva 1/2<div>primatens 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div><div><br></div><div>R/ osteokom no X</div><div>s1dd1</div>', 203, '', 'antihipertensi, hepatoprotektor, pelumas sendi', 'diambil semua', 'suhu kamar', ''),
(257, '2014-07-18', 'Resep', 'Harry Rayadi', 'R/ analtram 1/2<div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2d1</div><div><br></div><div>R/ biobran 1/2</div><div>primajar 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 204, '', 'analgesik, antineoplastik', 'diambil semua', 'suhu kamar', ''),
(258, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>tineuron 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 205, '', 'analgesik, persyarafan', 'diambil semua', 'suhu kamar', ''),
(259, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ biobran 1/2<div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 206, '', 'antineoplastik', 'diambil semua', 'suhu kamar', ''),
(260, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>ketricin 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div><div><br></div><div>R/ nervaplus no X</div><div>s1dd1</div>', 207, '', 'analgesik anti radang, persyarafan', 'diambil semua', 'suhu kamar', ''),
(261, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/ Imunos plus 1/2</div><div>pidovix 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 139, '', 'antineoplastik, pengencer darah', 'diambil semua', 'suhu kamar', ''),
(262, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ primajar no XXX<div>s2dd1</div><div><br></div><div>R/ biobran 1/2</div><div>imox 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 208, '', 'antineoplastik, antioksidan', 'diambil semua', 'suhu kamar', ''),
(263, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ triamcort 1/2<div>primacid 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 123, '', 'radang sendi', 'diambil semua', 'suhu kamar', ''),
(264, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ biobran 12<div>primajar 1/2</div><div>mfcapsdtdno XXX</div><div>s2dd1</div>', 209, '', 'antineoplastik, antioksidan', 'diambil semua', 'suhu kamar', ''),
(265, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1pc</div><div><br></div><div>R/ meloxin 7.5</div><div>gastrolan 1/2</div><div>triamcort 1/2</div><div>mfcpasdtdno XX</div><div>s1dd1</div>', 23, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(266, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ primasing no XX<div>s2dd1</div><div><br></div><div>R/ clarihis 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 210, '', 'peluruh lemak, antialergi', 'diambil semua', 'suhu kamar', ''),
(267, '2014-07-17', 'Resep', 'Harry Rayadi', 'R/ meloxicam 7.5<div>ketricin 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 92, '', 'analgesik, antiradang', 'diambil 1/2', 'suhu kamar', ''),
(268, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ ketricin 1/2<div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 211, '', 'antiradang, pencernaan', 'diambil semua', 'suhu kamar', ''),
(269, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ primacid 1/2<div>protop 1/2</div><div>analtram 1/2</div><div>mfcapsdtdno X</div><div>s2dd1</div>', 114, '', 'analgesik, antiradang, pencernaan', 'diambil semua', 'suhu kamar', ''),
(270, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ primacid no XX<div>s2dd1</div><div><br></div><div>R/ proliva 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s2dd1</div>', 212, '', 'lambung, hepatoprotektor,', 'diambil semua', 'suhu kamar', ''),
(271, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ primaroid no XX<div>s2dd1</div><div><br></div><div>R/ movix 7.5</div><div>triamcort 1/2</div><div>lasgan 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 213, '', 'analgesik, antiradang, lambung', 'diambil semua', 'suhu kamar', ''),
(272, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/<div>movix 7.5</div><div>ketricin 1/2</div><div>primacid 1/2</div><div>mfcapsdtdno XX</div><div>s1dd1</div>', 214, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(273, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ primagin no LX<div>s2dd2</div>', 215, '', 'kesehatan ginjal', 'diambil semua', 'suhu kamar', ''),
(274, '2014-07-16', 'Resep', 'Harry Rayadi', 'R/ meloxin 7.5<div>primacid 1/2</div><div>triamcort 1/2</div><div>mfcapsdtdno XIV</div><div>s1dd1</div>', 216, '', 'analgesik, antiradang', 'diambil semua', 'suhu kamar', ''),
(275, '2014-05-03', 'Resep', 'Hikmat Permana', 'R/ Glucovance 500/2.5 no LX<div>s 1-0-1</div><div><br></div><div>R/ Trajenta 5 no XXX</div><div>s 1-0-0</div><div><br></div><div>R/ Truvaz 10 no XXX</div><div>s 0-0-1</div>', 217, '', 'antidiabetik, antikolesterol', 'R/1 (ambil semua); R/2 (ambil 8 tab); R/3 (ambil 19 tab)', 'suhu kamar', ''),
(276, '2014-05-09', 'Resep', 'Hikmat Permana', 'R/ Glucovance 500/2.5 no LX<div>s 1-0-1</div><div style="text-align: center;">det</div><div style="text-align: left;">R/ Trajenta 5 no XXX</div><div style="text-align: left;">s 1-0-0</div><div style="text-align: center;">det 8</div><div style="text-align: left;">R/ Truvaz 10 no XXX</div><div style="text-align: left;">s 0-0-1</div><div style="text-align: center;">det 19</div>', 217, '', 'antidiabetik, antikolesterol', 'diambil sisanya', 'suhu kamar', ''),
(277, '2014-05-27', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 no XXXVIII<br>s 1-0-0<br><br>R/ Provital plus no XXX<br>s1dd1<br><br>R/ Trajenta 5 No XXX<br>s 1-0-0<br>', 217, '', 'antidiabetik, multivitamin', 'R/1 (ambil 20); R/2 (ambil 15); R/3 (ambil 15)', 'suhu kamar', ''),
(278, '2014-06-07', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 no XXXVIII<br>s 1-0-0<br><div align="center">det 20<br><div align="left">R/ Provital Plus no XXX<br>s1dd1<br><div align="center">did<br><div align="left">R/ Trajenta 5 no XXX<br>s 1-0-0<br><div align="center">did<br></div></div></div></div></div>', 217, '', 'antidiabetik, suplemen multivitamin', 'diambil sisanya', 'suhu kamar', ''),
(279, '2014-06-28', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 No LX<br>s 1-0-1<br><div align="center">did<br><div align="left">R/ Lasix tab no XV<br>s1dd1/2<br><div align="center">det 8<br><div align="left">R/ Trajenta 5 no XXX<br>s 1-0-0<br><div align="center">did<br><div align="left">R/ Neurofenac plus no XV<br>s3dd1<br><div align="center">det 8<br></div></div></div></div></div></div></div>', 217, '', 'antidiabetik, diuretik, analgesik', 'diambil sisanya', 'suhu kamar', ''),
(280, '2014-07-24', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 no LX<br>s 1-0-1<br><br>R/ Lasix 40 no XV<br>s1dd1/2<br><br>R/ Neurobion 5000 no XXX<br>s1dd1<br><br>R/ Ambroxol tab no XV<br>s3dd1<br>', 217, '', 'antidiabetik, diuretik, suplemen, expectoran', 'diambil semua', 'suhu kamar', ''),
(281, '2014-08-20', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 no LX<br>s 1-0-1<br><br>R/ Lasix 40 no LX<br>s2dd1<br><br>R/ Letonal 100 no LX<br>s2dd1<br><br>R/ Kalmeco 500 no XC<br>s3dd1<br>', 217, '', 'antidiabetik, diuretik, suplemen', 'diambil semua', 'suhu kamar', ''),
(282, '2014-09-19', 'Resep', 'Hikmat Permana', 'R/ Glucovance 250/1.25 no XXX<br>s 1-0-0<br><br>R/ Letonal no LX<br>s2dd1<br><br>R/ Lasix 40 no XXX<br>s1dd1<br><br>R/ Kalmeco 500 no XC<br>s3dd1<br>', 217, '', 'antidiabetik, diuretik, suplemen', 'diambil semua', 'suhu kamar', '');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
`idpasien` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT '. . .',
  `alamat` varchar(100) DEFAULT '. . .',
  `telepon` varchar(60) DEFAULT '. . .',
  `usia` varchar(30) DEFAULT '. . .',
  `alergi` varchar(50) DEFAULT '. . .',
  `penyakit_lain` varchar(50) DEFAULT '. . .'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idpasien`, `nama`, `alamat`, `telepon`, `usia`, `alergi`, `penyakit_lain`) VALUES
(5, 'Ade Rochimat TN', 'Sukamenak GG Sumint', '081395060004', '. . .', '. . .', '. . .'),
(6, 'Anggita NN', 'Taman Reog Selatan', '081807830223', '. . .', '. . .', '. . .'),
(7, 'Anisa', 'Palem I Res A4/7', '08122424588', '. . .', '. . .', '. . .'),
(8, 'Annisa', 'GBI Blok EB No 19A', '081320240500', '. . .', '. . .', '. . .'),
(9, 'Arief', 'Pungkur 9B', '08121442010', '. . .', '. . .', '. . .'),
(10, 'Aryanti NN', 'Muhammad Ramdan', '5204673', '. . .', '. . .', '. . .'),
(11, 'Dairini Dwi Ratih', 'Pacuan Kuda I/6 ARC', '08122191555', '. . .', '. . .', '. . .'),
(12, 'DHR-Abdul Nassir', 'Majalaya', '5951794', '. . .', '. . .', '. . .'),
(13, 'DHR-Ade Sudrajat TN', 'Mekarsari Baleendah', '085222228967', '. . .', '. . .', '. . .'),
(14, 'DHR-Adhy', 'Jl Margacinta No 18', '7566492', '. . .', '. . .', '. . .'),
(15, 'DHR-Agus', 'Cempaka Arum M14/11', '08562026155', '. . .', '. . .', '. . .'),
(16, 'DHR-Agustina NY', 'GPA JL Rajawali D9', '5933179', '. . .', '. . .', '. . .'),
(17, 'DHR-Ahmadin NY', 'Denki Selatan 5/42', '08217331300', '. . .', '. . .', '. . .'),
(18, 'DHR-Ai Nurjanah', 'Majalaya', '70027308', '. . .', '. . .', '. . .'),
(19, 'DHR-Alan TN', 'Karasak Utara I/11A', '5208788', '. . .', '. . .', '. . .'),
(20, 'DHR-Ali', 'Lebok Ciseureuh', '081320529782', '. . .', '. . .', '. . .'),
(21, 'DHR-Amalia', 'Kawaluyaan Indah', '7332195', '. . .', '. . .', '. . .'),
(22, 'DHR-Ami', 'Laswi 75', '085624190704', '. . .', '. . .', '. . .'),
(23, 'DHR-Aminah NY', 'Situ Cipanunjang 15', '70032045', '. . .', '. . .', '. . .'),
(24, 'DHR-Ana NY', 'Gambang No 6', '08122357975', '. . .', '. . .', '. . .'),
(25, 'DHR-Ana NY', 'Sekelimus 7/17', '085691151830', '. . .', '. . .', '. . .'),
(26, 'DHR-Andri TN', 'Komplek Dadali Campere', '081220371544', '. . .', '. . .', '. . .'),
(27, 'DHR-Aneng', 'JL Kampus Tujuh', '081321291786', '. . .', '. . .', '. . .'),
(28, 'DHR-Anggraeni', 'M Toha GG Subur 21', '5202674', '. . .', '. . .', '. . .'),
(29, 'DHR-Arum NY', 'Waas Blok C 21', '7501629', '. . .', '. . .', '. . .'),
(30, 'DHR-Asih NY', 'Komp Cibolerang F60', '081809488952', '. . .', '. . .', '. . .'),
(31, 'DHR-Azis TN', 'Mas Barat 19', '7560783', '. . .', '. . .', '. . .'),
(32, 'DHR-Boyke', 'Purba Endah 4 No 26', '08122445471', '. . .', '. . .', '. . .'),
(33, 'DHR-Buchori', 'Merkuri Selatan XVI', '7561514', '. . .', '. . .', '. . .'),
(34, 'DHR-Daliam', 'Taman Merkuri Timur', '7513843', '. . .', '. . .', '. . .'),
(35, 'DHR-Dedeh', 'Jl Raya Banjaran', '085722721919', '. . .', '. . .', '. . .'),
(36, 'DHR-Dicky', 'Pluto Selatan 1/31', '61594096', '. . .', '. . .', '. . .'),
(37, 'DHR-Djuaedah', 'Tanjung Sari Sumedang', '081214693335', '. . .', '. . .', '. . .'),
(38, 'DHR-Eka TN', 'Kang Graksan 24', '0231485103', '. . .', '. . .', '. . .'),
(39, 'DHR-Emma Alex NY', 'Haruman no 6', '7306890', '. . .', '. . .', '. . .'),
(40, 'DHR-Endah NY', 'Cibogo BWH 39', '081321216210', '. . .', '. . .', '. . .'),
(41, 'DHR-Euis', 'Turangga Brt F5', '7314170', '. . .', '. . .', '. . .'),
(42, 'DHR-Evi NY', 'Jl Palangkaraya No', '081322359522', '. . .', '. . .', '. . .'),
(43, 'DHR-Evi NY', 'Buana Sari 6/4', '7500721', '. . .', '. . .', '. . .'),
(44, 'DHR-Gia', 'Karasak 86', '730366800', '. . .', '. . .', '. . .'),
(45, 'DHR-Hargono', 'Cibabat Cimahi', '6611856', '. . .', '. . .', '. . .'),
(46, 'DHR-H Daddy', 'Adisuren 16', '4240997', '. . .', '. . .', '. . .'),
(47, 'DHR-Hermanto', 'Industri 31', '7035114', '. . .', '. . .', '. . .'),
(48, 'DHR-Hunanjat', 'Bonsenang', '70966903', '. . .', '. . .', '. . .'),
(49, 'DHR-Iche NY', 'Blok G2/4 BSD', '08121124312', '. . .', '. . .', '. . .'),
(50, 'DHR-Indria NY', 'Ciwastra 82', '70674747', '. . .', '. . .', '. . .'),
(51, 'DHR-Irhan TN', 'JL Musang No 7', '7307497', '. . .', '. . .', '. . .'),
(52, 'DHR-Isye', 'Kang Grakasna 24', '0231485103', '. . .', '. . .', '. . .'),
(53, 'DHR-Iya TN', 'Cilentah Dalam 3/61', '7321903', '. . .', '. . .', '. . .'),
(54, 'DHR-Karyati NY', 'Sinom Raya No 15', '7303680', '. . .', '. . .', '. . .'),
(55, 'DHR-Kokoy NY', 'Padalarang', '081321195539', '. . .', '. . .', '. . .'),
(56, 'DHR-Komariah NY', 'Ablonema 47 Grand S', '70783916', '. . .', '. . .', '. . .'),
(57, 'DHR-Lia NY', 'Perum Bumi Tarogong', '085222211218', '. . .', '. . .', '. . .'),
(58, 'DHR-Lina', 'Rancajigan 48', '087722680666', '. . .', '. . .', '. . .'),
(59, 'DHR-Linda NY', 'GBA 2 K9/10', '081321923323', '. . .', '. . .', '. . .'),
(60, 'DHR-Lismawati NY', 'Cimahi', '08158853395', '. . .', '. . .', '. . .'),
(61, 'DHR-Mala', 'Taman Kopo Indah B1', '5413186', '. . .', '. . .', '. . .'),
(62, 'DHR-Mami NY', 'Suryalaya Timur 4/1', '081802282896', '. . .', '. . .', '. . .'),
(63, 'DHR-Nani Dada Rosada', 'Tirtasari II/12', '0811214152', '. . .', '. . .', '. . .'),
(64, 'DHR-Nani NY', 'Kiarasari 7/46', '087526519', '. . .', '. . .', '. . .'),
(65, 'DHR-Nela NY', 'Terong 32', '08122390378', '. . .', '. . .', '. . .'),
(66, 'DHR-Ngadiem NY', 'Rancamanyar 1 No 14', '7317760', '. . .', '. . .', '. . .'),
(67, 'DHR-Niknik NY', 'Jl Atletik XI/16', '7104353', '. . .', '. . .', '. . .'),
(68, 'DHR-Nur', 'Suryalaya 11', '7304672', '. . .', '. . .', '. . .'),
(69, 'DHR-Nurdin TN', 'Kalijati Indah Utr', '08138496499', '. . .', '. . .', '. . .'),
(70, 'DHR-Nurhayati NY', 'Jl Dedes 3', '7300807', '. . .', '. . .', '. . .'),
(71, 'DHR-Nurjana TN', 'Tembaga 17', '7563116', '. . .', '. . .', '. . .'),
(72, 'DHR-Nurmaini', 'Cijaura Girang II/1', '7563678', '. . .', '. . .', '. . .'),
(73, 'DHR-Nursyamsyu TN', 'RY Soreang', '0812147000', '. . .', '. . .', '. . .'),
(74, 'DHR-Otih NY', 'JLN RY Laswi Majalaya', '61594096', '. . .', '. . .', '. . .'),
(75, 'DHR-Ratu Wieke NY', 'Jln Suryalaya 13 No', '731013', '. . .', '. . .', '. . .'),
(76, 'DHR-Reti NY', 'Panghegar Permai 14', '7802552', '. . .', '. . .', '. . .'),
(77, 'DHR-Rifda NY', 'Pasirsalam 3/13', '0225211617', '. . .', '. . .', '. . .'),
(78, 'DHR-Sakowi NY', 'Maleber Barat 30', '6071249', '. . .', '. . .', '. . .'),
(79, 'DHR-Sariati NY', 'Jongjolong 33', '08122035514', '. . .', '. . .', '. . .'),
(80, 'DHR-Siti Asiyah', 'Peta 142', '93563580', '. . .', '. . .', '. . .'),
(81, 'DHR-Sri Utami NY', 'GPA BLK D9 No 17', '08122710080', '. . .', '. . .', '. . .'),
(82, 'DHR-Suarti NY', 'Sekelimus 3 No 1', '7566088', '. . .', '. . .', '. . .'),
(83, 'DHR-Subono TN', 'Citopeng 47', '6004762', '. . .', '. . .', '. . .'),
(84, 'DHR-Sugino TN', 'Baranangsiang 98', '421757356', '. . .', '. . .', '. . .'),
(85, 'DHR-Suhaemi NY', 'Suryalaya 4 /14', '7319435', '. . .', '. . .', '. . .'),
(86, 'DHR-Sukaesih NY', 'Solontongan II/7', '02293745087', '. . .', '. . .', '. . .'),
(87, 'DHR-Sukwiati NY', 'Sindang Palay No 2', '08122139815', '. . .', '. . .', '. . .'),
(88, 'DHR-Taufik', 'Tanjung Sari Antapani', '7204384', '. . .', '. . .', '. . .'),
(89, 'DHR-Teny NY', 'Patuha I/9', '7310839', '. . .', '. . .', '. . .'),
(90, 'DHR-Teti NY', 'Sayuran 6A', '5410141', '. . .', '. . .', '. . .'),
(91, 'DHR-Triyeni', 'Sri Endah 1/4', '085320303145', '. . .', '. . .', '. . .'),
(92, 'DHR-Tuti NY', 'GBA 1 C215', '7505630', '. . .', '. . .', '. . .'),
(93, 'DHR-Uung TN', 'Cinunuk No 281', '7802058', '. . .', '. . .', '. . .'),
(94, 'DHR-Wawan TN', 'Subang', '081910431995', '. . .', '. . .', '. . .'),
(95, 'DHR-Wina NY', 'Jongjolong 33', '0811225062', '. . .', '. . .', '. . .'),
(96, 'DHR-Yani', 'Pasir Raharja 1/1', '085624190704', '. . .', '. . .', '. . .'),
(97, 'DHR-Yeti Leman NY', 'JL Buah Batu 116A', '7320192', '. . .', '. . .', '. . .'),
(98, 'DHR-Yosi NY', 'Sarijadi Blok N1/16', '081320378532', '. . .', '. . .', '. . .'),
(99, 'DHR-Aca TN', 'Tanjungsiang', '', '. . .', '. . .', '. . .'),
(100, 'DHR-Ating TN', 'Alamanda No 3 KT', '082119419004', '. . .', '. . .', '. . .'),
(101, 'DHR-Ati NY', 'Otista 210', '085722202016', '. . .', '. . .', '. . .'),
(102, 'DHR-Ati NY', 'Sukaati 9 Bapindo', '085220371001', '. . .', '. . .', '. . .'),
(103, 'DHR-Awing NY', 'Marakas No 1 Turangga', '7304386', '. . .', '. . .', '. . .'),
(104, 'DHR-Ayi TN', 'Bahagia 2 No 16', '08122477574', '. . .', '. . .', '. . .'),
(105, 'DHR-Aznawati NY', 'Lampah no 2 Kota', '081399947171', '. . .', '. . .', '. . .'),
(106, 'DHR-Bambang TN', 'Ranca Goong 2/29', '082262266669', '. . .', '. . .', '. . .'),
(107, 'DHR-Bella', 'Moh Toha Gg Subur', '5202674', '. . .', '. . .', '. . .'),
(108, 'DHR-Betty NY', 'Bukit Dago SLTN', '0818218270', '. . .', '. . .', '. . .'),
(109, 'DHR-Cucu NY', 'Palasari 129', '081320339394', '. . .', '. . .', '. . .'),
(110, 'DRY-Darel', 'Mutumanikam', '085319957783', '. . .', '. . .', '. . .'),
(111, 'DHR-Dedi', 'Jakarta Timur', '0812121528', '. . .', '. . .', '. . .'),
(112, 'DHR-Dedi TN', 'Alani 8A Kosambi', '087821607965', '. . .', '. . .', '. . .'),
(113, 'DHR-Dewi NY', 'Taman Siswa No 54', '081394175288', '. . .', '. . .', '. . .'),
(114, 'DHR-Dewi NY', 'Aditya No. 1 Sukarno', '08121456927', '. . .', '. . .', '. . .'),
(115, 'DHR-Dhea NY', 'Ranca Goong 2/29', '082262266669', '. . .', '. . .', '. . .'),
(116, 'DHR-Diah Indra NY', 'Kiara Asri II/16', '081386759065', '. . .', '. . .', '. . .'),
(117, 'DHR-Dini', 'Batununggal IDH IX', '087722775995', '. . .', '. . .', '. . .'),
(118, 'DHR-Djubaedah', 'JL Saparako No 11', '5952632', '. . .', '. . .', '. . .'),
(119, 'DHR-Ega TN', 'Banjaran 2 Soreang', '08562119600', '. . .', '. . .', '. . .'),
(121, 'DHR-Elin NY', 'Margamulya No 57', '6649143', '. . .', '. . .', '. . .'),
(122, 'DHR-Elly', 'Kembar TMR 7/1', '5208347', '. . .', '. . .', '. . .'),
(123, 'DHR-Ema NY', 'Griya Cempaka Arum', '08562026155', '. . .', '. . .', '. . .'),
(124, 'DHR-Emi Suhaemi NY', 'Karawitan 76A', '7317002', '. . .', '. . .', '. . .'),
(125, 'DHR-Endang NY', 'Pagatot 3 No 65', '022-2015613', '. . .', '. . .', '. . .'),
(126, 'DHR-Enden NY', 'Kopo GG Pak Eman', '08122227489', '. . .', '. . .', '. . .'),
(127, 'DHR-Engkat NY', 'Kamp Cikondang 3/3', '082129594325', '. . .', '. . .', '. . .'),
(128, 'DHR-Eni NY', 'JL Bangu IV No 8', '0811978252', '. . .', '. . .', '. . .'),
(129, 'DHR-Eni NY', 'Bubat Dalam 5 No 156', '7304561', '. . .', '. . .', '. . .'),
(130, 'DHR-Enny NY', 'GBA 1 Blok D 141 BJ', '081220217535', '. . .', '. . .', '. . .'),
(131, 'DHR-Eti NY', 'Kalijatu Indh UTR 2', '08138138496499', '. . .', '. . .', '. . .'),
(132, 'DHR-Euis NY', 'Sukabumi', '081283754740', '. . .', '. . .', '. . .'),
(133, 'DHR-Fathi', 'Kuningan', '085221118998', '. . .', '. . .', '. . .'),
(134, 'DHR-Fristi NY', 'Balong Gede 40A', '0817212349', '. . .', '. . .', '. . .'),
(135, 'DHR-Gina', 'Merkuri Selatan', '7561514', '. . .', '. . .', '. . .'),
(136, 'DHR-Hikmat TN', 'Parakan Saat III/18', '70032045', '. . .', '. . .', '. . .'),
(137, 'DHR-HJ Aisyah NY', 'Cicalengka', '70805823', '. . .', '. . .', '. . .'),
(138, 'DHR-Iche NY', 'Palangkaraya 19', '0817213415', '. . .', '. . .', '. . .'),
(139, 'DHR-Ina NY', 'JL Suryalaya 1/17A', '08127093126', '. . .', '. . .', '. . .'),
(140, 'DHR-Indra TN', 'Sukajadi No 113', '081320714644', '. . .', '. . .', '. . .'),
(141, 'DHR-Irena NN', 'H. Zam zam 14 Cijagra', '08112202340', '. . .', '. . .', '. . .'),
(142, 'DHR-Ita NY', 'TRSN Buah Batu No 2', '7506765', '. . .', '. . .', '. . .'),
(143, 'DHR-Iyoh', 'Purwakarta', '08779613677', '. . .', '. . .', '. . .'),
(144, 'DHR-Iyus NY', 'Sekelimus 12/5', '08562099522', '. . .', '. . .', '. . .'),
(145, 'DHR-Jojo', 'Dayeuh Kolot No 100', '085322402906', '. . .', '. . .', '. . .'),
(146, 'DHR-Komar TN', 'Rajamantri Kidul 9', '7319117', '. . .', '. . .', '. . .'),
(147, 'DHR-Krisnandi', 'JL Waas Blok C21', '7501629', '. . .', '. . .', '. . .'),
(148, 'DHR-Kusmiati NY', 'Nilem 3/19', '7314925', '. . .', '. . .', '. . .'),
(149, 'DHR-Lala NY', 'JLN Pelajar Pejuang', '7306068', '. . .', '. . .', '. . .'),
(150, 'DHR-Lena NY', 'JL Bunga Bakung 5/2', '085624267138', '. . .', '. . .', '. . .'),
(151, 'DHR-Leni NY', 'Ancol Tgh 11A', '5208952', '. . .', '. . .', '. . .'),
(152, 'DHR-Leni NY', 'Pangalengan 43', '08122348918', '. . .', '. . .', '. . .'),
(153, 'DHR-Lenny NY', 'Sukabumi', '082118672658', '. . .', '. . .', '. . .'),
(154, 'DHR-Lhea Sabur NY', 'Dago 369 Kav 6', '2533862', '. . .', '. . .', '. . .'),
(155, 'DHR-Lien', 'Kiara Sari 7/46', '087526519', '. . .', '. . .', '. . .'),
(156, 'DHR-Lily NY', 'Salendro TMR II/6', '7301266', '. . .', '. . .', '. . .'),
(157, 'DHR-Malik', 'GBA 1 Blok C 78', '081809650078', '. . .', '. . .', '. . .'),
(158, 'DHR-Mardanis NY', 'Cijaura Girang 2/1', '7563678', '. . .', '. . .', '. . .'),
(159, 'DHR-Mardanis TN', 'Cijaura Girang 2/1', '7569678', '. . .', '. . .', '. . .'),
(160, 'DHR-Maryam NY', 'JL Bumsil No 11', '085721109222', '. . .', '. . .', '. . .'),
(161, 'DHR-Masniah', 'Pasir Luyu XII/16', '5202787', '. . .', '. . .', '. . .'),
(162, 'DHR-Meitania NN', 'Tamansiswa 55', '08122029092', '. . .', '. . .', '. . .'),
(163, 'DHR-Muftin', 'Cileutik Banjaran', '085318669993', '. . .', '. . .', '. . .'),
(164, 'DHR-Mulyani', 'Mutiara RY 3 Padalarang', '081573294990', '. . .', '. . .', '. . .'),
(165, 'DHR-Nadhira', 'JL Bangu IV No 8', '0811978252', '. . .', '. . .', '. . .'),
(166, 'DHR-Nana TN', 'Nias C2/92', '08122421994', '. . .', '. . .', '. . .'),
(167, 'DHR-Nani NY', 'Binong Tengah 124', '081320042693', '. . .', '. . .', '. . .'),
(168, 'DHR-Neneng NY', 'Migraya Cijerah', '6002415', '. . .', '. . .', '. . .'),
(169, 'DHR-Neni NY', 'JL Raya Cinunuk 281', '081321446699', '. . .', '. . .', '. . .'),
(170, 'DHR-Nining NY', 'Alani No 8', '085220220324', '. . .', '. . .', '. . .'),
(171, 'DHR-Ninung NY', 'Sukamenak 24', '540596', '. . .', '. . .', '. . .'),
(172, 'DHR-Oni NY', 'Haruman no 5', '7312536', '. . .', '. . .', '. . .'),
(173, 'DHR-Oom NY', 'Hasan Saputra ', '082121480043', '. . .', '. . .', '. . .'),
(174, 'DHR-Oon NY', 'Tamborin 25', '087722298388', '. . .', '. . .', '. . .'),
(175, 'DHR-Partini NY', 'Tamim Blkg No 42A-1', '081223900269', '. . .', '. . .', '. . .'),
(176, 'DHR-Priska NN', 'Kalasan 3 Blok I/10', '6038577', '. . .', '. . .', '. . .'),
(177, 'DHR-Putri Utami NY', 'Pelanduk 22', '08122040600', '. . .', '. . .', '. . .'),
(178, 'DHR-Rasya AN', 'GBA 1 C78', '7500671', '. . .', '. . .', '. . .'),
(179, 'DHR-Reni NY', 'Kerang 16A', '088806330799', '. . .', '. . .', '. . .'),
(180, 'DHR-Renisa NN', 'Cijagra I/147', '087822245409', '. . .', '. . .', '. . .'),
(181, 'DHR-Resnawati', 'Bahagia Permai VI/2', '7500787', '. . .', '. . .', '. . .'),
(182, 'DHR-Aswin TN', 'Pasigaran 84 Dayeuhkolot', '5210983', '. . .', '. . .', '. . .'),
(183, 'DHR-Lilis NY', 'Awi Buluh Gg Bunga', '085213536680', '. . .', '. . .', '. . .'),
(184, 'DHR-Ati NY', 'Margacinta 185', '7566492', '. . .', '. . .', '. . .'),
(185, 'DHR-Fitri Ratih', 'Bdg Indah Raya', '082119600448', '. . .', '. . .', '. . .'),
(186, 'DHR-Djumailah', 'Taman Holis Indah', '08164862881', '. . .', '. . .', '. . .'),
(187, 'DHR-Kuraesin', 'Rancamanyar IV/3', '7310847', '. . .', '. . .', '. . .'),
(188, 'DHR-Nia NY', 'Palem Bintang No 19', '087822817047', '. . .', '. . .', '. . .'),
(189, 'DHR-Cucu', 'Saturnus Ujung 20', '7565775', '. . .', '. . .', '. . .'),
(190, 'DHR-Ganjar', 'Jl Saluyu Indah 2', '082116742163', '. . .', '. . .', '. . .'),
(191, 'DHR-Nurlela', 'Baros Sukabumi', '081283754740', '. . .', '. . .', '. . .'),
(192, 'DHR-Sarkowi NY', 'Maleber BRT 380', '081240011754', '. . .', '. . .', '. . .'),
(193, 'DHR-Nina NY', 'Jamblang Raya 9A', '081317767734', '. . .', '. . .', '. . .'),
(194, 'DHR-Siti Hanifah NY', 'Reog Raya no 6', '7303228', '. . .', '. . .', '. . .'),
(195, 'DHR-Karmansyah TN', 'Karawitan no 32/1', '7306300', '. . .', '. . .', '. . .'),
(196, 'DHR-Sudarsono', 'Srimahi 3 21', '08122408990', '. . .', '. . .', '. . .'),
(197, 'DHR-Mega NY', 'Beunteur 11', '7320783', '. . .', '. . .', '. . .'),
(198, 'DHR-Badruz TN', 'Perum Midland 23/10', '08122160600', '. . .', '. . .', '. . .'),
(199, 'DHR-Janatin', 'Maleer Selatan', '085722003109', '. . .', '. . .', '. . .'),
(200, 'DHR-Rosnawati', 'Komp Bahagia Permai', '7500787', '. . .', '. . .', '. . .'),
(201, 'DHR-Ane', 'Bahagia Permai 7', '7564681', '. . .', '. . .', '. . .'),
(202, 'DHR-Dewi', 'Adi Suren 22', '4200126', '. . .', '. . .', '. . .'),
(203, 'DHR-Ratu NY', 'Gerlong Wetan 39', '2010461', '. . .', '. . .', '. . .'),
(204, 'DHR-Nunuy NY', 'Jurang 471/181', '085714528958', '. . .', '. . .', '. . .'),
(205, 'DHR-Euis NY', 'Kebon Manggu 207-22', '08132496611', '. . .', '. . .', '. . .'),
(206, 'DHR-Dian NY', 'Komp BDG Inten', '082120856177', '. . .', '. . .', '. . .'),
(207, 'DHR-Rugayah NY', 'Kiara Asri 7 no 23', '7308921', '. . .', '. . .', '. . .'),
(208, 'DHR-Heti Suhaeti NY', 'Maleer 5 122B', '082315089018', '. . .', '. . .', '. . .'),
(209, 'DHR-Suryani NY', 'Cileunyi BM Abdi', '081312073621', '. . .', '. . .', '. . .'),
(210, 'DHR-Eli NY', 'Parakan saat III/18', '70032045', '. . .', '. . .', '. . .'),
(211, 'DHR-Suwati NY', 'Sekelimus 3 no 1', '7566088', '. . .', '. . .', '. . .'),
(212, 'DHR-Sri Umiyati', 'Pasir Salam 4 no 12', '08122169044', '. . .', '. . .', '. . .'),
(213, 'DHR-Iyam NY', 'Veteran No 1 PWKT', '085315839888', '. . .', '. . .', '. . .'),
(214, 'DHR-Jumaeni NY', 'Gg Pelita 406', '6022053', '. . .', '. . .', '. . .'),
(215, 'DHR-Nila NY', 'Sanggar Kencana 8/1', '02261561296', '. . .', '. . .', '. . .'),
(216, 'DHR-Iis Apong NY', 'Cilentah Dalam III/61', '7321903', '. . .', '. . .', '. . .'),
(217, 'Ety NY', 'Lodaya No 87', '082120027043', '. . .', '. . .', '. . .');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
 ADD PRIMARY KEY (`iddokter`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_kunjungan_pasiens` (`idpas`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
 ADD PRIMARY KEY (`idpasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
MODIFY `iddokter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kunjungan`
--
ALTER TABLE `kunjungan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
MODIFY `idpasien` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=218;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kunjungan`
--
ALTER TABLE `kunjungan`
ADD CONSTRAINT `FK_kunjungan_pasiens` FOREIGN KEY (`idpas`) REFERENCES `pasien` (`idpasien`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
