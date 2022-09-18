--1.Soru
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
)
UNION
(
    SELECT first_name
    FROM customer
    ORDER BY first_name
) --2.Soru
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
)
INTERSECT
(
    SELECT first_name
    FROM customer
    ORDER BY first_name
) --3.SORU
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
) EXPECT (
    SELECT first_name
    FROM customer
    ORDER BY first_name
) --4.SORU
--1.Soru
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
)
UNION ALL
(
    SELECT first_name
    FROM customer
    ORDER BY first_name
) --2.Soru
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
)
INTERSECT ALL
(
    SELECT first_name
    FROM customer
    ORDER BY first_name
) --3.SORU
(
    SELECT first_name
    FROM actor
    ORDER BY first_name
) EXPECT ALL (
    SELECT first_name
    FROM customer
    ORDER BY first_name
)