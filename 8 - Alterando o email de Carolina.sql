-- SQLite
-- Alterando o email da cliente Carolina

UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE EMAIL = 'carol@ig.com.br';

SELECT * FROM CUSTOMERS;