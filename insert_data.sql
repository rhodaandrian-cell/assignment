-- ============================================================
-- Online Bookstore Database
-- File: insert_data.sql
-- Description: Inserts sample data into all tables
-- ============================================================

PRAGMA foreign_keys = ON;

-- ── Customers (5 records) ────────────────────────────────────
INSERT INTO Customers (name) VALUES
    ('Alice Wanjiru'),
    ('Brian Otieno'),
    ('Catherine Mwangi'),
    ('David Kamau'),
    ('Esther Njeri');

-- ── Books (4 records) ────────────────────────────────────────
INSERT INTO Books (title) VALUES
    ('Things Fall Apart'),
    ('Weep Not, Child'),
    ('Half of a Yellow Sun'),
    ('A Grain of Wheat');

-- ── Orders (5 records) ───────────────────────────────────────
INSERT INTO Orders (customer_id, order_date) VALUES
    (1, '2025-01-10'),
    (1, '2025-02-14'),
    (2, '2025-01-22'),
    (3, '2025-03-05'),
    (5, '2025-03-18');

-- ── Order_Items (8 records) ──────────────────────────────────
INSERT INTO Order_Items (order_id, book_id) VALUES
    (1, 1),
    (1, 3),
    (2, 2),
    (2, 4),
    (3, 1),
    (3, 2),
    (4, 3),
    (5, 4);
