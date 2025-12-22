-- Commands

ALTER DATABASE CorpDB
MODIFY NAME = CorpoDB
GO

--DROP DATABASE CorpoDB;
--GO

CREATE DATABASE IndexDemoDB;
GO
USE IndexDemoDB;
GO

CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (EmployeeName, Department, Salary)
VALUES
('Amit', 'IT', 60000),
('Neha', 'HR', 50000),
('Rahul', 'Finance', 70000),
('Priya', 'IT', 65000),
('Sonal', 'HR', 48000),
('Karan', 'IT', 72000),
('Anita', 'Finance', 68000),
('Vikram', 'IT', 80000);

SELECT * FROM Employees
WHERE Department = 'IT';

CREATE INDEX IDX_Employees_Department
ON Employees(Department);
--first we have to write index, them table name, then column name
--it tells sql which column to sort, create side list of just the department, pointing the real data


EXEC sp_helpindex 'Employees';
--primary key is an index, called clustered index, it will physicallly change the table, other key just being in memmory..
--only a table can have one clusterered index, here it is primary key., and it is sorted with primary key(1,2,3....)
--run the index helper tool specifically for employees table.


