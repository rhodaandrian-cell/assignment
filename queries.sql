-- ============================================================
-- Online Bookstore Database
-- File: queries.sql
-- Description: Required queries for the assignment
-- ============================================================

PRAGMA foreign_keys = ON;

-- ── Query 1: Show all customers ───────────────────────────────
SELECT * FROM Customers;

-- ── Query 2: Show all books ───────────────────────────────────
SELECT * FROM Books;

-- ── Query 3: Show all orders with customer names ─────────────
SELECT
    Orders.id        AS order_id,
    Customers.name   AS customer_name,
    Orders.order_date
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.id;

-- ── Query 4: Show which books are in each order ───────────────
SELECT
    Orders.id        AS order_id,
    Customers.name   AS customer_name,
    Books.title      AS book_title
FROM Order_Items
JOIN Orders    ON Order_Items.order_id = Orders.id
JOIN Customers ON Orders.customer_id   = Customers.id
JOIN Books     ON Order_Items.book_id  = Books.id
ORDER BY Orders.id;

-- ── Query 5: Show all books ordered by a specific customer ────
SELECT DISTINCT
    Customers.name  AS customer_name,
    Books.title     AS book_title
FROM Order_Items
JOIN Orders    ON Order_Items.order_id = Orders.id
JOIN Customers ON Orders.customer_id   = Customers.id
JOIN Books     ON Order_Items.book_id  = Books.id
WHERE Customers.name = 'Alice Wanjiru';
