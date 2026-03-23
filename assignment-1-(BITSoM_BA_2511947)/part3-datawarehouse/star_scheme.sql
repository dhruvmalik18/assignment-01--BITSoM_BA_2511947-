-- =========================
-- DIMENSION TABLES
-- =========================

CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    date_id DATE,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    revenue FLOAT,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- =========================
-- SAMPLE INSERTS (cleaned data)
-- =========================

INSERT INTO dim_date VALUES
('2024-01-01',2024,1,1),
('2024-01-02',2024,1,2),
('2024-02-01',2024,2,1);

INSERT INTO dim_store VALUES
('S001','Store A','Mumbai'),
('S002','Store B','Delhi'),
('S003','Store C','Bangalore');

INSERT INTO dim_product VALUES
('P001','Laptop','Electronics'),
('P002','Shirt','Clothing'),
('P003','Milk','Groceries');

INSERT INTO fact_sales VALUES
('SALE1','2024-01-01','S001','P001',1,55000),
('SALE2','2024-01-02','S002','P002',2,2400),
('SALE3','2024-02-01','S003','P003',5,300),
('SALE4','2024-02-01','S001','P001',1,55000),
('SALE5','2024-01-02','S002','P003',3,180);