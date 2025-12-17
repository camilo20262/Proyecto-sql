
--Database: northwind
CREATE DATABASE northwind; 
USE northwind;

--Table structure for table 'customers'
CREATE TABLE customers (
  customer_id VARCHAR(10) PRIMARY KEY,
  company_name VARCHAR(100),
  contact_name VARCHAR(100),
  contact_title VARCHAR(50),
  city VARCHAR(50),
  country VARCHAR(50)
);
--Table structure for table 'categories'
CREATE TABLE categories (
  categoryID INT PRIMARY KEY AUTO_INCREMENT,
  categoryName VARCHAR(50) NOT NULL,
  description VARCHAR(100)
);
--Table structure for table 'employees'
CREATE TABLE employees (
  employeeID INT PRIMARY KEY AUTO_INCREMENT,
  employeeName VARCHAR(50) NOT NULL,
  title VARCHAR(50),
  city VARCHAR(50),
  country VARCHAR(50),
  reportsTo INT,
  FOREIGN KEY (reportsTo) REFERENCES employees(employeeID) --Self-referencing foreign key
);
--Table structure for table 'shippers'
CREATE TABLE shippers (
  shipperID INT PRIMARY KEY AUTO_INCREMENT,
  companyName VARCHAR(100)
);
--Table structure for table 'products'
CREATE TABLE products (
  productID INT PRIMARY KEY AUTO_INCREMENT,
  productName VARCHAR(100),
  quantityPerUnit VARCHAR(50),
  unitPrice FLOAT,
  discontinued BOOLEAN,
  categoryID INT,
  FOREIGN KEY (categoryID) REFERENCES categories(categoryID)
);
--Table structure for table 'orders'
CREATE TABLE orders (
  orderID INT PRIMARY KEY AUTO_INCREMENT,
  customerID VARCHAR(10),
  employeeID INT,
  orderDate DATE,
  requiredDate DATE,
  shippedDate DATE,
  shipperID INT,
  freight FLOAT,
  FOREIGN KEY (customerID) REFERENCES customers(customer_id),
  FOREIGN KEY (employeeID) REFERENCES employees(employeeID),
  FOREIGN KEY (shipperID) REFERENCES shippers(shipperID)
);
--Table structure for table 'order_details'
CREATE TABLE order_details (
  orderID INT,
  productID INT,
  unitPrice FLOAT,
  quantity INT,
  discount FLOAT,
  PRIMARY KEY (orderID, productID),
  FOREIGN KEY (orderID) REFERENCES orders(orderID),
  FOREIGN KEY (productID) REFERENCES products(productID)
);


