# 🏥 TechHealth OLTP Database System

## 📌 Project Overview

This project is a **SQL Server-based OLTP (Online Transaction Processing) database system** designed for a health-tech platform. It models real-world entities such as customers, wearable devices, health metrics, sales transactions, and service tickets.

The goal of this project is to demonstrate **strong relational database design, data integrity, and business logic implementation**, along with the ability to extract meaningful insights from transactional data.

---

## 🧱 Database Architecture

The system is designed using a **normalized relational schema** with well-defined relationships:

### Core Entities:

* **Customers** → User demographics and subscription details
* **Devices** → Wearable device data linked to users
* **HealthMetrics** → Activity, sleep, and stress tracking
* **Sales** → Product purchases and transaction details
* **Products** → Product catalog
* **Service_Tickets** → Customer support and issue tracking
* **Coach_Customer** → Many-to-many relationship between users and coaches

---

## ⚙️ Key Features

### ✅ Relational Design

* Fully normalized schema (1NF, 2NF, 3NF principles applied)
* Proper use of **primary keys and foreign keys**
* Junction tables for many-to-many relationships

### ✅ Data Integrity & Constraints

* Foreign key constraints to enforce relationships
* Check constraints for valid data ranges
* Structured schema to prevent redundancy

### ✅ Business Logic Implementation

* **Stored Procedures** for operational workflows (e.g., resolving service tickets)
* **User-Defined Function (UDF)** to calculate a *Wellness Score* based on health metrics
* **Triggers** to audit updates in health-related data

### ✅ Performance Optimization

* Indexes on frequently queried columns
* Efficient joins and aggregation queries

---

## 📊 Analytical Capabilities

The database supports business insights through SQL queries such as:

* Identifying **top active users based on step count**
* Analyzing **revenue by subscription plans and product categories**
* Comparing **device usage vs user activity levels**
* Detecting **high-stress users based on health data**
* Ranking users using a custom **Wellness Score**

---

## 📁 Project Structure

```
TechHealth-OLTP-System
│
├── Tables.sql          -- Table definitions
├── Constraints.sql     -- Foreign keys and constraints
├── Indexes.sql         -- Performance indexes
├── Data.sql            -- Sample data inserts
├── Functions.sql       -- UDF (Wellness Score)
├── Procedures.sql      -- Business logic procedures
├── Triggers.sql        -- Audit triggers
├── Views.sql           -- Predefined query views
├── Analysis.sql        -- Analytical queries
└── README.md
```

---

## ▶️ How to Run the Project

Execute the SQL scripts in the following order:

1. `Tables.sql`
2. `Constraints.sql`
3. `Indexes.sql`
4. `Data.sql`
5. `Functions.sql`
6. `Procedures.sql`
7. `Triggers.sql`
8. `Views.sql`
9. `Analysis.sql`

---

## 🛠️ Tech Stack

* **Database:** Microsoft SQL Server
* **Language:** T-SQL
* **Tools Used:** SQL Server Management Studio (SSMS), Visual Studio Code

---

## 🚀 Key Learnings

Through this project, I developed:

* Strong understanding of **relational database design**
* Hands-on experience with **constraints and normalization**
* Ability to implement **business logic using SQL (procedures, UDFs, triggers)**
* Experience in writing **analytical queries for real-world insights**
* Exposure to **performance optimization using indexing**

---

## 💡 Future Improvements

* Integration with a **data warehouse (OLAP layer)** for advanced analytics
* Building dashboards using Power BI
* Implementing **role-based security and access control**
* Adding more real-world datasets for scalability

---

## 📬 About

This project was built as part of my learning journey in SQL and data systems, with the goal of becoming proficient in **data analytics and data engineering workflows**.

If you're a recruiter or reviewer, feel free to explore the scripts and reach out for further discussion!
