-- Berkas: p01_lingkungan_25430059.sql
-- Keterangan: Skrip Inisialisasi Lingkungan Kerja MariaDB & Proyek Mandiri Modul 1
-- Catatan: Password disamarkan menggunakan penanda untuk keamanan repositori Git.

-- ---------------------------------------------------------
-- 1. PENGATURAN BASIS DATA & AKUN PRAKTIKUM (KOPMA)
-- ---------------------------------------------------------
CREATE DATABASE IF NOT EXISTS kopma_059
  CHARACTER SET utf8mb4 
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'mhs_059'@'localhost' IDENTIFIED BY '<password_kerja_mhs>';
GRANT ALL PRIVILEGES ON kopma_059.* TO 'mhs_059'@'localhost';

-- ---------------------------------------------------------
-- 2. PENGATURAN BASIS DATA & AKUN PROYEK MANDIRI (TOKO DARING)
-- ---------------------------------------------------------
CREATE DATABASE IF NOT EXISTS toko_059
  CHARACTER SET utf8mb4 
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'dev_062'@'localhost' IDENTIFIED BY '<password_kerja_dev>';
GRANT ALL PRIVILEGES ON toko_059.* TO 'dev_062'@'localhost';

-- ---------------------------------------------------------
-- 3. AKUN TAMU UNTUK LATIHAN MODIFIKASI (E.1)
-- ---------------------------------------------------------
CREATE USER IF NOT EXISTS 'tamu_059'@'localhost' IDENTIFIED BY '<password_tamu>';
GRANT SELECT ON kopma_059.* TO 'tamu_059'@'localhost';

FLUSH PRIVILEGES;