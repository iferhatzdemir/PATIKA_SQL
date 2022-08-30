SELECT * 
FROM film
WHERE length = 30 OR length = 60 OR length = 90 OR length = 120;
--------------------------------------------------------------------------------
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <sütun_adı> IN (değer1, değer2, ...);
--------------------------------------------------------------------------------
SELECT *
FROM film
WHERE length IN (30,60,90,120);