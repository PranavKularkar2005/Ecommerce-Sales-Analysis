-- ==========================================
-- DATA EXPLORATION
-- ==========================================

-- Question 1
-- Total Records

SELECT COUNT(*) AS total_records
FROM superstore;

------------------------------------------------
-- Question 2
-- Total Customers

SELECT COUNT(DISTINCT customer_id)
AS total_customers
FROM superstore;

------------------------------------------------
-- Question 3
-- Total Products

SELECT COUNT(DISTINCT product_id)
AS total_products
FROM superstore;

------------------------------------------------
-- Question 4
-- Categories

SELECT DISTINCT category
FROM superstore
ORDER BY category;

------------------------------------------------
-- Question 5
-- Segments

SELECT DISTINCT segment
FROM superstore
ORDER BY segment;

-----------------------------------------------
-- Question 6
-- Markets

SELECT DISTINCT market
FROM superstore
ORDER BY market;

------------------------------------------------
-- Question 7
-- Regions

SELECT DISTINCT region
FROM superstore
ORDER BY region;

------------------------------------------------
-- Question 8
-- Years

SELECT DISTINCT year
FROM superstore
ORDER BY year;