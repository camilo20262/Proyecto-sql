
-- Insert data into 'customers' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data into 'categories' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/categories.csv'
INTO TABLE categories
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data into 'employees' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data into 'shippers' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/shippers.csv'
INTO TABLE shippers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data into 'products' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data into 'orders' table from CSV file

LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- Insert data into 'order_details' table from CSV file
LOAD DATA LOCAL INFILE
'C:/Users/tu_usuario/Downloads/order_details.csv'
INTO TABLE order_details
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



