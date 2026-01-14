# Retail Management System – Oracle PL/SQL

A database-driven Retail Management System built using **Oracle PL/SQL**, demonstrating real-world business logic implementation with enterprise-level database programming concepts.

## Project Overview
This project simulates core retail operations such as product management, customer management, and sales processing.  
All business logic is implemented using **PL/SQL packages**, ensuring modular, reusable, and performance-optimized code.

## Key PL/SQL Concepts Used
- Packages (Specification and Body)
- Stored Procedures
- Functions
- Sequences for primary key generation
- Collections and Records
- BULK COLLECT for performance optimization
- String processing and loop-based data handling

## Core Features
- Add and manage products
- Register customers
- Record sales and calculate billing
- Process bulk sales using collections
- Generate sales reports using BULK COLLECT

## Sample Execution
```sql
EXEC retail_pkg.add_product('Laptop','Electronics',60000,10);
EXEC retail_pkg.add_customer('John','john@example.com','9876543210');
EXEC retail_pkg.record_sale(1,1,2);
EXEC retail_pkg.process_bulk_sales(SYS.ODCIVARCHAR2LIST('1:2','2:1'));
EXEC retail_pkg.sales_report;
