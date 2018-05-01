DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    ItemID INT NOT NULL,
    ProductName VARCHAR(200) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    PRIMARY KEY (ItemID)
);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (12401, 'Aegean Unisex Wool Greek Fisherman Cap', 'Clothing', 26.93, 2), (11234, 'GoPro Fusion', 'Electronics', 699.99, 13),
 (84564, 'Go Pet Club Cat Tree', 'Pets', 57.70, 27), (89321, 'COOFANDY Mens Casual Hooded Poncho', 'Mens Clothing', 34.99, 21), 
 (12405, 'Marshall Stanmore Wireless Speaker', 'Electronics', 350.00, 25), (54321, 'Banjo Pin', 'Jewlery', 12.99, 1), 
 (12407, 'White Sand Timer Hourglass', 'Home', 57.49, 12), (58439, 'Sleep Whale Memory Foam Pillow', 'Home', 18.95, 4), 
 (68790, 'The Sims 4 Dine Out', 'Video Games', 19.99, 14), (38210, 'Apple Macbook Air Silver', 'Electronics', 808.80, 14);  

 USE bamazon_db;

 CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL,
    OverHeadCosts DECIMAL(10,2) NOT NULL,
    TotalSales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (DepartmentID)
);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ('Automotive', 10000, 0), ('Home', 10000, 0), 
('Childrens Clothing', 10000, 0), ('Electronics', 20000, 0), 
('Garden', 10000, 0), ('Grocery', 15000, 0), 
('Jewlery', 15000, 0), ('Mens Clothing', 10000, 0), ('Pets', 20000, 0),
 ('Toys', 10000, 0), ('Video Games', 10000, 0);   


SHOW TABLES;
CREATE VIEW bamazon_db.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;

