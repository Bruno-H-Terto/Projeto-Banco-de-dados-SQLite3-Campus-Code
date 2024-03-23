-- SQLite
-- Criando a tabela Car Model

CREATE TABLE CAR_MODEL (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(20)
);

INSERT INTO CAR_MODEL (MODEL_NAME)
        VALUES ('Conversível'),
               ('Sedã'),
               ('Hatch'),
               ('Coupé'),
               ('Perua'),
               ('SUV'),
               ('Picape'),
               ('Minivan'),
               ('Utilitário'),
               ('Biggy');

SELECT * FROM CAR_MODEL;

UPDATE CAR_MODEL SET MODEL_NAME = 'Buggy' WHERE MODEL_NAME = 'Biggy'; 