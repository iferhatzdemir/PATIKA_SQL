SELECT * FROM customer  WHERE first_name LIKE '%y';
-- Eğer yüzde işareti kullanırsak, yüzde işareti ile başlayan veya biten isimleri getirir.
-- Eğer yüzde işareti kullanmazsak, yüzde işareti ile başlayan veya biten isimleri getirmez.
-- Eğer yüzde işaretinin sağında bir karakter varsa o karakterle biten isimleri getirir.
-- Eğer yüzde işaretinin solunda bir karakter varsa o karakterle başlayan isimleri getirir.
 
SELECT * FROM customer  WHERE first_name LIKE 'A%y';
-- Eğer yüzde işaretinin solunda ve sağında bir karakter varsa o karakterlerle başlayıp biten isimleri getirir. 
--LIKE küçük büyük harf duyarlıdır.
--ILIKE büyük küçük harf duyarlı değildir.
SELECT * FROM customer  WHERE first_name LIKE 'A%y';
--tek bir karakteri belirtmek için _ kullanılır.

Select * from customer where first_name LIKE 'A_dy';
Select * from customer where first_name LIKE 'A_';
-- Bir karakter beklediğizden A_ ile başlayan isimleri getirir. ve iki haneden fazla olamaz.

-- lıke yerine ~~ da kullanılabilir
-- ilike yerine ~~* da kullanılabilir
-- not like yerine !~~ kullanılabilir
-- not ilike yerine !~~* kullanılabilir