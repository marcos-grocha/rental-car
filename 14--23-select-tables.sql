-- 14 - Construa uma consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- 15 - Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.
SELECT * FROM CARS WHERE YEAR = 2016;

-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT EMPLOYEES.NAME, POSITIONS.DESCRIPTION FROM EMPLOYEES JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID);

-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT  E.NAME          AS 'Nome',
        COUNT(L.ID)     AS 'Total de Locações'
                        FROM LOCATIONS AS L
        JOIN EMPLOYEES  AS E    ON (L.EMPLOYEE_ID = E.ID)
        GROUP BY E.NAME         HAVING COUNT(L.ID) >= 2;

-- 19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT  C.NAME          AS 'Nome', 
        C.LASTNAME      AS 'Sobrenome', 
        COUNT(L.ID)     AS 'Total de Locações'
                        FROM LOCATIONS AS L
        JOIN CUSTOMERS  AS C        ON (L.CUSTOMER_ID = C.ID)
        GROUP BY C.NAME, C.LASTNAME HAVING COUNT(L.ID) >= 2;

-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT  C.NAME          AS 'Nome do Cliente',
        CAR.NAME        AS 'Nome do Automóvel',
        L.START_DATE    AS 'Inicio',
        L.END_DATE      AS 'Fim',
        L.TOTAL         AS 'Total',
        E.NAME          AS 'Nome do Funcionário'
                        FROM LOCATIONS AS L
        JOIN CUSTOMERS  AS C    ON (L.CUSTOMER_ID = C.ID)
        JOIN CARS       AS CAR  ON (L.CAR_ID = CAR.ID)
        JOIN EMPLOYEES  AS E    ON (L.EMPLOYEE_ID = E.ID);

-- 21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'TOTAL DE LOCAÇÕES' FROM LOCATIONS;

-- 22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT ID AS 'ID DA LOCAÇÃO COM MAIOR VALOR', MAX(TOTAL) AS 'VALOR DA LOCAÇÃO' FROM LOCATIONS;

-- 23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT * FROM LOCATIONS WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-25';