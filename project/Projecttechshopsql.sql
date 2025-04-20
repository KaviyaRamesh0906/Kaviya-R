create database TechShopDB;
USE TechShopDB;

create table Customers (
    CustomerID int primary key identity(1,1),
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Email varchar(100) Unique NOT NULL,
    Phone varchar(15) NOT NULL,
    Address varchar(200) NULL
);



create table Products (
    ProductID int primary key identity(1,1),
    ProductName varchar(100) NOT NULL,
    Description varchar(200) NULL,
    Price decimal(10,2) NOT NULL check(Price > 0)
);



CREATE TABLE Orders (
    OrderID int primary key identity(1,1),
    CustomerID int NOT NULL,
    OrderDate datetime DEFAULT GETDATE(),
    TotalAmount decimal(10,2) default 0,
    OrderStatus varchar(50) default 'Processing',
    foreign key (CustomerID) references Customers(CustomerID)
);

create table OrderDetails (
    OrderDetailID int primary key identity(1,1),
    OrderID int NOT NULL,
    ProductID int NOT NULL,
    Quantity int NOT NULL CHECK (Quantity > 0),
    Discount decimal(3,2) default 0 check (Discount>=0 AND Discount<= 1),
    foreign key (OrderID) references Orders(OrderID),
    foreign key (ProductID) references Products(ProductID)
);

create table Inventory (
    InventoryID int primary key identity(1,1),
    ProductID int NOT NULL,
    QuantityInStock int NOT NULL check (QuantityInStock>= 0),
    LastStockUpdate datetime default getDate(),
     foreign key(ProductID)references Products(ProductID)
);


 create table Payments (
    PaymentID int primary key identity(1,1),
    OrderID int NOT NULL,
    AmountPaid decimal(10,2) NOT NULL,
    Status varchar(50) NOT NULL,
    PaymentDate datetime default getDate(),
     foreign key(OrderID) references Orders(OrderID)
);


