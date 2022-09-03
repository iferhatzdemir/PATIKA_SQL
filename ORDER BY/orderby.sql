SELECT <sütun_adı>, <sütun_adı> FROM <tablo_adı ORDER BY <sütun_adı>, <sütun_adı>,  ASC|DESC;


--Artan şekilde sıralama için ASC   kullanılır. ASC Yazmasak da artan şekilde sıralar. 
SELECT * FROM film ORDER BY title ASC;

--Azalan şekilde sıralama için DESC kullanılır.
SELECT * FROM film ORDER BY title DESC;

SELECT * FROM film WHERE title LIKE 'A%' ORDER BY title ASC length DESC;