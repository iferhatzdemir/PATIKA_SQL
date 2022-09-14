
SELECT <sütun_adı> AS <geçici_ad>
FROM <tablo_adı>;

SELECT first_name AS isim , last_name AS soyisim FROM actor ;
--AS ile başlayan kısım sütun adıdır.   geçici olarak değiştirilmiş sütun adıdır.
SELECT CONCAT ( first_name , ' ' , last_name ) AS " İsim ve Soyisim " FROM actor ;
