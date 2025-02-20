-- 1. Membuat database
CREATE DATABASE toko_online;
USE toko_online;

-- 2. Membuat tabel produk
CREATE TABLE produk (
    id INT PRIMARY KEY,
    nama VARCHAR(100),
    harga INT,
    stok INT,
    kategori VARCHAR(50)
);

-- 3. Menambahkan data ke tabel produk
INSERT INTO produk (id, nama, harga, stok, kategori) VALUES 
(1, 'Laptop Asus', 8000000, 10, 'Elektronik'),
(2, 'Mouse Logitech', 250000, 50, 'Aksesoris'),
(3, 'Keyboard Mechanical', 750000, 30, 'Aksesoris'),
(4, 'Monitor 24 Inch', 2000000, 15, 'Elektronik'),
(5, 'Flashdisk 32GB', 120000, 100, 'Penyimpanan'),
(6, 'Headset Gaming', 500000, 20, 'Aksesoris'),
(7, 'SSD 1TB', 1500000, 25, 'Penyimpanan'),
(8, 'Printer Canon', 1300000, 8, 'Elektronik');

-- 4. Menampilkan semua data dari tabel produk
SELECT * FROM produk;

-- 5. Menampilkan produk dengan harga lebih dari 500 ribu
SELECT * FROM produk WHERE harga > 500000;

-- 6. Menampilkan produk dengan stok kurang dari 20
SELECT * FROM produk WHERE stok < 20;

-- 7. Mengurutkan produk berdasarkan harga dari yang termurah
SELECT * FROM produk ORDER BY harga ASC;

-- 8. Mengurutkan produk berdasarkan kategori dan harga tertinggi
SELECT * FROM produk ORDER BY kategori ASC, harga DESC;

-- 9. Mengupdate harga Laptop Asus menjadi 7 juta
UPDATE produk 
SET harga = 7000000 
WHERE id = 1;

-- 10. Menambahkan stok Mouse Logitech sebanyak 10 unit
UPDATE produk 
SET stok = stok + 10 
WHERE id = 2;

-- 11. Menghapus produk dengan id = 5 (Flashdisk 32GB)
DELETE FROM produk WHERE id = 5;

-- 12. Menghapus produk yang memiliki stok kurang dari 5
DELETE FROM produk WHERE stok < 5;

-- 13. Mengelompokkan data berdasarkan kategori dan menghitung jumlah produk
SELECT kategori, COUNT(*) as total_produk FROM produk GROUP BY kategori;

-- 14. Menampilkan kategori yang memiliki lebih dari 5 produk
SELECT kategori, COUNT(*) as total_produk FROM produk GROUP BY kategori HAVING COUNT(*) > 5;

-- 15. Menampilkan rata-rata harga produk per kategori
SELECT kategori, AVG(harga) as rata_harga FROM produk GROUP BY kategori;

-- 16. Menampilkan produk dengan harga tertinggi dalam setiap kategori
SELECT * FROM produk WHERE harga IN (
    SELECT MAX(harga) FROM produk GROUP BY kategori
);