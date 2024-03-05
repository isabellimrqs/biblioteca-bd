/*
SELECT * FROM person.Person;

SELECT * FROM person.EmailAddress;

--Desafio 1 Aula 2.5

SELECT FirstName, LastName from person.Person; 

--Desafio 1 Aula 2.6

SELECT DISTINCT LastName FROM person.Person; 

SELECT * FROM Person.Person where LastName = 'Miller' and FirstName = 'Anna';

SELECT * from Production.Product where color = 'blue';

SELECT * FROM Production.Product where ListPrice >1500 and ListPrice < 5000; 

SELECT * FROM Production.Product where color <> 'red'; 

--Desafio 1 Aula 2.7

SELECT name FROM Production.Product where weight > 500 and weight <= 700;

--Desafio 2 Aula 2.7

SELECT * from HumanResources.Employee where MaritalStatus = 'M' and SalariedFlag = 1; 

--Desafio 3 Aula 2.7

SELECT * from Person.Person where FirstName = 'Peter' and LastName = 'Krebs';
SELECT * FROM Person.EmailAddress where BusinessEntityID = 26; 

-- COUNT

--Desafio 1 Aula 2.8
SELECT COUNT (*)
from Production.Product;

--Desafio 2 Aula 2.8
SELECT COUNT (size)
from Production.Product;

--Desafio 3 Aula 2.8
SELECT COUNT (DISTINCT size)
from Production.Product;

-- TOP
SELECT TOP 10 * FROM Production.Product;

--ORDER BY
SELECT * FROM Person.Person
ORDER BY FirstName, LastName asc

SELECT * FROM Person.Person
ORDER BY FirstName desc  

--Desafio 1 Aula 2.10
SELECT TOP 10 ProductID FROM Production.Product
ORDER BY ListPrice desc 

--Desafio 2 Aula 2.10
SELECT TOP 4 Name, ProductNumber FROM Production.Product ORDER BY ProductID asc; 

--BETWEEN
SELECT * FROM Production.Product
Where ListPrice BETWEEN 1000 and 1500;

SELECT * FROM Production.Product
Where ListPrice NOT BETWEEN 1000 and 1500;

SELECT *
FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate asc; 

--IN 
SELECT * FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

SELECT * FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13); 

--LIKE
SELECT * FROM Person.Person
Where FirstName like 'ovi%';

SELECT * FROM Person.Person
Where FirstName like '%lli';

SELECT * FROM Person.Person
Where FirstName like '%pe%';

SELECT * FROM Person.Person
Where FirstName like '%ro_';

--Desafio 1 Aula 2.14
SELECT COUNT (*) FROM Production.Product WHERE ListPrice > 1500; 

--Desafio 2 Aula 2.14
SELECT COUNT (*) FROM Person.Person WHERE LastName LIKE 'P%'; 

--Desafio 3 Aula 2.14
SELECT COUNT (DISTINCT City) FROM Person.Address; 

--Desafio 4 Aula 2.14
SELECT DISTINCT City FROM Person.Address; 

--Desafio 5 Aula 2.14
SELECT COUNT (*) FROM Production.Product WHERE color = 'red' AND ListPrice BETWEEN 500 AND 1000;

--Desafio 6 Aula 2.14
SELECT COUNT (*) FROM Production.Product WHERE Name LIKE '%road%'; 

-- MIN MAX SUM AVG
SELECT TOP 10 sum(linetotal) AS "Soma" FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(LineTotal) AS "Valor Mínimo" FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX(LineTotal) AS "Valor Máximo" FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(LineTotal) AS "Média" FROM Sales.SalesOrderDetail; */

--GROUP BY
SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail 
GROUP BY SpecialOfferID;

SELECT ProductID, COUNT (ProductID) AS "CONTAGEM"
FROM sales.SalesOrderDetail 
GROUP BY ProductID;

SELECT FirstName, COUNT(FirstName) AS "CONTAGEM" 
FROM Person.Person 
GROUP BY FirstName;

SELECT color,AVG(ListPrice) AS "Média de Preço"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY color;

SELECT MiddleName, COUNT (MiddleName) AS "Contagem"
FROM Person.Person
GROUP BY MiddleName;

SELECT ProductID, AVG(OrderQty) AS "Média"
FROM sales.SalesOrderDetail
GROUP BY ProductID;

SELECT TOP 10 ProductID, SUM(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(linetotal) DESC;
