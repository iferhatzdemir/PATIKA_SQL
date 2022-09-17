--null db de bilinmeyen anlamına gelir
--Tabloda değişiklik yapmak için ALTER TABLE kullanılır
--İçerisinde NULL olan verileri değiştirmek için UPDATE kullanılır
--içerisinde NULL olan verilerin olduğu sutunları NOT NULL olarakc değiştirmek için ALTER TABLE kullanılamaz ERROR : column " username " of relation " users " contains null values " hatası alınır
--Değerin NULL olup olmadığını kontrol etmek için IS NULL kullanılır.
ALTER TABLE < tablo_adı >
ALTER COLUMN < sütun_adı >
SET NOT NULL;
ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;
--NULL değerinden kurtulmak için null olan satırı aşağıdaki sorguyu sildik
DELETE FROM users
WHERE username IS NULL
RETURNING *;