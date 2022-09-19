-- Kitap sayfas1 say1s1 ortalama kitap sayfasi sayisindan fazla
-- olan kitap isimlerini, yazar isim ve soyisimleri ile birlikta siralayalim.
SELECT book.title,
    author.first_name,
    author.last_name
FROM book
    INNER JOIN author ON book.author_id = author.id
WHERE page_number > (
        SELECT AVG(book.page_number)
        FROM book
    );
-- Film uzunlugu en fazla olan filmlerin isimlerini, uzunlugunu actor isim ve soyisimleri
-- ile birlikte yazdiralim.
SELECT actor.first_name,
    actor.last_name,
    film.title,
    film.length
FROM actor
    JOIN film_actor ON film_actor.actor_id = actor.actor_id
    JOIN film ON film.film_id = film_actor.film_id
WHERE film.length =(
        SELECT MAX(length)
        FROM film
    );