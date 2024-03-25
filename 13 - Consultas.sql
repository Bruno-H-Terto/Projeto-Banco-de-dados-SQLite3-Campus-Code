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

 SELECT COUNT(L.EMPLOYEE_ID) AS 'Locações',
        E.NAME AS 'Nome'
  FROM LOCATIONS AS L
 INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
 GROUP BY EMPLOYEE_ID HAVING COUNT(L.EMPLOYEE_ID) >=2 ;

 SELECT * FROM LOCATIONS;

 -- Passo 19 somente os clientes que realizaram mais ou igual a 2 locações.

 SELECT COUNT(L.CUSTOMER_ID) AS 'Locações realizadas', 
        C.NAME AS 'Nome'
 FROM LOCATIONS AS L
 INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
 GROUP BY CUSTOMER_ID HAVING COUNT(L.CUSTOMER_ID) >=2;

 -- Passo 20 todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação

SELECT L.ID,
       L.START_DATE AS 'Data inicial', 
       L.END_DATE AS 'Data final', 
       printf('R$%.2f',L.TOTAL) AS 'Valor',
       C.NAME AS 'Nome do cliente',
       V.NAME AS 'Nome do automóvel',
       E.NAME AS 'Nome do funcionário' 
 FROM LOCATIONS AS L 
INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS AS V ON (L.CAR_ID = V.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- Passo 21 quantas locações existem na tabela de LOCATIONS

SELECT COUNT(*) AS 'Quantidade de locações' FROM LOCATIONS;

-- Passo 22 qual foi a locação com o TOTAL com maior valor.

SELECT L.ID,
       L.START_DATE AS 'Data inicial', 
       L.END_DATE AS 'Data final', 
       C.NAME AS 'Nome do cliente',
       V.NAME AS 'Nome do automóvel',
       E.NAME AS 'Nome do funcionário', 
       printf('R$%.2f',MAX(L.TOTAL)) AS 'Valor' FROM LOCATIONS AS L
INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS AS V ON (L.CAR_ID = V.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- Passo 23 todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”.

SELECT L.ID,
       L.START_DATE AS 'Data inicial', 
       L.END_DATE AS 'Data final', 
       printf('R$%.2f',L.TOTAL) AS 'Valor',
       C.NAME AS 'Nome do cliente',
       V.NAME AS 'Nome do automóvel',
       E.NAME AS 'Nome do funcionário' 
 FROM LOCATIONS AS L 
INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS AS V ON (L.CAR_ID = V.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
WHERE L.START_DATE >= '2022-05-20' AND L.START_DATE <= '2022-12-25';
