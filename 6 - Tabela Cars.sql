-- SQLite
-- Criando a Tabela Cars


CREATE TABLE CARS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(50) NOT NULL,
    YEAR VARCHAR(4) NOT NULL,
    COLOR VARCHAR(15) NOT NULL,
    KM INTEGER NOT NULL,
    STATUS VARCHAR(18) NOT NULL,
    BRAND_ID INTEGER NOT NULL,
    MODEL_NAME INTEGER NOT NULL,

    FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRAND(ID),
    FOREIGN KEY (MODEL_NAME) REFERENCES CAR_MODEL(ID));


    INSERT INTO CARS (NAME, YEAR, COLOR, KM, STATUS, BRAND_ID, MODEL_NAME)
                VALUES ('Chevrolet Onix LT', '2016', 'Preto', 8000, 'Liberado', 1, 3),
                       ('Hyundai HB20 1.6', '2022', 'Prata', 3000, 'Em manutenção', 3, 3),
                       ('Toyota Yaris', '2021', 'Branca', 10000, 'Liberado', 2, 3),
                       ('Fiat Cronos', '2022', 'Preto', 2500, 'Liberado', 8, 2),
                       ('Honda HR-V', '2018', 'Prata', 40000, 'Em manutenção', 7, 6),
                       ('VW Amarok', '2019', 'Prata', 25000, 'Liberado', 4, 6); 

SELECT * FROM CARS;

