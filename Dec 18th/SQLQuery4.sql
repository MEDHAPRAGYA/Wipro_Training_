CREATE TABLE Products (
     ProductId INT PRIMARY KEY,
     ProductName VARCHAR(50),
     Price DECIMAL(10,2),
     OrderId INT
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerName VARCHAR (50),
    OrderDate DATE
);

INSERT INTO Products (ProductId, ProductName, Price, OrderId)
VALUES
('1', 'Laptop', '500', '1001'),
('2', 'Mouse', '600', '1001'),
('3', 'Keyboard', '700', '1002'),
('4', 'Headphone', '800', '9999');

INSERT INTO Orders (OrderId, CustomerName)
VALUES
('1001', 'Amit'),
('1002', 'Sumit'),
('1003', 'Rumit');

SELECT * FROM Orders;
SELECT * FROM Products;


SELECT
   o.CustomerName, o.OrderId,
   p.ProductName
   
FROM
   Orders o
INNER JOIN
   Products p ON o.OrderId = p.OrderId;

SELECT
   o.CustomerName, o.OrderId,
   p.ProductName
   FROM
   Orders o
LEFT JOIN
   Products p ON o.OrderId = p.OrderId;

SELECT
   o.CustomerName, o.OrderId,
   p.ProductName
   FROM
   Orders o
RIGHT JOIN
   Products p ON o.OrderId = p.OrderId;



