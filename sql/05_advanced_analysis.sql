-- ==========================================
-- MODULE 7: ADVANCED SQL ANALYSIS
-- ==========================================

-- Question 50: Top 3 Products in Each Category

WITH product_sales AS (
    SELECT
        category,
        product_id,
        product_name,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY
        category,
        product_id,
        product_name
),

ranked_products AS (
    SELECT
        category,
        product_id,
        product_name,
        total_sales,
        RANK() OVER (
            PARTITION BY category
            ORDER BY total_sales DESC
        ) AS sales_rank
    FROM product_sales
)

SELECT
    category,
    product_id,
    product_name,
    total_sales,
    sales_rank
FROM ranked_products
WHERE sales_rank <= 3
ORDER BY
    category,
    sales_rank;

-- Question 51: Top 3 Customers in Each Segment

WITH customer_sales AS (
    SELECT
        segment,
        customer_id,
        customer_name,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY
        segment,
        customer_id,
        customer_name
),

ranked_customers AS (
    SELECT
        segment,
        customer_id,
        customer_name,
        total_sales,
        RANK() OVER (
            PARTITION BY segment
            ORDER BY total_sales DESC
        ) AS sales_rank
    FROM customer_sales
)

SELECT
    segment,
    customer_id,
    customer_name,
    total_sales,
    sales_rank
FROM ranked_customers
WHERE sales_rank <= 3
ORDER BY
    segment,
    sales_rank;

-- Question 52: Product Sales Rank

SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(sales) DESC
    ) AS sales_rank
FROM superstore
GROUP BY
    product_id,
    product_name
ORDER BY sales_rank;

-- Question 53: Running Total of Sales by Year

WITH yearly_sales AS (
    SELECT
        TO_CHAR(order_date::date, 'YYYY') AS order_year,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY TO_CHAR(order_date::date, 'YYYY')
)

SELECT
    order_year,
    total_sales,
    SUM(total_sales) OVER (
        ORDER BY order_year
    ) AS running_total_sales
FROM yearly_sales
ORDER BY order_year;

-- Question 54: Running Total of Profit by Year

WITH yearly_profit AS (
    SELECT
        TO_CHAR(order_date::date, 'YYYY') AS order_year,
        SUM(profit) AS total_profit
    FROM superstore
    GROUP BY TO_CHAR(order_date::date, 'YYYY')
)

SELECT
    order_year,
    total_profit,
    SUM(total_profit) OVER (
        ORDER BY order_year
    ) AS running_total_profit
FROM yearly_profit
ORDER BY order_year;

-- Question 55: Monthly Sales Rank

WITH monthly_sales AS (
    SELECT
        EXTRACT(MONTH FROM order_date::date)::int AS month_number,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY month_number
)

SELECT
    month_number,
    total_sales,
    RANK() OVER (
        ORDER BY total_sales DESC
    ) AS sales_rank
FROM monthly_sales
ORDER BY sales_rank;

-- Question 56: Sales vs Previous Year

WITH yearly_sales AS (
    SELECT
        TO_CHAR(order_date::date, 'YYYY') AS order_year,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY TO_CHAR(order_date::date, 'YYYY')
)

SELECT
    order_year,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY order_year
    ) AS previous_year_sales,
    total_sales
        - LAG(total_sales) OVER (
            ORDER BY order_year
        ) AS sales_difference
FROM yearly_sales
ORDER BY order_year;

-- Question 57: Customer Sales vs Average Customer Sales

WITH customer_sales AS (
    SELECT
        customer_id,
        customer_name,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY
        customer_id,
        customer_name
),

customer_average AS (
    SELECT
        AVG(total_sales) AS average_customer_sales
    FROM customer_sales
)

SELECT
    c.customer_id,
    c.customer_name,
    ROUND(c.total_sales::numeric, 2) AS total_sales,
    ROUND(a.average_customer_sales::numeric, 2) AS average_customer_sales,
    ROUND(
        (c.total_sales - a.average_customer_sales)::numeric,
        2
    ) AS difference_from_average
FROM customer_sales c
CROSS JOIN customer_average a
WHERE c.total_sales > a.average_customer_sales
ORDER BY c.total_sales DESC;