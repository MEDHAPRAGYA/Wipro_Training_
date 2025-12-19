CREATE TABLE Students (
    StudentId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DateOfBirth DATE
);

INSERT INTO Students (FirstName, LastName, Email, DateOfBirth)
VALUES
('Amit', 'Sharma', 'amit@uni.com', '2001-05-10'),
('Amita', 'Sharma', 'amita@uni.com', '2001-05-14'),
('Amitra', 'Sharma', 'amitra@uni.com', '1999-05-10');

SELECT * FROM Students;

SELECT * FROM Students
WHERE FirstName = 'Amit';


SELECT * FROM Students
ORDER BY DateOfBirth;

UPDATE Students
SET Email = 'amitaverma@uni.com'
WHERE FirstName = 'Amita';

DELETE FROM Students
WHERE FirstName = 'Amit';