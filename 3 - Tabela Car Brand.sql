-- SQLite
-- Crianda tabela Car Brand

    CREATE TABLE CAR_BRAND (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        BRAND_NAME VARCHAR(20) NOT NULL);



INSERT INTO CAR_BRAND (BRAND_NAME)
            VALUES ('Chevrolet'),
                   ('Toyota'),
                   ('Hyundai'),
                   ('Volkswagen'),
                   ('Jeep'),
                   ('Renault'),
                   ('Honda'),
                   ('Fiat'); 

SELECT * FROM CAR_BRAND;