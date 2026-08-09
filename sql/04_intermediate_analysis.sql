-- ==========================================
-- MODULE 6: PROFITABILITY & CONTRIBUTION
-- ==========================================

-- Question 42: Overall Profit Margin

SELECT
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore;

-- Question 43: Profit Margin by Category

SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore
GROUP BY category
ORDER BY profit_margin_percent DESC;

-- Question 44: Profit Margin by Market

SELECT
    market,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore
GROUP BY market
ORDER BY profit_margin_percent DESC;

-- Question 45: Sales Contribution by Category

SELECT
    category,
    SUM(sales) AS total_sales,
    ROUND(
        (
            SUM(sales)
            / NULLIF(SUM(SUM(sales)) OVER (), 0)
            * 100
        )::numeric,
        2
    ) AS sales_contribution_percent
FROM superstore
GROUP BY category
ORDER BY sales_contribution_percent DESC;

-- Question 46: Profit Contribution by Category

SELECT
    category,
    SUM(profit) AS total_profit,
    ROUND(
        (
            SUM(profit)
            / NULLIF(SUM(SUM(profit)) OVER (), 0)
            * 100
        )::numeric,
        2
    ) AS profit_contribution_percent
FROM superstore
GROUP BY category
ORDER BY profit_contribution_percent DESC;

-- Question 47: Category Ranking by Profit

SELECT
    category,
    SUM(profit) AS total_profit,
    RANK() OVER (
        ORDER BY SUM(profit) DESC
    ) AS profit_rank
FROM superstore
GROUP BY category
ORDER BY profit_rank;

-- Question 48: Profit Margin by Sub-Category

SELECT
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_percent
FROM superstore
GROUP BY sub_category
ORDER BY profit_margin_percent DESC;

-- Question 49: High Sales but Low Profit Products

WITH product_metrics AS (
    SELECT
        product_id,
        product_name,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit,
        SUM(profit) / NULLIF(SUM(sales), 0) * 100 AS profit_margin
    FROM superstore
    GROUP BY
        product_id,
        product_name
),

overall_metrics AS (
    SELECT
        AVG(total_sales) AS average_product_sales,
        SUM(total_profit) / NULLIF(SUM(total_sales), 0) * 100
            AS overall_profit_margin
    FROM product_metrics
)

SELECT
    p.product_id,
    p.product_name,
    ROUND(p.total_sales::numeric, 2) AS total_sales,
    ROUND(p.total_profit::numeric, 2) AS total_profit,
    ROUND(p.profit_margin::numeric, 2) AS profit_margin
FROM product_metrics p
CROSS JOIN overall_metrics o
WHERE p.total_sales > o.average_product_sales
  AND p.profit_margin < o.overall_profit_margin
ORDER BY p.total_sales DESC;

