--Full JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi her iki tablo üzerinden gerçekleştirilir.
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < tablo1_adı >
    FULL JOIN < tablo2_adı > ON < tablo1_adı >.< sütun_adı > = < tablo2_adı >.< sütun_adı >;
--ÖRNEK
SELECT author.first_name,
    author.last_name,
    book.title
FROM book
    FULL OUTER JOIN author ON author.id = book.author_id;