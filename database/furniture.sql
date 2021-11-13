-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2020 pada 06.40
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_admin`) VALUES
(5, 'nia', '04a481486dd84d7c8bfdfc89d38136a6', 'nia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga`, `picture`, `stok`, `deskripsi`) VALUES
(5, 'Tolliver Lieke Women', '229000 ', '1fl.jpg', 2, '-Â Flat shoes\r\n- Material: PUÂ leather\r\n- Warna biru\r\n- DetailÂ stitching\r\n- Aksen pita danÂ tassel'),
(6, 'Crocs Carlisa Flat', '374500 ', '2fl.jpg', 3, '- Flat shoes\r\n- MaterialÂ translucentÂ TPU\r\n- Kombinasi warnaÂ azure, custard\r\n- DetailÂ footbed\r\n- Classic molded closed toe\r\n- Non-marking outsole\r\n- Signature logo'),
(7, 'Audrey Flat Shoes', '229000 ', '3fl.jpg', 1, 'Nicholas Edison Audrey Flat Shoes Brown.Â Flat shoesÂ dengan sentuhan motifÂ snake skinÂ yang trendi. Desain simpel mudah dipadukan denganÂ outfitÂ pilihan.Â Effortless chic!\r\n\r\nFlat shoesÂ warna coklat dari bahan PUÂ synthetic.'),
(8, 'Animal Print Ballet Flats', '139000 ', '4fl.jpg', 4, '- SepatuÂ flats\r\n- MaterialÂ faux snakeskin\r\n- Kombinasi warnaÂ pinkÂ dan coklat\r\n- Almond toeÂ denganÂ contrast cap\r\n- DetailÂ elasticised top line\r\n- Pita depan\r\n- PUÂ insole\r\n- ResinÂ outsole'),
(9, 'Crocs Carlisa Flat', '374500 ', '5fl.jpg', 7, '- Flat shoes\r\n- MaterialÂ translucentÂ TPU\r\n- WarnaÂ espresso bronze\r\n- DetailÂ footbed\r\n- Classic molded closed toe\r\n- Non-marking outsole\r\n- Signature logo'),
(10, 'Igor Career Shoes', '309000 ', '1fr.jpg', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n'),
(11, 'Christophe Career Shoes', '309000 ', '2fr.jpg', 3, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna coklat\r\n- Detail tali depan\r\n- Rubber sole'),
(12, 'Christophe Career Shoes', '309000 ', '3fr.jpg', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n- Rubber sole'),
(13, 'Pierro Career Shoes', '309000 ', '4fr.jpg', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n- Square toe'),
(14, 'Ajax Career Shoes', '309000 ', '5fr.jpg', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Elastic side\r\n- Square toe'),
(15, 'Eliza Women Oxford Heels ', '242100 ', '1hl.jpg', 6, '- Heels shoes\r\n- Material PUÂ leather\r\n- Warna abu\r\n- ModelÂ oxford shoes\r\n- Round toe\r\n- Tali depan\r\n- Rubber sole\r\n- TinggiÂ chunky heelsÂ 7 cm'),
(16, 'Two Tone T Bar Pumps', '219000 ', '2hl.jpg', 3, '- High heels\r\n- MaterialÂ faux suede\r\n- Kombinasi warna hitam danÂ beige\r\n- DetailÂ ankle strap\r\n- Gold tone buckle\r\n- Strappy pointy toe\r\n- ModelÂ T-bar\r\n- Synthetic outsole\r\n- TinggiÂ heelsÂ 10 cm'),
(17, 'Pippi Suede Pumps', '229000 ', '3hl.jpg', 5, '-Â Pump shoes\r\n- Kombinasi bahanÂ suedeÂ dan PU\r\n- Warna hitam\r\n- DetailÂ studs\r\n- TinggiÂ heels: 11.5 cm'),
(18, 'Eliza Women Oxford Heels ', '242100 ', '4hl.jpg', 6, '- Heels shoes\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- ModelÂ oxford shoes\r\n- Round toe\r\n- Tali depan\r\n- Rubber sole\r\n- TinggiÂ chunky heelsÂ 7 cm\r\n'),
(19, 'Two Tone Pumps', '219000 ', '5hl.jpg', 5, '- High heels\r\n- MaterialÂ faux suede\r\n- Kombinasi warna hitam dan putih\r\n- DetailÂ double straps\r\n- Adjustable buckleÂ danÂ hook fastening\r\n- PUÂ insole\r\n- ResinÂ outsole\r\n- TinggiÂ heelsÂ 7.6 cm'),
(20, 'Flybridge Shoes', '479000 ', '1sl.jpg', 12, '- Slip on\r\n- Material kanvas\r\n- WarnaÂ navy\r\n- Detail tali depan\r\n- Contrast stitching\r\n- Signature logo\r\n- Rubber sole\r\n'),
(21, 'Boat Slip-On Dlx', '749000 ', '2sl.jpg', 5, '-Â Boat shoes\r\n- Material:Â durable canvas upper\r\n- Warna abu-abu\r\n- Kombinasi warna, merah\r\n- DetailÂ slip on\r\n- AksenÂ stripes\r\n-Â Rubber outsole\r\n-Â Signature logo\r\n'),
(22, 'Dark Brown Shoes', '409000 ', '3sl.jpg', 3, '-Â Slip on shoes\r\n- Material PUÂ leather\r\n- WarnaÂ dark brown\r\n- DetailÂ stitching\r\n-Â Rubber sole\r\n'),
(24, 'Vrona Slip On Shoes', '729000 ', '5sl.jpg', 4, '- Slip on shoes\r\n- Material kanvas\r\n- Warna hitam\r\n- DetailÂ stretch insetsÂ di bagianÂ tongue\r\n- Molded sockliner\r\n- Gum rubber outsole\r\n'),
(25, 'Eastham Mens Sneaker Shoe', '599000 ', '1sn.jpg', 5, '- Sneakers\r\n- MaterialÂ suede,Â leather\r\n- Kombinasi warnaÂ off whiteÂ danÂ midnight navy\r\n- AksenÂ stitching\r\n- Textile lining\r\n- Tali depan\r\n- Rubber outsole\r\n'),
(26, 'Sleezy Shoes', '449000 ', '2sn.jpg', 3, '- Sneakers\r\n- Material kanvas\r\n- WarnaÂ khaki\r\n- Detail tali depan\r\n- Contrast stitching\r\n- Signature logo\r\n- Rubber sole\r\n'),
(27, 'Odraslih Leather Shoes', '399000 ', '3sn.jpg', 5, '- Sneakers\r\n- MaterialÂ genuine leather\r\n- Warna hijau\r\n- Detail tali\r\n'),
(28, 'DY 031 Sneakers', '999000 ', '4sn.jpg', 2, '- Sneakers\r\n- MaterialÂ leatherÂ danÂ suede\r\n- WarnaÂ camel\r\n- Detail tali depan\r\n- AksenÂ braided jute strip\r\n- Contrast stitching\r\n- Rubber sole\r\n'),
(29, 'ZoomÂ Stefan Sneaker Shoe', '879000 ', '5sn.jpg', 2, '- Sneakers\r\n- Material kanvas\r\n- Kombinasi warnaÂ midblackÂ dan putih\r\n- DesainÂ mid top\r\n- Nike ZoomÂ midsole\r\n- Tali depan\r\n- Rubber outsoleÂ denganÂ herringbone pattern\r\n'),
(30, 'Joseph Ballaci Wedges', '503100 ', '1wg.jpg', 4, '- Wedges sneakers\r\n- Kombinasi bahanÂ suedeÂ dan PUÂ leather\r\n- Warna hitam\r\n- ModelÂ mid top\r\n- Tali depan danÂ velcro closure\r\n- DetailÂ stitching\r\n- Rubber sole\r\n- TinggiÂ heelsÂ 8 cm\r\n- Down size\r\n'),
(37, 'Lemari Pakaian', '', 'lemari1.jpg', 4, 'Lemari Baju dengan 6 ruang\r\ntest'),
(38, 'Lemari Pakaian', '5678', 'lemari2.jpg', 5, 'Lemari Baju dengan 6 ruang kecil dan 1 ruang gantung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `no_telp` int(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `no_telp`, `alamat`, `kota`) VALUES
(1, '', 0, '', ''),
(2, 'Nia', 84784, 'tembalang', 'semarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `total_bayar` varchar(25) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_kode_barang` (`kode_barang`),
  ADD KEY `fk_id_customer` (`id_customer`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `fk_kode_barang` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
