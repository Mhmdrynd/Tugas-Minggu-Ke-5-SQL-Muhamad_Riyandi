--  TUGAS 5 
-- Menggunakan XAMPP

-- SOAL 1 MEMBUAT TABLE & DATABASE

-- Membuat Database books_store
CREATE DATABASE books_store;

-- Membuat TABLE books
CREATE TABLE books CREATE TABLE books (
    id_Buku INT auto_increment primary key,
    Judul_Buku varchar(45),
    Pengarang varchar(45),
    Tahun_Terbit YEAR,
    Penerbit varchar(45),
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE
    );
-- Membuat TABLE category
CREATE TABLE category(
    id_Category INT auto_increment primary key,
    Nama_Category varchar(45),
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE,
);

-- SOAL 2
-- Memasukan 10 data baru kedalam table books
 INSERT INTO books VALUES 
    (default, 'Building Microservices', 'Sam Newman', 2014, "O'Reilly Media", '2023-09-18', '2023-09-18'),
    (default, 'Clean Code', 'Robert C.Martin', 2008, 'Prentice Hall', 2023-09-18, 2023-09-18),
    (default, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'), 
    (default, 'Design Patterns','Erich Gamma', 1994, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (default, 'Introduction to Algorithms', 'Thomas H.Cormen', 1990, 'MIT Press', '2023-09-18', '2023-09-18'),
    (default, 'The Art of Computer Prog.', 'Donald E.Knuth', 1968, 'Addison-Wesley','2023-09-18','2023-09-18'), 
    (default, 'Clean Architecture','Robert C.Martin', 2017, 'Prentice Hall', '2023-09-18','2023-09-18'), 
    (default, 'Refactoring', 'Martin Fowler', 1999, 'Addison-Wesley','2023-09-18','2023-09-18'), 
    (default, 'Domain-Driven Design', 'Eric Evans', 2003, 'Addison-Wesley','2023-09-18','2023-09-18'),
    (default, 'The Mythical Man-Month', 'Frederick Brooks', 1975, 'Addison-Wesley', '2023-09-18','2023-09-18');
 

--  Menambahkan 10 data baru kedalam table catergory
INSERT INTO category VALUES
    (default, 'Pemerograman', '2023-09-18','2023-09-18'),
    (default, 'Fiksi', '2023-09-18','2023-09-18'),
    (default, 'Nonfiksi', '2023-09-18','2023-09-18'),
    (default, 'Bisnis', '2023-09-18','2023-09-18'),
    (default, 'Teknologi', '2023-09-18','2023-09-18'),
    (default, 'Seni', '2023-09-18','2023-09-18'),
    (default, 'Sejarah', '2023-09-18','2023-09-18'),
    (default, 'Sains', '2023-09-18','2023-09-18'),
    (default, 'Hukum', '2023-09-18','2023-09-18'),
    (default, 'Kesehatan', '2023-09-18','2023-09-18');

-- SOAL 3

-- Menampilkan data table books
SELECT*FROM books;
-- Menampilkan data table category
SELECT*FROM category;
-- Menampilkan kedua data table books dan category
SELECT*FROM books INNER JOIN category;

-- SOAL 4
-- Update Data Tertentu

UPDATE books SET Judul_Buku='Building Microservices: Designing Fine-Grained Systems 1st', Tahun_Terbit=2015 WHERE id_Buku=1;

-- SOAL 5
-- Hapus Data Tertentu

-- Menghapus data dengan id 10 pada table books
DELETE FROM books WHERE id_Buku=10;
-- Menghapus data dengan id 10 pada table category
DELETE FROM category WHERE id_category=10;

-- SOAL 6
-- Tampilkan Data Buku Tertentu
SELECT*FROM books WHRE Judul_Buku='Addison-Wesley'

-- menampilkan data judul buku dengan penerbit Addison-Wesley
SELECT Judul_Buku FROM books WHERE Penerbit = 'Addison-Wesley'; -- Menampilkan Judul bukunya saja
SELECT Judul_Buku, penerbit FROM books WHERE Penerbit = 'Addison-Wesley'; -- Menampilkan judul buku beserta penerbitnya
-- menampilkan data buku dengan rentan tahun terbit 2003 sampai 2023
SELECT*FROM books WHERE Tahun_Terbit >= 2003 AND Tahun_Terbit <= 2023;
-- menampilkan data buku tertentu dengan judul mengandung kata design
SELECT*FROM books WHERE Judul_Buku LIKE '%design%';

-- SOAL 7
-- Buatlah Table Book Category
CREATE TABLE books_categories (
    Id INT auto_increment primary key,
    Id_Book INT,
    id_Category INT,
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE
);


-- SOAL 8
-- Tambahkan Data Baru Pada TAble Book Category

INSERT INTO book_categories VALUES 
(default, 1, 2,'2023-09-18','2023-09-18'),
(default, 5, 3,'2023-09-18','2023-09-18'),
(default, 1, 1,'2023-09-18','2023-09-18');


-- SOAL 9
-- Tampilkan Data Relasi Antar Tabel
SELECT id_Buku, Judul_Buku, Nama_Category FROM books INNER JOIN category;


-- SOAL 10
-- Ubah Struktur Tabel

-- menambahkan kolom jumlah halaman dengan tipe data number
ALTER TABLE Nama_Table ADD Jumlah_Halaman INT;

-- Menambahkan kolom jumlah halaman dengan tipe data number ke table books;
ALTER TABLE books ADD Jumlah_Halaman INT;