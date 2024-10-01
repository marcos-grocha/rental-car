-- 9 - Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina, onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE NAME = 'Carolina'
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9; -- Especifica

-- 10 - Construa uma query SQL para editar a data de nascimento do cliente com nome Josefa para “1986-06-19”.
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE NAME = 'Josefa';
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4; -- Especifica

-- 11 - Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos de “2022” para “2019” da tabela de CARS
UPDATE CARS SET YEAR = '2019' WHERE NAME = 'Fiat Cronos';
UPDATE CARS SET YEAR = '2019' WHERE ID = 4; -- Especifica