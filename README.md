# Online Bookstore Database – SQL Relationships Assignment

A SQLite project demonstrating **One-to-Many** and **Many-to-Many** database relationships, built as part of the Moringa School SQL Relationships assignment.

---

## 📁 Repository Structure
## 🗄️ Schema Overview

| Table | Description |
|---|---|
| `Customers` | Stores customer info (id, name) |
| `Books` | Stores book info (id, title) |
| `Orders` | Links customers to orders — **One-to-Many** |
| `Order_Items` | Bridge table linking orders and books — **Many-to-Many** |

## ▶️ How to Run

```bash
sqlite3 bookstore.db < create_tables.sql
sqlite3 bookstore.db < insert_data.sql
sqlite3 -header -column bookstore.db < queries.sql
```
