--INTERSECT operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçların kesişen verilerini tek bir sonuç kümesi haline getiririz.
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table1 >
INTERSECT
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table2 >;
--INTERSECT operatörü bize kesişen veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için INTERSECT ALL kullanırız.
(
    SELECT *
    FROM book
    ORDER BY page_number DESC
    LIMIT 5
)
INTERSECT
(
    SELECT *
    FROM book
    ORDER BY title
    LIMIT 5
) (
    SELECT *
    FROM book
    ORDER BY page_number DESC
    LIMIT 5
)
INTERSECT ALL
(
    SELECT *
    FROM book
    ORDER BY title
    LIMIT 5
) --EXCEPT operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçların birbirinden çıkarılan verilerini tek bir sonuç kümesi haline getiririz.
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table1 >
EXCEPT
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < table2 > --EXCEPT operatörü bize ilk sorguda olan ancak ikinci sorguda olmayan veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için EXCEPT ALL kullanırız.
    (
        SELECT *
        FROM book
        ORDER BY page_number DESC
        LIMIT 5
    )
EXCEPT (
        SELECT *
        FROM book
        ORDER BY title
        LIMIT 5
    ) (
        SELECT *
        FROM book
        ORDER BY page_number DESC
        LIMIT 5
    )
EXCEPT ALL (
        SELECT *
        FROM book
        ORDER BY title
        LIMIT 5
    ) --intercet operatörünü kullanırken her iki sorgu içince sütun sayısı ve sütunların veri tipleri aynı olmalıdır.
    (
        SELECT id,
            email,
            first_name
        FROM author
    )
INTERSECT
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
INTERSECT
(
    SELECT id,
        page_number
    FROM book
) -- hata verir