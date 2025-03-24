create database TechShop;
use TechShop;
Create table Customers (CustomerID int Primary key ,
Firstname VARCHAR(255)not null,
lastname VARCHAR(255)not null,
email VARCHAR(255) NOT NULL UNIQUE,
Phone VARCHAR(255)not null,
Address text not null);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY ,
    ProductName VARCHAR(255) ,
    Description text,
    Price int );

CREATE TABLE Orders (
    OrderID Int primary key,
    OrderDate date,
    TotalAmount int,
    CustomerID INT foreign key  references Customers(CustomerID) 
);

CREATE TABLE OrderDetails (
    OrderDetailID int primary key,
    Quantity INT ,
	OrderID int foreign key references Orders(OrderID), 
	ProductID int Foreign key references Products(ProductID) 
	);

CREATE TABLE Inventory (
    InventoryID int primary key,
    QuantityInStock INT ,
    LastStockUpdate DATE ,
    ProductID int Foreign key references Products(ProductID)
);



select* from Customers;
select* from Products;
select* from Orders;
select*from OrderDetails;
select* from Inventory;

Insert into Customers (CustomerID,Firstname, lastName, email, Phone, Address) VALUES
(1,'Kaviya', 'Ramesh', 'kaviyaramesh@gmail.com', '1234567890', '123 Main St'),
(2,'Aishwarya', 'Rameshh', 'aishrames@gmail.com', '1234509876', '456 Elm St'),
(3,'Wikki', 'Shiva', 'wikkishiva@gmail.com', '1234534567', '789 Oak St'),
(4,'Shivan', 'Karthik', 'shivak@gmail.com', '9876543210', '321 Pine St'),
(5,'Paru', 'danush', 'paarud@gmail.com', '6789054632', '654 Minagar St'),
(6,'Neha', 'Raghul', 'nehas@gmail.com', '1234567895', '987 sakthi St'),
(7,'Sharmi', 'Senthil', 'sharmis@gmail.com', '1234567896', '741 Kalam St'),
(8,'Soundharya', 'Naren', 'soundharyan@gmail.com', '1234567897', '852 Maplee St'),
(9,'Mathi', 'Rithik', 'mathii@gmail.com', '1234567898', '963 kanch St'),
(10,'Praveena', 'Santhosh', 'praveena@gmail.com', '1234567899', '159 yellow St');

INSERT INTO Products (ProductID,ProductName, Description, Price) VALUES
(1,'Mobile', 'High-performance laptop', 1200),
(2,'Headset', 'High Quality smartphone', 1800),
(3,'Tablet', '10-inch display tablet', 14400),
(4,'watch', 'Fitness tracking watch', 2200),
(5,'Airpods', 'Noise-canceling airpods', 5150),
(6,'PlayStation', 'Next-gen gaming ', 89500),
(7,'Desktop', '4K monitor', 35000),
(8,'Keyboard', 'seamless keyboard', 3600),
(9,'Mouse', 'Wireless  mouse', 1200),
(10,'HardDrive', '1TB external hard drive', 4000);

INSERT INTO Orders (OrderID, OrderDate, TotalAmount) VALUES
(1, '2025-03-01', 2000),
(2, '2025-03-02', 800),
(3, '2025-03-03', 1500),
(4, '2025-03-04', 1200),
(5, '2025-03-05', 600),
(6, '2025-03-06', 900),
(7, '2025-03-07', 700),
(8, '2025-03-08', 450),
(9, '2025-03-09', 350),
(10, '2025-03-10', 500);

INSERT INTO OrderDetails (OrderDetailID, Quantity,OrderID,ProductID) VALUES
(1, 1, 1,2),
(2, 2, 1,1),
(3, 2, 2,3),
(4, 1, 1,8),
(5, 2, 2,5),
(6, 4, 4,8),
(7, 3, 4,9),
(8, 2, 4,7),
(9, 1, 2,4),
(10, 3, 2,2);

INSERT INTO Inventory (InventoryID, QuantityInStock, LastStockUpdate,ProductID) VALUES
(1, 50, '2025-02-28',2),
(2, 100, '2025-02-28',3),
(3, 75, '2025-02-28',1),
(4, 80, '2025-02-28',4),
(5, 60, '2025-02-28',7),
(6, 90, '2025-02-28',5),
(7, 40, '2025-02-28',6),
(8, 110, '2025-02-28',9),
(9, 95, '2025-02-28',8),
(10, 70, '2025-02-28',2);
