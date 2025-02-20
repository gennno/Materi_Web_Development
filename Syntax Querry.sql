-- 1. CREATE DATABASE
CREATE DATABASE toko_online;

-- 2. DROP DATABASE
DROP DATABASE toko_online;

-- 3. USE DATABASE
USE toko_online;

-- 4. CREATE TABLE
CREATE TABLE produk (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    harga DECIMAL(10, 2) NOT NULL,
    stok INT NOT NULL
);

-- 5. ALTER TABLE
ALTER TABLE produk ADD kategori VARCHAR(50);

-- 6. DROP TABLE
DROP TABLE produk;

-- 7. TRUNCATE TABLE
TRUNCATE TABLE produk;

-- 8. INSERT INTO
INSERT INTO produk (nama_produk, harga, stok) 
VALUES ('Laptop', 7500000, 10);

-- 9. SELECT
SELECT * FROM produk;

-- 10. UPDATE
UPDATE produk SET stok = 20 WHERE nama_produk = 'Laptop';

-- 11. DELETE
DELETE FROM produk WHERE nama_produk = 'Laptop';

-- 12. SELECT dengan WHERE
SELECT * FROM produk WHERE harga > 5000000;

-- 13. ORDER BY
SELECT * FROM produk ORDER BY harga DESC;

-- 14. GROUP BY
SELECT kategori, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori;

-- 15. HAVING
SELECT kategori, COUNT(*) AS jumlah_produk FROM produk 
GROUP BY kategori HAVING COUNT(*) > 1;

-- 16. LIMIT
SELECT * FROM produk LIMIT 5;

-- 17. GRANT
GRANT ALL PRIVILEGES ON toko_online.* TO 'user'@'localhost';

-- 18. REVOKE
REVOKE ALL PRIVILEGES ON toko_online.* FROM 'user'@'localhost';

-- 19. START TRANSACTION
START TRANSACTION;
INSERT INTO produk (nama_produk, harga, stok) VALUES ('Mouse', 150000, 50);
COMMIT;

-- 20. ROLLBACK
START TRANSACTION;
INSERT INTO produk (nama_produk, harga, stok) VALUES ('Keyboard', 250000, 30);
ROLLBACK;

-- 21. SAVEPOINT
START TRANSACTION;
INSERT INTO produk (nama_produk, harga, stok) VALUES ('Charger', 500000, 20);
SAVEPOINT sebelum_rollback;
ROLLBACK TO sebelum_rollback;

-- 22. JOIN
-- Membuat tabel tambahan untuk contoh JOIN
CREATE TABLE kategori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(50) NOT NULL
);

INSERT INTO kategori (nama_kategori) VALUES ('Elektronik');
ALTER TABLE produk ADD kategori_id INT;

-- INNER JOIN
SELECT produk.nama_produk, kategori.nama_kategori 
FROM produk
INNER JOIN kategori ON produk.kategori_id = kategori.id;

-- 23. UNION
SELECT nama_produk FROM produk 
UNION 
SELECT nama_kategori FROM kategori;

-- 24. EXISTS
SELECT * FROM produk WHERE EXISTS (
    SELECT * FROM kategori WHERE kategori.id = produk.kategori_id
);

-- 25. NOT EXISTS
SELECT * FROM produk WHERE NOT EXISTS (
    SELECT * FROM kategori WHERE kategori.id = produk.kategori_id
);

-- 26. LIKE
SELECT * FROM produk WHERE nama_produk LIKE '%top%';

-- 27. IN
SELECT * FROM produk WHERE kategori_id IN (1, 2, 3);

-- 28. BETWEEN
SELECT * FROM produk WHERE harga BETWEEN 100000 AND 1000000;

-- 29. COUNT
SELECT COUNT(*) AS total_produk FROM produk;

-- 30. SUM
SELECT SUM(harga) AS total_harga FROM produk;

-- 31. AVG
SELECT AVG(harga) AS rata_rata_harga FROM produk;

-- 32. MIN
SELECT MIN(harga) AS harga_terendah FROM produk;

-- 33. MAX
SELECT MAX(harga) AS harga_tertinggi FROM produk;

-- 34. CONCAT
SELECT CONCAT('Produk: ', nama_produk) AS keterangan FROM produk;

-- 35. CREATE INDEX
CREATE INDEX idx_nama_produk ON produk(nama_produk);

-- 36. DROP INDEX
DROP INDEX idx_nama_produk ON produk;
