USE sport_equipment
GO

--Запрос выводит из таблицы потребителей, которые находятся в городе Санкт-Петербург
/*SELECT * FROM Client
WHERE City = 'Санкт-Петербург';*/

--Запрос выводит из таблицы потребителей, которые совершали покупку более года назад
/*SELECT * FROM Client
WHERE LastBuyDate < DATEADD(YY,-1, GETDATE());*/

--Запрос выводит из всех таблиц с товарами товары, которые зарезервированы
/*SELECT VCode, Name, WhBalance, Reserved FROM Basketball
WHERE Reserved > 0
UNION 
SELECT VCode, Name, WhBalance, Reserved FROM Football 
WHERE Reserved > 0
UNION
SELECT VCode, Name, WhBalance, Reserved FROM Hockey
WHERE Reserved > 0
UNION 
SELECT VCode, Name, WhBalance, Reserved FROM Workout
WHERE Reserved > 0*/

--Запрос выводит из всех таблиц с товарами товары (если их меньше трех), 
--которые должны остаться после обработки зарезервированных товаров менеджерами
/*SELECT VCode, Name, WhBalance, Reserved, (WhBalance - Reserved) AS Ostatok
FROM Basketball
WHERE (WhBalance - Reserved) < 3
UNION 
SELECT VCode, Name, WhBalance, Reserved, (WhBalance - Reserved) AS Ostatok
FROM Football
WHERE (WhBalance - Reserved) < 3
UNION
SELECT VCode, Name, WhBalance, Reserved, (WhBalance - Reserved) AS Ostatok
FROM Hockey
WHERE (WhBalance - Reserved) < 3
UNION 
SELECT VCode, Name, WhBalance, Reserved, (WhBalance - Reserved) AS Ostatok
FROM Workout
WHERE (WhBalance - Reserved) < 3*/
GO