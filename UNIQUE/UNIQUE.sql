--UNIQUE kısıtlaması ile uyguladığımız sütundaki verilerin birbirlerinden farklı benzersiz olmalarını isteriz. PRIMARY KEY kısıtlaması kendiliğinden UNIQUE kısıtlamasına sahiptir.
ALTER TABLE users
ADD UNIQUE (username);