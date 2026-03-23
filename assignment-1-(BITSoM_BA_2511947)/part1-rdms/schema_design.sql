-- =========================
-- TABLE CREATION
-- =========================

CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price FLOAT
);

CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100),
    sales_rep_email VARCHAR(100),
    office_address VARCHAR(200)
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    sales_rep_id VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

CREATE TABLE order_items (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =========================
-- INSERT DATA (MIN 5 ROWS)
-- =========================

INSERT INTO customers VALUES 
('C001','Rohan','rohan@gmail.com','Mumbai'),
('C002','Priya','priya@gmail.com','Delhi'),
('C003','Amit','amit@gmail.com','Bangalore'),
('C004','Sneha','sneha@gmail.com','Chennai'),
('C005','Neha','neha@gmail.com','Delhi');

INSERT INTO products VALUES 
('P001','Laptop','Electronics',55000),
('P002','Mouse','Electronics',800),
('P003','Chair','Furniture',8500),
('P004','Notebook','Stationery',120),
('P005','Headphones','Electronics',3200);

INSERT INTO sales_reps VALUES 
('SR01','Anita','anita@company.com','Delhi Office'),
('SR02','Deepak','deepak@company.com','Mumbai Office'),
('SR03','Ravi','ravi@company.com','Bangalore Office'),
('SR04','Kiran','kiran@company.com','Chennai Office'),
('SR05','Meena','meena@company.com','Pune Office');

INSERT INTO orders VALUES 
('ORD001','C001','2024-01-01','SR01'),
('ORD002','C002','2024-01-02','SR02'),
('ORD003','C003','2024-01-03','SR03'),
('ORD004','C004','2024-01-04','SR04'),
('ORD005','C005','2024-01-05','SR05');

INSERT INTO order_items VALUES 
('ORD001','P001',1),
('ORD002','P002',2),
('ORD003','P003',1),
('ORD004','P004',5),
('ORD005','P005',2);