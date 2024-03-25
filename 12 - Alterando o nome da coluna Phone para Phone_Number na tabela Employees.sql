-- SQLite
-- Alterando o nome da coluna Phone na tabela Employees

ALTER TABLE EMPLOYEES RENAME COLUMN PHONE TO PHONE_NUMBER;

SELECT * FROM EMPLOYEES;