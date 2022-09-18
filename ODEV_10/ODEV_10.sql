--1.Soru
SELECT city.city,
    country.country
FROM city
    LEFT OUTER JOIN country ON city_id = country.country_id;
--2.Soru
SELECT payment.payment_id,
    customer.first_name,
    customer.last_name
FROM customer
    RIGHT JOIN payment ON customer.customer_id = payment.customer_id --3.Soru
SELECT rental.rental_id,
    customer.first_name,
    customer.last_name
FROM customer
    FULL JOIN rental ON customer.customer_id = rental.customer_id;