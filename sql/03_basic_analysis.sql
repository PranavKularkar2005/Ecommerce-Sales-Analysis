-- ==========================================
-- MODULE 1: SALES PERFORMANCE
-- ==========================================

-- Question 1: Total Sales
SELECT SUM(sales) AS total_sales
FROM superstore;

-- Question 2: Total Profit
SELECT SUM(profit) AS total_profit
FROM superstore;

-- Question 3: Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

--Question 4: Average Sales Per Order
SELECT ROUND(AVG(sales)::numeric,2) AS average_sales
FROM superstore;

--Question 5 – Average Profit Per Order
SELECT ROUND(AVG(profit)::numeric,2) AS average_profit
FROM superstore;

--Question 6 – Highest Sale
SELECT MAX(sales) AS highest_sale
FROM superstore;

--Question 7 – Lowest Sale
SELECT MIN(sales) AS lowest_sale
FROM superstore;

-- ==========================================
-- MODULE 2: PRODUCT ANALYSIS
-- ==========================================
-- Question 8: Sales by Category

SELECT
    category,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Question 9: Profit by Category

SELECT
    category,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- Question 10: Sales by Sub-Category

SELECT
    sub_category,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY sub_category
ORDER BY total_sales DESC;

-- Question 11: Profit by Sub-Category

SELECT
    sub_category,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC;

-- Question 12: Top 10 Products by Sales

SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY
    product_id,
    product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Question 13: Top 10 Products by Profit

SELECT
    product_id,
    product_name,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    product_id,
    product_name
ORDER BY total_profit DESC
LIMIT 10;

-- Question 14: Loss-Making Products

SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    product_id,
    product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;

-- Question 14: Number of Loss-Making Products

SELECT COUNT(*) AS loss_making_products
FROM (
    SELECT
        product_id,
        product_name
    FROM superstore
    GROUP BY
        product_id,
        product_name
    HAVING SUM(profit) < 0
) AS loss_products;

-- Question 14B: 10 Products With the Highest Loss

SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    product_id,
    product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;

-- Question 15: Top 10 Products by Quantity Sold

SELECT
    product_id,
    product_name,
    SUM(quantity) AS total_quantity
FROM superstore
GROUP BY
    product_id,
    product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- ==========================================
-- MODULE 3: CUSTOMER ANALYSIS
-- ==========================================

-- Question 16: Top 10 Customers by Sales

SELECT
    customer_id,
    customer_name,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY
    customer_id,
    customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Question 17: Top 10 Customers by Profit

SELECT
    customer_id,
    customer_name,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    customer_id,
    customer_name
ORDER BY total_profit DESC
LIMIT 10;

-- Question 18: Customers With Most Orders

SELECT
    customer_id,
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY
    customer_id,
    customer_name
ORDER BY total_orders DESC
LIMIT 10;

-- Question 19: Sales by Customer Segment

SELECT
    segment,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;

-- Question 20: Profit by Customer Segment

SELECT
    segment,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;

-- Question 21: Average Sales per Customer

SELECT
    ROUND(
        SUM(sales)::numeric
        / COUNT(DISTINCT customer_id),
        2
    ) AS average_sales_per_customer
FROM superstore;

-- Question 22: Customers With Negative Profit

SELECT
    customer_id,
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    customer_id,
    customer_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;

SELECT COUNT(*) AS loss_making_customers
FROM (
    SELECT
        customer_id,
        customer_name
    FROM superstore
    GROUP BY
        customer_id,
        customer_name
    HAVING SUM(profit) < 0
) AS loss_customers;

-- Question 23: Highest-Value Customer

SELECT
    customer_id,
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY
    customer_id,
    customer_name
ORDER BY total_sales DESC
LIMIT 1;

-- ==========================================
-- MODULE 4: REGIONAL ANALYSIS
-- ==========================================

-- Question 24: Sales by Region

SELECT
    region,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Question 25: Profit by Region

SELECT
    region,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

-- Question 26: Sales by Market

SELECT
    market,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY market
ORDER BY total_sales DESC;

-- Question 27: Profit by Market

SELECT
    market,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY market
ORDER BY total_profit DESC;

-- Question 28: Top 10 States by Sales

SELECT
    state,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;

-- Question 29: Top 10 States by Profit

SELECT
    state,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;

-- Question 30: Loss-Making States

SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;

-- Question 30A: Number of Loss-Making States

SELECT COUNT(*) AS loss_making_states
FROM (
    SELECT
        state
    FROM superstore
    GROUP BY state
    HAVING SUM(profit) < 0
) AS loss_states;

-- Question 30B: 10 States With the Highest Loss

SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;

-- Question 31: Average Sales by Region

SELECT
    region,
    ROUND(AVG(sales)::numeric, 2) AS average_sales
FROM superstore
GROUP BY region
ORDER BY average_sales DESC;

-- ==========================================
-- MODULE 5: TIME ANALYSIS
-- ==========================================

--Question 32: Sales by Year

SELECT
    EXTRACT(YEAR FROM order_date::date) AS order_year,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY order_year
ORDER BY order_year;

--Question 33: Profit by Year

SELECT
    EXTRACT(YEAR FROM order_date::date) AS order_year,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY order_year
ORDER BY order_year;

--Question 34: Orders by Year

SELECT
    EXTRACT(YEAR FROM order_date::date) AS order_year,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY order_year
ORDER BY order_year;

--Question 35: Sales by Month

SELECT
    EXTRACT(MONTH FROM order_date::date) AS month_number,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY month_number
ORDER BY month_number;

--Question 36: Profit by Month

SELECT
    EXTRACT(MONTH FROM order_date::date) AS month_number,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY month_number
ORDER BY month_number;

--Question 37: Orders by Month

SELECT
    EXTRACT(MONTH FROM order_date::date) AS month_number,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY month_number
ORDER BY month_number;

--Question 38: Best Sales Month

SELECT
    EXTRACT(MONTH FROM order_date::date) AS month_number,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY month_number
ORDER BY total_sales DESC
LIMIT 1;

--Question 39: Best Profit Month

SELECT
    EXTRACT(MONTH FROM order_date::date) AS month_number,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY month_number
ORDER BY total_profit DESC
LIMIT 1;

-- Question 40: Year-over-Year Sales Change

WITH yearly_sales AS (
    SELECT
        EXTRACT(YEAR FROM order_date::date)::int AS order_year,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY order_year
)

SELECT
    order_year,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY order_year
    ) AS previous_year_sales,
    ROUND(
        (
            (
                total_sales::numeric
                - LAG(total_sales) OVER (ORDER BY order_year)
            )
            /
            NULLIF(
                LAG(total_sales) OVER (ORDER BY order_year),
                0
            )
        ) * 100,
        2
    ) AS sales_growth_percent
FROM yearly_sales
ORDER BY order_year;

--Question 41: Year-over-Year Profit Change

WITH yearly_profit AS (
    SELECT
        EXTRACT(YEAR FROM order_date::date)::int AS order_year,
        SUM(profit) AS total_profit
    FROM superstore
    GROUP BY order_year
)

SELECT
    order_year,
    total_profit,
    LAG(total_profit) OVER (
        ORDER BY order_year
    ) AS previous_year_profit,
    ROUND(
        (
            (total_profit - LAG(total_profit) OVER (ORDER BY order_year))
            / NULLIF(LAG(total_profit) OVER (ORDER BY order_year), 0)
            * 100
        )::numeric,
        2
    ) AS profit_growth_percent
FROM yearly_profit
ORDER BY order_year;



