-- Isminde en az 4 tane e veya E bulunan kag film vardir?
SELECT COUNT(*)
FROM film
WHERE title ILIKE '%e%e%e%e%';
SELECT title
FROM film
WHERE title ILIKE '%e%e%e%e%';
-- Kategori isimlerini ve kategori basina digen film sayisini yazimz.
SELECT category.name,
    COUNT(*)
FROM category
    JOIN film_category ON film_category.category_id = category.category_id
    JOIN film ON film.film_id = film_category.film_id
GROUP BY category.name;
-- En cok film bulunan rating kategorisi hangisidir?
SELECT COUNT(*),
    rating
FROM film
GROUP BY rating
ORDER BY count DESC
LIMIT 1;
-- Film tablosunda 'k' karakteri ile baglayan en uzun ve replacement_cost en az olan 3 filmi siralay1niz?
SELECT title,
    length,
    replacement_cost
FROM film
WHERE title ILIKE 'K%'
ORDER BY length DESC,
    replacement_cost ASC
LIMIT 3;
-- En cok aligverig yapan migterinin adi nedir?
SELECT customer.first_name,
    customer.last_name,
    SUM(payment.amount)
FROM customer
    JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id,
    customer.first_name,
    customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;