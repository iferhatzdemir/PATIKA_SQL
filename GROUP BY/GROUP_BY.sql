--GROUP_BY
SELECT <sütun_adı>, <sütun_adı>, ... (veya aggregate func)
FROM <tablo_adı>
GROUP BY <sütun_adı>, <sütun_adı>, ...


SELECT rental_rate, COUNT(*) FROM film GROUP BY rental_rate;
SELECT rating,title COUNT (*) FROM film GROUP BY rating;
SELECT  replacement_cost,rental_rate,MIN(length) FROM film GROUP BY replacement_cost,rental_rate;
SELECT COUNT(DISTINCT(replacement_cost)) FROM film;
SELECT  replacement_cost,rental_rate,MIN(length) FROM film GROUP BY replacement_cost,rental_rate ORDER BY MIN(length);