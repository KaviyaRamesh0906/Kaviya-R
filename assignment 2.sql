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
    ProductName VARCHAR(255) not null ,
    Description text,
    Price decimal(10,2));

CREATE TABLE Orders (
    OrderID Int primary key,
    OrderDate date,
    TotalAmount int,
    CustomerID INT foreign key  references Customers(CustomerID) 
);

drop table OrderDetails;

	CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
	orderid int foreign key references orders(orderId),
	productid int foreign key references products(productId),
    Quantity INT NOT NULL
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

INSERT INTO Products (ProductID, ProductName, Description, Price) VALUES
(1, 'Mobile', 'High-performance smartphone', 1200.00),
(2, 'Headset', 'High-quality audio headset', 1800.00),
(3, 'Tablet', '10-inch display tablet', 14400.00),
(4, 'Smart Watch', 'Fitness tracking watch', 2200.00),
(5, 'AirPods', 'Noise-canceling AirPods', 5150.00),
(6, 'PlayStation', 'Next-gen gaming console', 89500.00),
(7, 'Desktop', '4K display desktop', 35000.00),
(8, 'Keyboard', 'Seamless mechanical keyboard', 3600.00),
(9, 'Mouse', 'Wireless optical mouse', 1200.00),
(10, 'Hard Drive', '1TB external hard drive', 4000.00);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2025-03-01', 2000),
(2, 2, '2025-03-02', 800),
(3, 3, '2025-03-03', 1500),
(4, 4, '2025-03-04', 1200),
(5, 5, '2025-03-05', 600),
(6, 6, '2025-03-06', 900),
(7, 7, '2025-03-07', 700),
(8, 8, '2025-03-08', 450),
(9, 9, '2025-03-09', 350),
(10, 10, '2025-03-10', 500);



INSERT INTO OrderDetails (OrderDetailID,  OrderID, ProductID,quantity) VALUES
(1, 1, 1, 2),
(2, 2, 1, 1),
(3, 2, 2, 3),
(4, 1, 3, 8),
(5, 2, 4, 5),
(6, 4, 5, 8),
(7, 3, 6, 9),
(8, 2, 7, 7),
(9, 1, 8, 4),
(10, 3, 9, 2);


INSERT INTO Inventory (InventoryID, QuantityInStock, LastStockUpdate,ProductID) VALUES
(1, 50, '2025-02-28', 1),
(2, 100, '2025-02-28', 2),
(3, 75, '2025-02-28', 3),
(4, 80, '2025-02-28', 4),
(5, 60, '2025-02-28', 5),
(6, 90, '2025-02-28', 6),
(7, 40, '2025-02-28', 7),
(8, 110, '2025-02-28', 8),
(9, 95, '2025-02-28', 9),
(10, 70, '2025-02-28', 10);

drop table customers;
drop table products;
drop table orders;
drop table OrderDetails;
drop table Inventory;
DROP DATABASE techshop;

--1. Write an SQL query to retrieve the names and emails of all customers.  
select firstname,email from customers;

--2.Write an SQL query to list all orders with their order dates and corresponding customer
--names
SELECT o.orderID, O.orderDate, c.firstname, C.lastname  
FROM Orders O  
INNER JOIN Customers C ON o.customerID = c.customerID;

--3.Insert a new customer record into the "Customers" table:
Insert into Customers (CustomerID,Firstname, lastName, email, Phone, Address) VALUES
(11,'Arjun', 'Ramesh', 'arjun@gmail.com', '9765432189', '123 Blue St');

--4)Increase the prices of all electronic gadgets by 10% in the "Products" table:
UPDATE Products set  Price = Price * 1.10;



--5). Write an SQL query to delete a specific order and its associated order details from the
--"Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter.



--6)Write an SQL query to insert a new order into the "Orders" table. Include the customer ID,
--order date, and any other necessary information.
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)  
VALUES (11, 3, '2025-03-11', 2500);



--7)Write an SQL query to update the contact information (e.g., email and address) of a specific
--customer in the "Customers" table. Allow users to input the customer ID and new contact
--information
update customers set email='eg@gmail.com',address= '123' where customerId=7


--8) Write an SQL query to recalculate and update the total cost of each order in the "Orders"
--table --based on the prices and quantities in the "OrderDetails" table.




--9)Write an SQL query to delete all orders and their associated order details for a specific
--customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID
--as a parameter
DELETE FROM OrderDetails  
WHERE OrderID = ANY (SELECT OrderID FROM Orders WHERE CustomerID = 3);  

DELETE FROM Orders  where customerId=3;



--10. Write an SQL query to insert a new electronic gadget product into the "Products" table,
--including product name, category, price, and any other relevant details.

INSERT INTO Products (ProductID, ProductName, Description, Price)  
VALUES (11, 'Wireless Earbuds', 'Bluetooth noise-canceling earbuds', 4500.00);



--11. Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from
--"Pending" to "Shipped"). Allow users to input the order ID and the new status.

alter table orders add status VARCHAR(255);
UPDATE orders set status='shipped' where orderid=3;

select*from orders;



--12)Write an SQL query to calculate and update the number of orders placed by each customer
--in the "Customers" table based on the data in the "Orders" table.
alter table customers add countorder int default 0;
update customers set countorder=(select count(*) from orders where orders.customerid=customers.customerid
);

SELECT CustomerID, FirstName, LastName, countorder FROM Customers;
