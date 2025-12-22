CREATE TABLE Departments (
   DeptId INT PRIMARY KEY,
   DeptName VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
   EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
   EmployeeName VARCHAR(50),
   Email VARCHAR(50),
   Salary DECIMAL(10,2),
   JoinDate DATE,
   DeptID INT FOREIGN KEY REFERENCES Departments(DeptId)

);

ALTER TABLE Employee
ADD Status VARCHAR(50);

ALTER TABLE Employee
ALTER COLUMN EmployeeName VARCHAR(100);


ALTER TABLE Employee
DROP COLUMN Email;

EXEC sp_help 'Employee';

ALTER TABLE Employee
DROP CONSTRAINT FK__Employee__DeptID__5FB337D6;--first execute this because of foreign key, then delete department table.
DROP TABLE Departments;

CREATE INDEX IDX_Employee_Name
ON Employee(EmployeeName);

CREATE INDEX IDX_Employee_DepartmentId
ON Employee(DeptId);

SELECT * FROM Employee
WHERE DeptId = 1;

-------------------------------------------------------------------------------

--CREATE DATABASE OrderDB;
--GO
USE OrderDB;
GO

CREATE TABLE Customers (
   CustomerId INT PRIMARY KEY,
   CustomerName VARCHAR(100) NOT NULL,
   EmaiL VARCHAR(100)
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    OrderDate DATE,
    OrderAmount INT,
    CustomerId INT NULL,
    FOREIGN KEY (CustomerId) REFERENCES CustomerS(CustomerId)
);

ALTER TABLE Orders
ADD Status VARCHAR(50);

DROP TABLE Orders;

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2),
    Status VARCHAR(100),
    CustomerId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

CREATE INDEX IDX_Orders_CustomerID
ON Orders(CustomerId);

CREATE INDEX IDX_Orders_OrderAmount
ON Orders(OrderAmount);








