-- 12 - Construa uma query SQL para excluir o automóvel com nome Hyundai HB20 1.6 da tabela de CARS
DELETE FROM CARS WHERE NAME = 'Hyundai HB20 1.6';
DELETE FROM CARS WHERE ID = 2; -- Especifica

-- 13- Construa uma query SQL para alterar o nome da coluna “PHONE” da tabela de EMPLOYEES, para “PHONE NUMBER”
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;