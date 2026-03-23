## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset contained inconsistent date formats.
Resolution: Converted all dates into a standard YYYY-MM-DD format to ensure consistency and proper joins in the data warehouse.

### Decision 2 — Handling NULL Values
Problem: Some fields contained NULL or missing values which could break analysis.
Resolution: Replaced NULL values with appropriate defaults or removed incomplete records to maintain data quality.

### Decision 3 — Consistent Category Naming
Problem: Product categories had inconsistent casing (e.g., electronics, Electronics).
Resolution: Standardized all category values to a uniform format (e.g., proper case) to avoid duplication in analysis.