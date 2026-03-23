## Storage Systems

For this hospital system, different storage systems are used based on the use case.

For transactional data like patient records and treatment history, a relational database such as PostgreSQL is used because it ensures ACID properties and data consistency. For real-time ICU data, a streaming system like Kafka is used to handle continuous incoming data efficiently. The raw data is stored in a data lake (such as S3) to allow scalable storage of structured and unstructured data. For reporting and analytics, a data warehouse is used to enable fast queries for dashboards and monthly reports. Additionally, a vector database is used for semantic search so doctors can query patient history in natural language.

## OLTP vs OLAP Boundary

The OLTP system handles real-time operations such as patient records, treatments, and ICU monitoring. This system is optimized for fast inserts and updates.

The OLAP system begins after data is processed and moved into the data warehouse. This layer is used for analytics, reporting, and business intelligence queries such as monthly reports and cost analysis. Separating OLTP and OLAP improves performance and ensures that analytical queries do not affect transactional operations.

## Trade-offs

One major trade-off in this design is the increased system complexity due to multiple components like streaming systems, data lakes, and warehouses. While this improves scalability and performance, it also increases maintenance effort.

To mitigate this, managed services and automation tools can be used to reduce operational overhead. Proper monitoring and logging can also help maintain system reliability.