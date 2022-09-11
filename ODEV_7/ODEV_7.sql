--1. Soru
SELECT rating,title COUNT (*) FROM film GROUP BY rating;
--2. Soru
SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*)>50 ORDER BY COUNT(*);
--3. Soru
SElECT store_id, COUNT(*) FROM customer GROUP BY store_id ORDER BY COUNT(*);
--4. Soru
SELECT country_id , COUNT(*) FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;
