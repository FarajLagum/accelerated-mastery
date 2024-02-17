SELECT * FROM Customers;

SELECT CustomerName, Country  FROM Customers;


/*DISTINCT */
SELECT DISTINCT Country FROM Customers;


/* Count Distinct */
SELECT COUNT(DISTINCT Country) FROM Customers;


/*WHERE Clause*/
SELECT * FROM Customers
WHERE Country='Mexico';


SELECT * FROM Customers
WHERE CustomerID=1;


SELECT * FROM Customers
WHERE CustomerID > 2;


SELECT * FROM Customers
WHERE CustomerID BETWEEN 2 AND 3;

SELECT * FROM Customers
WHERE CustomerID > 1 AND CustomerID < 4;


SELECT * FROM Customers
WHERE Country LIKE 'G%';

SELECT * FROM Customers
WHERE Country IN ('Mexico','USA');


/* ORDER BY */

SELECT * FROM Products
ORDER BY Price;

SELECT * FROM Products
ORDER BY Price DESC;

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Products
ORDER BY ProductName DESC;

SELECT * FROM Products
ORDER BY Price, ProductName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;


SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > 12000;



SELECT * FROM Customers
WHERE Country = 'Mexico' AND (CustomerName LIKE 'A%' OR CustomerName LIKE 'B%');


SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE Country = 'Sweden' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';


/*The NOT Operator*/

SELECT * FROM Customers
WHERE NOT Country = 'Spain';

SELECT * FROM Customers
WHERE NOT Country = 'UK';


/*NOT LIKE*/
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';


/*NOT BETWEEN*/
SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 3 AND 4;

/*NOT IN*/

SELECT * FROM Customers
WHERE City NOT IN ('Berlin', 'Paris', 'London');


/*INSERT INTO*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Jack', 'Oslo', 'Norway');



/*you can insert the same values again*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');




/*IS NULL */
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;


/*IS NOT NULL*/
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;





/*UPDATE & SET*/
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

/*UPDATE Multiple Records*/
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE Country='Mexico'; 


/*Update Warning!*/
/*If you omit the WHERE clause, ALL records will be updated!*/

/*DATE Customers
SET ContactName='Juan';*/


/*DELETE */
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';




DELETE FROM Customers WHERE CustomerID is NULL;



/*dete All Records*/
/*delete all rows in a table without deleting the table*/

DELETE FROM Customers;



/* DROP*/
/*delete the table completely*/

DROP TABLE Customers;


/*Create Table agian*/
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

/*Insret values*/
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');
    

SELECT * FROM Customers; 



/*LIMIT*/
SELECT * FROM Customers LIMIT 3;



SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;


SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;


/*MIN() and MAX() Functions*/

SELECT MIN(Price)
FROM Products;


-- subqueries
SELECT *
FROM Products
WHERE Price = (SELECT MIN(Price) FROM Products);




/*Set Column Name (Alias)*/
/*When you use MIN() or MAX(), the returned column will be named MIN(field) or MAX(field) by default. To give the column a new name, use the AS keyword:*/

SELECT MIN(Price) AS SmallestPrice
FROM Products;


/* COUNT()*/

SELECT COUNT(*)
FROM Products;


SELECT COUNT(*)
FROM Products
WHERE Price > 20; 

/*If you specify a column instead of (*), NULL values will not be counted.*/
SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;

SELECT * FROM Products;

/*DISTINCT*/
/*Ignore Duplicates*/
SELECT COUNT(DISTINCT SupplierID)
FROM Products;

/*AS*/
-- Use an Alias: Give the counted column a name by using the AS keyword.
SELECT COUNT(*) AS [number of records]
FROM Products;


/*Creat table*/
CREATE TABLE OrderDetails (
    OrderDetailID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT
);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40);


SELECT SUM(Quantity) AS total
FROM OrderDetails;


SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;


SELECT SUM(Quantity * 10)
FROM OrderDetails;





SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.OrderDetailID = Products.ProductID;



/*AVG()*/
SELECT AVG(Price)
FROM Products;


SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

-- subqueries
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);



-- LIKE Operator
SELECT * FROM Customers
WHERE CustomerName Not LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

/*The _ wildcard represents a single character.*/
SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

