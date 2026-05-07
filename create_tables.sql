-- ============================================================
-- Online Bookstore Database
-- File: create_tables.sql
-- Description: Creates all tables with PKs and FKs
-- ============================================================

-- Enable foreign key enforcement in SQLite
PRAGMA foreign_keys = ON;

-- 1. Customers table
CREATE TABLE IF NOT EXISTS Customers (
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    name      TEXT    NOT NULL
);

-- 2. Books table
CREATE TABLE IF NOT EXISTS Books (
    id    INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT    NOT NULL
);

-- 3. Orders table (One-to-Many: one customer → many orders)
CREATE TABLE IF NOT EXISTS Orders (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date  TEXT    NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

-- 4. Order_Items table (Many-to-Many bridge: orders ↔ books)
CREATE TABLE IF NOT EXISTS Order_Items (
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    book_id  INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (book_id)  REFERENCES Books(id)
);
