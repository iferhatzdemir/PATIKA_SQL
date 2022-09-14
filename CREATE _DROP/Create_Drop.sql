--CREATE ile tablo oluşturmak
CREATE TABLE <tablo_adı> (
    <sütun_adı> <veri_tip> (kısıtlama_adı>,
    <sütun_adı> <veri_tip> (kısıtlama_adı>
);
--Örnek
CREATE TABLE author(
id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100),
birthday date

);
--Veri Eklemek
CREATE TABLE author(
id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100),
birthday date

);
--Var olan birt tablo üzerinden yeni bir tablo oluşturmak
CREATE TABLE author2 (LIKE author);
--Var olan bir tablo üzerinden verileriyle beraber yeni bir tablo oluşturmak
CREATE TABLE author3  AS SELECT * FROM author;
--Birtablodaki veriyi yeni bir tabloda eklemek
INSERT INTO author2
SELECT * FROM author
WHERE first_name='Sabahattin';

--Bir Tabloyu Silmek istersek 
DROP TABLE author3;

--Burada IF EXISTS yapısını kullanarak yanlış tablo ismi yazımı durumunda hata mesajı almayı önleriz.

DROP TABLE (IF EXISTS) <tablo_adı>;
