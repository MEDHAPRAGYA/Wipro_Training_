CREATE TABLE Product (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50),
    BrandName VARCHAR(50),
    ManuDate DATE,
    ExpDate DATE,
    Price DECIMAL(10,2)
);

INSERT INTO Product (ProductName, BrandName, ManuDate, ExpDate, Price)
VALUES
('Vitamin A', 'Glitchez', '2001-05-10', '2021-05-10', '100'),
('Vitamin B', 'Glitchez', '2002-05-10', '2022-05-10', '200'),
('Vitamin C', 'Glitchez', '2003-05-10', '2023-05-10', '300'),
('Vitamin D', 'Glitchez', '2004-05-10', '2024-05-10', '400'),
('Vitamin E', 'Glitchez', '2005-05-10', '2025-05-10', '500'),
('Vitamin F', 'Glitchez', '2006-05-10', '2026-05-10', '600'),
('Vitamin G', 'Glitchez', '2007-05-10', '2027-05-10', '700'),
('Vitamin H', 'Glitchez', '2008-05-10', '2028-05-10', '800'),
('Vitamin I', 'Glitchez', '2009-05-10', '2029-05-10', '900'),
('Vitamin J', 'Glitchez', '2010-05-10', '2030-05-10', '1000');


SELECT * FROM Product;


UPDATE Product
SET BrandName = 'Kotty'
WHERE ProductName = 'Vitamin J';

DELETE FROM Product
WHERE ProductName = 'Vitamin I';

