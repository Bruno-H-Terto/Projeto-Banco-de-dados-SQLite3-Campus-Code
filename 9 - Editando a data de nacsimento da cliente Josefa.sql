-- SQLite
-- Editando a data de nascimento da cliente Josefa

UPDATE CUSTOMERS SET BIRTH_DATA = '1986-06-19' WHERE NAME = 'Josefa';

SELECT * FROM CUSTOMERS;