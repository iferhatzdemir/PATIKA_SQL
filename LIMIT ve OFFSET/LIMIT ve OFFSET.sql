--LIMIT SQL de sorgu sonuçlarını sınırlamak için kullanılır. LIMIT 5, 10 gibi kullanılır. 5. kayıttan itibaren 10 kayıt getir demektir.
SELECT * FROM film WHERE title LIKE 'B%' ORDER BY length DESC LIMIT 10;

--OFFSET SQL de ... dan sonrasını getir demek için kullanılır. OFFSET 5 gibi kullanılır. 5. kayıttan itibaren getir demektir.
SELECT * FROM film WHERE title LIKE 'B%' ORDER BY length DESC OFFSET 6 LIMIT 4;