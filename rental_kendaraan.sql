-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk rental_kendaraan
CREATE DATABASE IF NOT EXISTS `rental_kendaraan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rental_kendaraan`;

-- membuang struktur untuk table rental_kendaraan.akun
CREATE TABLE IF NOT EXISTS `akun` (
  `id_akun` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_akun`),
  KEY `role` (`id_role`),
  CONSTRAINT `FK_akun_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.akun: ~2 rows (lebih kurang)
INSERT INTO `akun` (`id_akun`, `nama`, `email`, `no_telp`, `username`, `password`, `id_role`) VALUES
	('1111111111111111', 'Admin', 'admin@itenas.ac.id', '081234567891', 'admin', 'admin', 1),
	('1234567890987654', 'Pasha', 'pasha@itenas.ac.id', '081234567890', 'pasha', 'pasha', 2);

-- membuang struktur untuk table rental_kendaraan.kendaraan
CREATE TABLE IF NOT EXISTS `kendaraan` (
  `id_kendaraan` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kendaraan` varchar(50) NOT NULL,
  `merk_kendaraan` varchar(50) NOT NULL,
  `model_kendaraan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id_kendaraan`) USING BTREE,
  KEY `status` (`id_status`),
  CONSTRAINT `FK_kendaraan_status_kendaraan` FOREIGN KEY (`id_status`) REFERENCES `status_kendaraan` (`id_status`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.kendaraan: ~0 rows (lebih kurang)
INSERT INTO `kendaraan` (`id_kendaraan`, `jenis_kendaraan`, `merk_kendaraan`, `model_kendaraan`, `tarif`, `id_status`) VALUES
	('D123PAS', 'Mobil', 'Toyota', 'Avanza', '350000', 1);

-- membuang struktur untuk table rental_kendaraan.role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.role: ~2 rows (lebih kurang)
INSERT INTO `role` (`id_role`, `role`) VALUES
	(1, 'Admin'),
	(2, 'Pelanggan');

-- membuang struktur untuk table rental_kendaraan.sewa
CREATE TABLE IF NOT EXISTS `sewa` (
  `id_sewa` varchar(50) NOT NULL,
  `id_kendaraan` varchar(10) NOT NULL,
  `id_akun` varchar(16) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `lama_sewa` int NOT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id_sewa`),
  KEY `id_kendaraan` (`id_kendaraan`),
  KEY `id_akun` (`id_akun`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `FK_Akun` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_Kendaraan` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_sewa_status_sewa` FOREIGN KEY (`id_status`) REFERENCES `status_sewa` (`id_status`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.sewa: ~0 rows (lebih kurang)

-- membuang struktur untuk table rental_kendaraan.status_kendaraan
CREATE TABLE IF NOT EXISTS `status_kendaraan` (
  `id_status` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.status_kendaraan: ~2 rows (lebih kurang)
INSERT INTO `status_kendaraan` (`id_status`, `status`) VALUES
	(1, 'Tersedia'),
	(2, 'Tidak Tersedia');

-- membuang struktur untuk table rental_kendaraan.status_sewa
CREATE TABLE IF NOT EXISTS `status_sewa` (
  `id_status` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel rental_kendaraan.status_sewa: ~2 rows (lebih kurang)
INSERT INTO `status_sewa` (`id_status`, `status`) VALUES
	(1, 'Sedang Diproses'),
	(2, 'Selesai'),
	(3, 'Dibatalkan');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
