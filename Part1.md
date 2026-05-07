# Part 1: SQL Relationships – Concepts

## 1. What is a Database Relationship?

A **database relationship** defines how two or more tables are connected to each other based on shared data (usually keys). Relationships help avoid data duplication and maintain data integrity by linking records across tables instead of repeating the same data everywhere.

---

## 2. Types of Relationships

### One-to-One (1:1)
Each record in Table A relates to **exactly one** record in Table B, and vice versa.  
The foreign key is placed in either table (usually the less-accessed one) and marked as `UNIQUE`.

### One-to-Many (1:M)
One record in Table A can relate to **many** records in Table B, but each record in Table B relates to only one record in Table A.  
The foreign key is placed in the "many" side (Table B).

### Many-to-Many (M:N)
Records in Table A can relate to **many** records in Table B, and records in Table B can also relate to **many** records in Table A.  
This requires a **bridge/junction table** that holds foreign keys from both tables.

---

## 3. What is a Foreign Key?

A **foreign key** is a column (or set of columns) in one table that references the **primary key** of another table. It enforces **referential integrity** — meaning you cannot insert a value in the foreign key column that doesn't exist in the referenced table. It is the mechanism that creates and enforces relationships between tables.

---

## 4. Real-Life Examples

| Relationship | Example |
|---|---|
| **One-to-One (1:1)** | A person has one passport; a passport belongs to one person |
| **One-to-Many (1:M)** | One customer can place many orders; each order belongs to one customer |
| **Many-to-Many (M:N)** | Students enrol in many courses; each course has many students |
