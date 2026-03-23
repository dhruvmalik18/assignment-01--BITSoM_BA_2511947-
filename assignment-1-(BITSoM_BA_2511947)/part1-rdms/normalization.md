## Anomaly Analysis

### 1. Insert Anomaly
In the orders_flat.csv dataset, customer, product, and sales representative details are stored together in a single table. 
If a new customer wants to be added but has not placed any order, it is not possible to insert their data because fields like order_id, product_id, and quantity are required.

### 2. Update Anomaly
Customer and sales representative details such as customer_name, city, and sales_rep_email are repeated across multiple rows. 
If a customer’s city or a sales representative’s email changes, it must be updated in multiple rows. 
Missing even one update can lead to inconsistent data.

### 3. Delete Anomaly
If an order is deleted, all related information such as customer and product details may also be lost. 
For example, if a customer has only one order and that order is deleted, the customer’s information is also removed unintentionally.

## Conclusion
These anomalies occur because the dataset is denormalized. 
By separating the data into multiple related tables such as customers, products, orders, and sales representatives, these issues can be resolved and data integrity can be maintained.

## Normalization Justification

Keeping all data in a single table may seem simple at first, but it leads to multiple issues in real-world scenarios. In the given orders_flat.csv dataset, customer, product, and sales representative information are stored together in one table, which creates redundancy and inconsistencies.

For example, customer details such as customer_name, email, and city are repeated for every order. If a customer’s city needs to be updated, it must be changed in multiple rows. Missing even one row leads to inconsistent data, which is known as an update anomaly. Similarly, if a product or customer needs to be added without an order, it is not possible due to dependency on order-related fields, leading to insert anomalies.

Another issue is delete anomaly. If an order is deleted, important information about customers or products may also be lost if it exists only in that row.

Normalization solves these problems by dividing the data into multiple related tables such as customers, products, orders, and sales representatives. This reduces redundancy, improves data consistency, and ensures better data integrity.

Therefore, normalization is not over-engineering but a necessary step for designing efficient and reliable database systems.