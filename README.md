# E-Commerce Database Schema

## Overview

This project is part of the **SQL Developer Internship - Task 1: Database Setup and Schema Design**. The goal is to create a structured relational database for an **E-Commerce Platform**, showcasing how to design tables, define relationships, and normalize data for efficient storage and retrieval.

## Tools Used

* **MySQL Workbench / SQLiteStudio / pgAdmin**
* **dbdiagram.io** or **draw.io** (for ER Diagram)

## Database Name

`ecommerce_db`

## Entities and Attributes

### 1. **Customers**

| Column      | Type                     | Description        |
| ----------- | ------------------------ | ------------------ |
| Customer_ID | INT (PK, AUTO_INCREMENT) | Unique customer ID |
| Name        | VARCHAR(100)             | Customer's name    |
| Email       | VARCHAR(100, UNIQUE)     | Email address      |
| Phone       | VARCHAR(15)              | Contact number     |
| Address     | VARCHAR(255)             | Shipping address   |

### 2. **Category**

| Column        | Type                     | Description                              |
| ------------- | ------------------------ | ---------------------------------------- |
| Category_ID   | INT (PK, AUTO_INCREMENT) | Unique category ID                       |
| Category_Name | VARCHAR(100)             | Category name (e.g., Electronics, Books) |

### 3. **Products**

| Column       | Type                     | Description               |
| ------------ | ------------------------ | ------------------------- |
| Product_ID   | INT (PK, AUTO_INCREMENT) | Unique product ID         |
| Product_Name | VARCHAR(100)             | Product name              |
| Price        | DECIMAL(10,2)            | Price of the product      |
| Stock        | INT                      | Available quantity        |
| Category_ID  | INT (FK)                 | References Category table |

### 4. **Orders**

| Column       | Type                     | Description               |
| ------------ | ------------------------ | ------------------------- |
| Order_ID     | INT (PK, AUTO_INCREMENT) | Unique order ID           |
| Customer_ID  | INT (FK)                 | References Customer table |
| Order_Date   | DATE                     | Date of order             |
| Total_Amount | DECIMAL(10,2)            | Total bill amount         |

### 5. **Order_Details**

| Column         | Type                     | Description               |
| -------------- | ------------------------ | ------------------------- |
| OrderDetail_ID | INT (PK, AUTO_INCREMENT) | Unique order detail ID    |
| Order_ID       | INT (FK)                 | References Orders table   |
| Product_ID     | INT (FK)                 | References Products table |
| Quantity       | INT                      | Quantity ordered          |
| Subtotal       | DECIMAL(10,2)            | Product subtotal amount   |

### 6. **Payments**

| Column       | Type                     | Description                            |
| ------------ | ------------------------ | -------------------------------------- |
| Payment_ID   | INT (PK, AUTO_INCREMENT) | Unique payment ID                      |
| Order_ID     | INT (FK)                 | References Orders table                |
| Payment_Date | DATE                     | Date of payment                        |
| Payment_Mode | VARCHAR(50)              | Mode of payment (Card, UPI, COD, etc.) |
| Amount       | DECIMAL(10,2)            | Payment amount                         |


## SQL Schema Script

The SQL script `ecommerce_schema.sql` contains:

* Database creation
* Table creation with Primary & Foreign keys
* AUTO_INCREMENT fields
* Data types and constraints

## Normalization

| Normal Form | Description                                                             |
| ----------- | ----------------------------------------------------------------------- |
| **1NF**     | Atomic values, no repeating groups                                      |
| **2NF**     | Every non-key attribute depends on full primary key                     |
| **3NF**     | No transitive dependency; non-key attributes depend only on primary key |

## Key Concepts

* **DDL Commands:** CREATE, ALTER, DROP
* **Relationships:** One-to-One, One-to-Many, Many-to-Many
* **Constraints:** PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL
* **AUTO_INCREMENT:** Automatically generates unique IDs
* **Storage Engine:** InnoDB (default in MySQL)

## Interview Questions & Short Answers

1. **What is Normalization?**

   * Organizing data to reduce redundancy and improve integrity.
2. **Primary vs Foreign Key:**

   * Primary uniquely identifies a record; Foreign connects two tables.
3. **Constraints:**

   * Rules that enforce data integrity (e.g., PK, FK, UNIQUE).
4. **Surrogate Key:**

   * Artificial key (AUTO_INCREMENT) used when no natural key exists.
5. **Avoiding Redundancy:**

   * Apply normalization and maintain relationships.
6. **ER Diagram:**

   * Visual model of entities and their relationships.
7. **Types of Relationships:**

   * One-to-One, One-to-Many, Many-to-Many.
8. **AUTO_INCREMENT:**

   * Generates sequential IDs automatically.
9. **Default Storage Engine:**

   * InnoDB.
10. **Composite Key:**

* Combination of multiple columns to form a unique identifier.

## Author

**Shefali Deshpande**

