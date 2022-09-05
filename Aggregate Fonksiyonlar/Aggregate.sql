SELECT MAX(replacement_cost) FROM film;--en büyük replacement_cost
SELECT MIN(replacement_cost) FROM film; --en küçük replacement_cost
SELECT MIN(rental_rate) FROM film;
SELECT AVG(length) FROM film;--ortalama length
SELECT ROUND(AVG(length),3) FROM film;--3 basamaklı ondalık
SELECT SUM(rental_rate) FROM film;--    toplam rental_rate
SELECT MAX(length) FROM film;
SELECT MIN(length) FROM film;