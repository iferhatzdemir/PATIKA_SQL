--Bir sorgu içerisinde, o sorgunun ihtiyaç duyduğu veri veya verileri getiren sorgulardır.
SELECT column_name [, column_name ]
FROM table1 [, table2 ]
WHERE column_name OPERATOR (
        SELECT column_name [, column_name ]
        FROM table1 [, table2 ] [WHERE]
    );
--Example1
SELECT *
FROM book
WHERE page_number >(
        SELECT page_number
        FROM book
        WHERE title = 'Gülün ADI'
    );
--Example2
SELECT title,
    page_number,
    (
        SELECT MAX(page_number)
        FROM book
    )
FROM book
WHERE page_number > (
        SELECT page_number
        FROM book
        WHERE title = 'Gülün ADI'
    );
--Example3
SELECT title,
    page_number,
    (
        SELECT MAX(page_number)
        FROM book
    ),
    (
        SELECT MAX(page_number)
        FROM book
    ) - page_number AS difference
FROM book
WHERE page_number > (
        SELECT page_number
        FROM book
        WHERE title = 'Gülün ADI'
    );