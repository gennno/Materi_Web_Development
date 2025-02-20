-- Latihan Praktik untuk Data Definition Language (DDL)

-- 1. Buat database baru bernama "latihan_db"
CREATE DATABASE latihan_db;

-- 2. Gunakan database "latihan_db"
USE latihan_db;

-- 3. Buat tabel bernama "siswa" dengan struktur berikut:
--    - id (INT, Auto Increment, Primary Key)
--    - nama (VARCHAR(100), Tidak Boleh Kosong)
--    - umur (INT)
--    - kelas (VARCHAR(50))
CREATE TABLE siswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    kelas VARCHAR(50)
);

-- 4. Buat tabel bernama "guru" dengan struktur berikut:
--    - id_guru (INT, Auto Increment, Primary Key)
--    - nama_guru (VARCHAR(100), Tidak Boleh Kosong)
--    - mata_pelajaran (VARCHAR(100))
CREATE TABLE guru (
    id_guru INT AUTO_INCREMENT PRIMARY KEY,
    nama_guru VARCHAR(100) NOT NULL,
    mata_pelajaran VARCHAR(100)
);

-- 5. Tambahkan kolom baru "alamat" (VARCHAR(150)) ke tabel "siswa"
ALTER TABLE siswa ADD alamat VARCHAR(150);

-- 6. Ubah tipe data kolom "umur" menjadi TINYINT
ALTER TABLE siswa MODIFY umur TINYINT;

-- 7. Tambahkan kolom baru "no_telepon" (VARCHAR(15)) ke tabel "guru"
ALTER TABLE guru ADD no_telepon VARCHAR(15);

-- 8. Hapus kolom "kelas" dari tabel "siswa"
ALTER TABLE siswa DROP COLUMN kelas;

-- 9. Ganti nama tabel "guru" menjadi "pengajar"
RENAME TABLE guru TO pengajar;

-- 10. Hapus tabel "pengajar" sepenuhnya
DROP TABLE pengajar;

-- 11. Buat tabel bernama "kelas" dengan struktur berikut:
--    - id_kelas (INT, Auto Increment, Primary Key)
--    - nama_kelas (VARCHAR(50), Tidak Boleh Kosong)
--    - wali_kelas (VARCHAR(100))
CREATE TABLE kelas (
    id_kelas INT AUTO_INCREMENT PRIMARY KEY,
    nama_kelas VARCHAR(50) NOT NULL,
    wali_kelas VARCHAR(100)
);

-- 12. Tambahkan kolom baru "jumlah_siswa" (INT) ke tabel "kelas"
ALTER TABLE kelas ADD jumlah_siswa INT;

-- 13. Hapus tabel "kelas"
DROP TABLE kelas;

-- 14. Hapus tabel "siswa" sepenuhnya
DROP TABLE siswa;

-- 15. Hapus database "latihan_db"
DROP DATABASE latihan_db;
