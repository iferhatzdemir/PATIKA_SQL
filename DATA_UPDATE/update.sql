
--Update yaparken bu söz dizimini kullanıyoruz.
UPDATE author SET first_name='EMRAH SEFA', last_name='Gürkan', email='esg@esg.com' WHERE id=6;
--Eğer update yaptığımı satırı update sırasında tekrar görmek istiyorsak RETURNING * kullanırız.
UPDATE author SET last_name = ' UPDATE ' WHERE first_name = ' Odetta ' RETURNING * ;
--Eğer bir veriyi silmek istiyorsak DELETE FROM <tablo_adı> WHERE <sütun_adı> = <değer> kullanırız.
DELETE FROM author WHERE id = 6 ; 