/*The % wildcard represents any number of characters, even zero characters.*/
SELECT * FROM Customers
WHERE city LIKE '%L%';


SELECT * FROM Customers
WHERE CustomerName LIKE 'an%' OR CustomerName LIKE 'b%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';


SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

SELECT * FROM Customers
WHERE Country LIKE 'UK';


-- IN operator
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

/*IN (SELECT)*/
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);


-- BETWEEN
SELECT * FROM Products
WHERE Price BETWEEN 15 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);


SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-09-01' AND '1996-09-19';

-- Aliases
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

/*AS is Optional*/
SELECT CustomerID  ID, CustomerName Customer
FROM Customers;

SELECT ProductName AS [My Great Products]
FROM Products;

SELECT ProductName AS "My Great Products"
FROM Products;

/*Alias for Tables*/
SELECT * FROM Customers AS Persons;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;


SELECT CustomerName, Address || ', ' || PostalCode || ', ' || City || ', ' || Country AS Address
FROM Customers;

-- Concatenate Columns
 
/* MYSQL
 SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;
 */

-- JOIN

/* What comes after FROM is the left table, and comes after JOIN is the right table*.
 * In the examples below, Orders is the left and Customers is the right. 
 *//

SELECT * FROM Customers c; 
SELECT * FROM Orders o; 

SELECT  Orders.CustomerID, Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT  *
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT  *
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT  *
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;


SELECT  *
FROM Orders
FULL JOIN Customers ON Orders.CustomerID=Customers.CustomerID;




-- INNER JOIN
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;


-- LEFT JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;


-- RIGHT JOIN
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- FULL OUTER JOIN / FULL JOIN
/*FULL OUTER JOIN and FULL JOIN are the same.*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA'),
(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA');


-- UNION 
/*The UNION operator is used to combine the result-set of two or more SELECT statements.*/

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers;
ORDER BY City;


/*UNION With WHERE*/
SELECT City, Country FROM Customers
WHERE Country='Mexico'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Mexico'
ORDER BY City;

-- UNION ALL
/*returns the cities (duplicate values also) from both*/

SELECT City, Country FROM Customers
WHERE Country='Mexico'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Mexico'
ORDER BY City;

/*The following SQL statement lists all customers and suppliers:*/
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;


-- GROUP BY
/*The GROUP BY statement groups rows that have the same values into summary*/
/*The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.*/

/*number of customers in each country*/
SELECT COUNT(CustomerID) as nCustemers, Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;





SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


-- HAVING ()
/*aggregate functions*/
/*SQL statement lists the number of customers in each country. Only include countries with more than 1 customers:*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 1;


/*lists the employees that have registered more than 1 orders:*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 1;

-- EXISTS
/*The EXISTS operator is used to test for the existence of any record in a subquery.
The EXISTS operator returns TRUE if the subquery returns one or more records.
*/

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);


SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);


/*The ANY (IN) and ALL operators allow you to perform a comparison between a single column value and a range of other values.*/
-- ANY
/* returns TRUE if ANY of the subquery values meet the condition*/

SELECT ProductName
FROM Products
WHERE ProductID IN
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 10);


 /*copies data from one table into a new table*/
CREATE TABLE CustomersBackup2017 AS
SELECT * FROM Customers;


--INSERT INTO SELECT
/*Copy "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL):*/
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

/*Copy "Suppliers" into "Customers" (fill all columns):*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

/*Copy only the German suppliers into "Customers":*/
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';


-- CASE 
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;



SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);


-- DELETE
--  delete the data inside a table, but not the table itself.
DELETE FROM CustomersBackup2017;


-- DROP TABLE
DROP TABLE CustomersBackup2017;





-- ALTER TABLE

ALTER TABLE Customers
ADD Email varchar(255); -- adds an "Email" column


ALTER TABLE Customers
DROP COLUMN Email; -- deletes the "Email" column




ALTER TABLE Persons
ADD DateOfBirth date;


ALTER TABLE Persons
DROP COLUMN DateOfBirth;



--TEMPORARY TABLE
CREATE TEMPORARY TABLE Germany AS
SELECT * 
FROM Customers
WHERE Customers.Country = 'Germany';

SELECT * FROM Germany;