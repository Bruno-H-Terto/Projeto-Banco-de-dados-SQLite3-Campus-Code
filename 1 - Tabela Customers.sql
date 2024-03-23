-- SQLite
-- Criando a tabela CUSTOMERS (Clientes)

CREATE TABLE CUTOMERS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT, 
    NAME VARCHAR(50) NOT NULL,
    LASTNAME VARCHAR(50) NOT NULL,
    PHONE VARCHAR(12) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL,
    ADDRESS VARCHAR(40) NOT NULL,
    CITY VARCHAR(50),
    STATE VARCHAR(3) NOT NULL,
    BIRTH_DATA DATE NOT NULL
);

ALTER TABLE CUTOMERS RENAME TO CUSTOMERS;

INSERT INTO CUSTOMERS (NAME, LASTNAME, PHONE, EMAIL, ADDRESS, CITY, STATE, BIRTH_DATA)
 VALUES ('Roberto', 'Silva', '[11]964', 'roberto@gmail.com', 'Rua José, 32', 'São Roque', 'SP', '1987-04-25'),
        ('MARIA', 'Gomes', '[11]974', 'maria@yahoo.com', 'Rua das Flores, 44', 'São Paulo', 'SP', '1988-03-24'),
        ('Renata', 'Antunes', '[11]974', 'renata@hotmail.com', 'Rua dos Antunes, 55', 'Sorocaba', 'SP', '1970-05-01'),
        ('Josefa', 'Duarte', '[11]973', 'josefa20@gmail.com', 'Rua dos Flocos, 387', 'Mairinque', 'SP', '1988-06-18'),
        ('André', 'Linares', '[11]975', 'amdre.lin@gmail.com', 'Rua Palmeiras, 3', 'Rio de Janeiro', 'RJ', '2000-11-04'),
        ('Mário', 'Santana', '[11]974', 'mario@gmail.com', 'Rua das Rosas, 8', 'Salvador', 'BA', '1999-12-15'),
        ('Luís', 'Duarte', '[11]987', 'luis@hormail.com', 'Rua das Orquidias, 18', 'Fortaleza', 'CE', '1985-07-06'),
        ('Dalva', 'Malheiros', '[11]966', 'dalva@gmail.com', 'Rua das Nogueiras, 12', 'São Paulo', 'SP', '1956-08-03'),
        ('Carolina', 'Medeiros', '[11]935', 'carol@ig.com.br', 'Rua dos Jatobás, 1', 'Cajamar', 'SP', '1974-08-21'),
        ('Marcos', 'Rodrigues', '[11]972', 'marcos@uol.com.br', 'Rua dos Amazonas, 89', 'Recife', 'PE', '1966-05-25');

SELECT * FROM CUSTOMERS;