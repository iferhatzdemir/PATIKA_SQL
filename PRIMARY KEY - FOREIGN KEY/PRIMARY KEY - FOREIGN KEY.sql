-- PRIMARY KEY bir tabloda bulunan veri sıralarını birbirinden ayırmamızı sağlayan bir kısıtlama (constraint) yapısıdır. O tabloda bulunan veri sıralarına ait bir "benzersiz tanımlayıcıdır". 
--
--Benzersiz (Unique) olmalıdır.
--NULL değerine sahip olamaz.
--Bir tabloda en fazla 1 tane bulunur
-- FOREIGN KEY ise bir tablodaki veri sıralarını başka bir tablodaki veri sıralarına bağlamamızı sağlayan bir kısıtlama (constraint) yapısıdır.
--FOREING KEY REFERANS VERİR
CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    page_number INTEGER NOT NULL,
    author_id INTEGER REFERENCES author(id)
);
DROP TABLE books;
SELECT *
FROM book;
insert into book (title, page_number, author_id)
values ('Jackass 3.5 ', 834, 1);
insert into book (title, page_number, author_id)
values (' Baby On Board ', 339, 7);
--iki tablonun sonucunu beraber görüntülemek için JOIN Kullanırız
SELECT *
FROM book
    JOIN author ON author.id = book.author_id;