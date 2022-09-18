--UNION operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçları tek bir sonuç kümesi haline getiririz.
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table1 >
UNION
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table2 > --örnek
    (
        SELECT *
        FROM book
        ORDER BY title
        LIMIT 5
    )
UNION
(
    SELECT *
    FROM book
    ORDER BY page_number DESC
    LIMIT 5
);
--example2
(
    SELECT *
    FROM book
    ORDER BY title
    LIMIT 5
)
UNION
(
    SELECT *
    FROM book
    ORDER BY page_number DESC
    LIMIT 5
);
--example3
(
    SELECT id,
        email
    FROM author
)
UNION
(
    SELECT id,
        title
    FROM book
) --UNİON operatörünü kullanırken her iki sorgu içince sütun sayısı ve sütunların veri tipleri aynı olmalıdır.
(
    SELECT id,
        email,
        first_name
    FROM author
)
UNION
(
    SELECT id,
        title
    FROM book
) --hata verir
(
    SELECT id,
        email
    FROM author
)
UNION
(
    SELECT id,
        page_number
    FROM book
) -- hata verir