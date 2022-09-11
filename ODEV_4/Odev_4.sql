--1.SORU
SELECT DISTINCT(replacement_cost) FROM film;
--2.SORU
SELECT COUNT(DISTINCT(replacement_cost)) FROM film;
-- Daha hızlı bir sonuç için 
SELECT COUNT(*) FROM (SELECT DISTINCT replacement_cost FROM film) AS temp; -- 00.208 ms
--3.SORU
SELECT COUNT(*) FROM film WHERE title ILIKE 'T%' AND rating='G';

--4.SORU
SELECT COUNT(country) FROM country WHERE country LIKE '_____';

--5.SORU
    SELECT COUNT(city) FROM city WHERE city ILIKE 'r%';

