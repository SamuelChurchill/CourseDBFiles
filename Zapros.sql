USE sport_equipment
GO

--������ ������� �� ������� ������������, ������� ��������� � ������ �����-���������
/*SELECT * FROM Client
WHERE City = '�����-���������';*/

--������ ������� �� ������� ������������, ������� ��������� ������� ����� ���� �����
/*SELECT * FROM Client
WHERE LastBuyDate < DATEADD(YY,-1, GETDATE());*/

--������ ������� �� ���� ������ � �������� ������, ������� ���������������
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

--������ ������� �� ���� ������ � �������� ������ (���� �� ������ ����), 
--������� ������ �������� ����� ��������� ����������������� ������� �����������
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