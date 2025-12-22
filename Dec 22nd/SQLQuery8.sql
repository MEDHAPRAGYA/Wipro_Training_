CREATE TABLE Employees (
    EmployeeId INT IDENTITY PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoinDate DATE
);

INSERT INTO Employees (EmployeeName, Department, Salary, JoinDate)
VALUES
('Amit', 'IT', 60000, '2021-01-10'),
('Neha', 'HR', 50000, '2020-06-15'),
('Rahul', 'Finance', 70000, '2019-03-20'),
('Priya', 'IT', 65000, '2022-08-01'),
('Sonal', 'HR', 48000, '2023-02-12');

-- ABS gives absolute value(no minus or plus)
-- ROUND gives rounded value, where (salary / 3.0, 2) , here 2 means rounded value till 2 decimal
--UPPER, LOWER gives upper and lowecase
-- LEN gives length of the name

SELECT Salary, ABS(Salary - 60000) AS SalaryDifference 
FROM Employees;

SELECT Salary, ROUND(Salary / 3.0, 2) AS RoundedValue
FROM Employees;

SELECT
   Employeename,
   UPPER(EmployeeName) AS UpperNAme,
   LOWER(EmployeeName) AS LowerName
FROM Employees;

SELECT EmployeeName, LEN(EmployeeName) AS NameLength
FROM Employees;

-- LEFT (SMT, 2), here 2 means i will write only 2 letters
-- GETDATE gives current date and time
-- YEAR, MONTH gives joinyear and joinmonth
--DATEDIFF gives no. of days in company

SELECT EmployeeName, LEFT(EmployeeName, 2) AS ShortName
FROM Employees;

SELECT GETDATE() AS CurrentDateTime;

SELECT 
  EmployeeName,
  YEAR(JoinDate) AS JoinYear,
  MONTH(JoinDate) AS JoinMonth
FROM Employees;

SELECT 
   EmployeeName,
   DATEDIFF(DAY, JoinDate, GETDATA()) AS DaysInCompany
FROM Employees;

--COUNT no. of employees
--GROUP BY department groups the data as per the department
--SUM total salary
--AVG average salary
--MIN , MAX gives minimum and maximum salary

SELECT COUNT(*) AS TotalEmployees
FROM Employees;

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department

SELECT AVG(Salary) AS AvgSalary
FROM Employees;

SELECT 
   MIN(Salary) AS MinSalary,
   MAX(Salary) AS MaxSalary
FROM Employees;

-- Transaction means all ot nothing, either all will happen or nothing will happen, like amazon taking money to place order
--transaction is used to bundle up many commands. like update and delete in one bundle.
--ROLLBACK occurs when error is found. It undo all the changes made in the current transaction.

BEGIN TRANSACTION;
INSERT INTO Employees (EmployeeName, Salary)
VALUES ('Neha', 55000); --implicit transction

COMMIT;--Explicit transaction

SELECT * FROM Employees

BEGIN TRANSACTION;

INSERT INTO Employees (EmployeeName, Salary)
VALUES ('Rahul', 65000);

ROLLBACK;

BEGIN TRANSACTION;

UPDATE Employees
SET Salary = Salary + 5000
WHERE EmployeeName = 'Amit';


DELETE FROM Employees
WHERE EmployeeName = 'TempUser';

COMMIT;

-----------
SELECT * FROM Employees;
-----------
--SAVEPOINT - set a checkpoint to go back to
--COMMIT - save all the changes

BEGIN TRANSACTION;

INSERT INTO Employees (EmployeeName, Salary)
VALUES ('User1', 50000);

SAVE TRANSACTION SavePoint1;

INSERT INTO Employees (EmployeeName, Salary)
VALUES ('User2', 60000);

ROLLBACK TRANSACTION SavePoint1;

COMMIT;

