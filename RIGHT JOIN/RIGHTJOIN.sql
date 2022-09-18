--RIGHT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 2 (sağdaki tablo) üzerinden gerçekleştirilir. 
SELECT < sütun_adı >,
    < sütun_adı >...
FROM < tablo1_adı >
    RIGHT JOIN < tablo2_adı > ON < tablo1_adı >.< sütun_adı > = < tablo2_adı >.< sütun_adı >;
--RIGHT OUTER JOIN olarak ta kıllanılır.
SELECT author.first_name,
    author.last_name,
    book.title
FROM book
    RIGHT OUTER JOIN author ON author.id = book.author_id;