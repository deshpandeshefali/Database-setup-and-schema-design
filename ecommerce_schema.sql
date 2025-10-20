-- 1. Create Database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- 2. Customers Table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

-- 3. Category Table
CREATE TABLE Category (
    Category_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_Name VARCHAR(100) NOT NULL
);

-- 4. Products Table
CREATE TABLE Products (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0,
    Category_ID INT,
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

-- 5. Orders Table
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE DEFAULT (CURRENT_DATE),
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- 6. Order_Details Table
CREATE TABLE Order_Details (
    OrderDetail_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL,
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

-- 7. Payments Table
CREATE TABLE Payments (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Payment_Date DATE DEFAULT (CURRENT_DATE),
    Payment_Mode VARCHAR(50),
    Amount DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
