-- SQLite
-- Criando a tabela Positions


CREATE TABLE POSITIONS (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        DESCRIPTION VARCHAR(50) NOT NULL);

INSERT INTO POSITIONS (DESCRIPTION)
            VALUES ('Gerente de vendas'),
                   ('Gerente de compras'),
                   ('Vendedor'),
                   ('Mecânico'),
                   ('Assistente Administrativo'); 

SELECT * FROM POSITIONS;