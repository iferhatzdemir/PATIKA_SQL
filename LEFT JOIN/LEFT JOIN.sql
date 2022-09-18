--LEFT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 1 (soldaki tablo) üzerinden gerçekleştirilir. 
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < tablo1_adı >
    LEFT JOIN < tablo2_adı > ON < tablo1_adı >.< sütun_adı > = < tablo2_adı >.< sütun_adı >;
SELECT first_name,
    last_name,
    title
FROM author
    LEFT JOIN book ON author.id = book.author_id;
SELECT COUNT(*)
FROM author;
SELECT first_name,
    last_name,
    title
FROM book
    LEFT JOIN author ON author.id = book.author_id;
INSERT INTO book (title, page_number, author_id)
VALUES ('SECRET', 230, 465);
ALTER TABLE book DROP CONSTRAINT book_author_id_fkey;
SELECT *
FROM book;
SELECT first_name,
    last_name,
    title
FROM book
    LEFT JOIN author ON author.id = book.author_id
WHERE book.id IS NOT NULL
ORDER BY book.title;