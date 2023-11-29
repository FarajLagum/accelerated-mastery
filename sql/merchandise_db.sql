CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES
(10308, 2, 7, '1996-09-18', 3),
(10309, 37, 3, '1996-09-19', 1),
(10310, 77, 8, '1996-09-20', 2);

   
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');
    
   
   
   CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35);


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


CREATE TABLE Agents (
    AGENT_CODE VARCHAR(5),
    AGENT_NAME VARCHAR(255),
    WORKING_AREA VARCHAR(255),
    COMMISSION DECIMAL(4, 2),
    PHONE_NO VARCHAR(15),
    COUNTRY VARCHAR(255)
);

INSERT INTO Agents (AGENT_CODE, AGENT_NAME, WORKING_AREA, COMMISSION, PHONE_NO, COUNTRY) VALUES
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', 'India'),
('A003', 'Alex', 'London', 0.13, '075-12458969', 'United Kingdom'),
('A008', 'Alford', 'New York', 0.12, '044-25874365', 'USA'),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', 'India'),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', 'India'),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', 'USA'),
('A005', 'Anderson', 'Brisbane', 0.13, '045-21447739', 'Australia'),
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', 'India'),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', 'India'),
('A006', 'McDen', 'London', 0.15, '078-22255588', 'United Kingdom'),
('A004', 'Ivan', 'Toronto', 0.15, '008-22544166', 'Canada'),
('A009', 'Benjamin', 'Hampshire', 0.11, '008-22536178', 'United Kingdom');


CREATE TABLE Categories (
    CategoryID INT,
    CategoryName VARCHAR(255),
    Description VARCHAR(255)
);

INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads');


CREATE TABLE Employees (
    EmployeeID INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    BirthDate DATE,
    Photo VARCHAR(255)
);

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic');


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
(2, 'New Orleans Cajun Delights', 



CREATE TABLE Shippers (
    ShipperID INT,
    ShipperName VARCHAR(255)
);

INSERT INTO Shippers (ShipperID, ShipperName) VALUES
(1, 'Speedy Express'),
(2, 'United Package'),
(3, 'Federal Shipping');
