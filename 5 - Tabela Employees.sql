-- SQLite
-- Criando a tabela Employees


CREATE TABLE EMPLOYEES (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        NAME VARCHAR(50) NOT NULL,
        PHONE VARCHAR(20) NOT NULL,
        CONTRACT_DATE DATE NOT NULL,
        POSITION_ID INTEGER NOT NULL,

        FOREIGN KEY (POSITION_ID) REFERENCES POSITIONS(ID));

INSERT INTO EMPLOYEES (NAME, PHONE, CONTRACT_DATE, POSITION_ID)
            VALUES ('Adriana Lemes', '[11] 98789-9999', '2021-04-10', 1),
                   ('Camila Soares', '[11] 92749-9599', '2008-03-25', 3),
                   ('Leonardo Silva', '[11] 91449-9600', '2018-08-26', 5),
                   ('Mayara Gomes', '[11] 92649-9601', '2016-07-18', 2),
                   ('Matheus Alves', '[11] 92749-9602', '2015-03-04', 5),
                   ('Aline Santos', '[11] 99789-3135', '2020-05-06', 3); 

SELECT E.NAME AS 'Nome',
       P.DESCRIPTION AS 'Cargo' 
       FROM EMPLOYEES AS E
       INNER JOIN POSITIONS AS P ON E.POSITION_ID = P.ID;

       