-- SQLite
-- Consultas

-- Passo 14 consulta o name, lastname e email dos clientes que moram no estado de SP

SELECT C.NAME,
       C.LASTNAME,
       C.EMAIL 
 FROM CUSTOMERS AS C WHERE STATE='SP';


-- Passo 15 somente os automóveis que estão com o status “Liberado"

SELECT * FROM CARS WHERE STATUS='Liberado';


-- Passo 16 consulta de todos os automóveis do ano 2016.

SELECT * FROM CARS WHERE YEAR='2016';

-- Passo 17 todos os funcionários e seus respectivos cargos

SELECT E.ID, 
       E.NAME,
       P.DESCRIPTION, 
       E.PHONE_NUMBER, 
       E.CONTRACT_DATE 
 FROM EMPLOYEES AS E INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

 -- Passo 18 somente os funcionários que realizaram mais ou igual a 2 locações.