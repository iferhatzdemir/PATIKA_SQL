--1. Soru 
SELECT title,length FROM film WHERE title ILIKE '%n' ORDER BY length DESC LIMIT 5;
--2. Soru
SELECT title,length FROM film WHERE title ILIKE '%n' ORDER BY length ASC LIMIT 5 OFFSET 5;
--3. Soru
SELECT*FROM customer WHERE store_id=1 ORDER BY last_name DESC LIMIT 4;