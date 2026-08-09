-- ============================================================
-- MODULE 8: BUSINESS & OPERATIONAL ANALYSIS
-- ============================================================

-- ============================================================
-- Question 58: Discount vs Profit
-- ============================================================
-- Business Question:
-- How does profitability change at different discount levels?

SELECT
    discount,
    COUNT(*) AS total_records,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore
GROUP BY discount
ORDER BY discount;


-- ============================================================
-- Question 59: Profit Margin by Ship Mode
-- ============================================================
-- Business Question:
-- Which shipping method has the strongest profit margin?

SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore
GROUP BY ship_mode
ORDER BY profit_margin_percent DESC;


-- ============================================================
-- Question 60: Sales by Ship Mode
-- ============================================================
-- Business Question:
-- Which shipping methods contribute the most sales and orders?

SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC;


-- ============================================================
-- Question 61: Profit by Ship Mode
-- ============================================================
-- Business Question:
-- Which shipping method generates the highest total profit?

SELECT
    ship_mode,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY ship_mode
ORDER BY total_profit DESC;


-- ============================================================
-- Question 62: Sales by Order Priority
-- ============================================================
-- Business Question:
-- Which order priority levels contribute the most sales?

SELECT
    order_priority,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY order_priority
ORDER BY total_sales DESC;


-- ============================================================
-- Question 63: Profit by Order Priority
-- ============================================================
-- Business Question:
-- Which order priority levels generate the most profit?

SELECT
    order_priority,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY order_priority
ORDER BY total_profit DESC;


-- ============================================================
-- Question 64: Shipping Cost vs Average Profit
-- ============================================================
-- Business Question:
-- How do average shipping costs compare with average profit
-- across different shipping methods?

SELECT
    ship_mode,
    ROUND(AVG(shipping_cost)::numeric, 2) AS average_shipping_cost,
    ROUND(AVG(profit)::numeric, 2) AS average_profit
FROM superstore
GROUP BY ship_mode
ORDER BY average_shipping_cost DESC;


-- ============================================================
-- Question 65: High Discount Orders With Negative Profit
-- ============================================================
-- Business Question:
-- Which orders received a discount of 20% or more
-- but still resulted in a loss?

SELECT
    order_id,
    product_id,
    product_name,
    discount,
    sales,
    profit
FROM superstore
WHERE discount >= 0.20
  AND profit < 0
ORDER BY profit ASC;