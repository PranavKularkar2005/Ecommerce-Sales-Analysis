
# E-commerce Sales Analysis

A SQL-based analysis of an e-commerce sales dataset using PostgreSQL.  
The project focuses on understanding sales, profit, customers, products, regions, time trends, and operational factors.

---

## About the Project

I built this project to practice SQL on a real-world style sales dataset and understand how SQL can be used to answer business questions.

The analysis started with basic data exploration and gradually moved into more detailed business analysis using aggregation, joins, CTEs, window functions, ranking, and other SQL techniques.

The main goal was not just to calculate numbers, but to understand what those numbers mean from a business perspective.

---

## Dataset

The dataset contains **51,290 records** and includes information about:

- Orders
- Customers
- Products
- Categories
- Sub-categories
- Sales
- Profit
- Discounts
- Shipping costs
- Shipping modes
- Order priority
- Regions
- Markets
- States
- Order and shipping dates

The dataset is stored in:

```text
dataset/superstore.csv
````

---

## Tools Used

* **PostgreSQL** – Database and SQL analysis
* **DBeaver** – SQL development environment
* **SQL** – Data cleaning, analysis, aggregation, CTEs, window functions
* **GitHub** – Project documentation and version control
* **Markdown** – Project documentation

---

## Project Structure

```text
Ecommerce-Sales-Analysis/
│
├── dataset/
│   └── superstore.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_data_exploration.sql
│   ├── 03_basic_analysis.sql
│   ├── 04_intermediate_analysis.sql
│   ├── 05_advanced_analysis.sql
│   └── 06_business_analysis.sql
│
├── screenshots/
│   ├── 01_total_records.png
│   ├── 02_categories.png
│   ├── ...
│   └── 46_high_discount_losses.png
│
├── insights/
│   └── insights.md
│
└── README.md
```

---

# Analysis Modules

## Module 1 — Sales Performance

The first module focused on understanding the overall performance of the business.

### Questions explored

* What are the total sales?
* What is the total profit?
* How many orders are there?
* What is the average sales per order?
* What is the average profit per order?
* What are the minimum and maximum sales?

### Key results

* Total Sales: **12,642,905**
* Total Profit: **1,467,456**
* Total Orders: **25,035**
* Average Sales per Order: **505.01**
* Average Profit per Order: **58.62**

This gave me a baseline understanding of the overall business before moving into product and customer analysis.

---

## Module 2 — Product Analysis

This module focused on understanding which categories and products were generating sales and profit.

### Analysis included

* Sales by category
* Profit by category
* Top-selling products
* Loss-making products
* Product quantity analysis
* Product-level profitability

### Key findings

* Technology generated the highest sales: **4,744,691**
* Technology also generated the highest profit: **663,780.25**
* Office Supplies generated **518,473.66** profit
* Furniture generated **285,203.25** profit
* The Canon imageCLASS 2200 Advanced Copier was one of the strongest products by sales.
* The analysis also identified many loss-making products.

The main takeaway was that high sales do not always mean high profitability.

---

## Module 3 — Customer Analysis

This module looked at customer performance and customer segments.

### Analysis included

* Top customers by sales
* Top customers by profit
* Customers with negative profit
* Sales by customer segment
* Profit by customer segment
* Order frequency

### Key findings

* Consumer was the largest customer segment.
* Consumer generated the highest sales and profit.
* Some customers generated high sales but were still unprofitable.
* Tamara Chand was among the most profitable customers.
* The analysis identified customers with overall negative profit.

This showed why customer profitability is important instead of looking only at customer revenue.

---

## Module 4 — Regional Analysis

This module analyzed performance across regions, markets, and states.

### Analysis included

* Sales by region
* Profit by region
* Sales by market
* Profit by market
* Average sales by region
* Loss-making states

### Key findings

* Central was the highest-selling region with **2,822,399** in sales.
* Central also generated the highest regional profit.
* APAC was the strongest market by sales and profit.
* England ranked highly at the state level for both sales and profit.
* The analysis also identified several loss-making states.

Regional performance was not evenly distributed, which makes geographical analysis useful for identifying areas that need further investigation.

---

## Module 5 — Time Analysis

This module focused on changes in sales, profit, and order volume over time.

### Analysis included

* Sales by year
* Profit by year
* Orders by year
* Monthly sales
* Monthly profit
* Monthly orders
* Year-over-year sales growth
* Year-over-year profit growth

### Key findings

Sales increased from:

**2011 → 2,259,511**

to:

**2014 → 4,300,041**

Profit increased from:

**2011 → 248,940.60**

to:

**2014 → 504,165.70**

Sales growth was:

* 2012: **18.5%**
* 2013: **27.2%**
* 2014: **26.25%**

December generated the highest monthly sales, while November generated the highest monthly profit.

This showed that the month with the highest sales was not necessarily the most profitable month.

---

## Module 6 — Profitability & Contribution

This module focused on understanding how efficiently sales were converted into profit.

### Analysis included

* Overall profit margin
* Profit margin by category
* Profit margin by market
* Profit contribution by category
* Profit margin by sub-category
* High-sales, low-profit products

### Key findings

* Overall profit margin: **11.61%**
* Technology profit margin: **13.99%**
* Office Supplies profit margin: **13.69%**
* Furniture profit margin: **6.94%**

Technology contributed approximately **37.53% of sales** but **45.23% of profit**.

Furniture contributed approximately **32.52% of sales** but only **19.44% of profit**.

This was one of the most important findings of the project because it showed that sales contribution and profit contribution can be very different.

---

## Module 7 — Advanced SQL Analysis

This module was used to go beyond simple `GROUP BY` queries.

### SQL techniques used

* Common Table Expressions (CTEs)
* Window Functions
* `RANK()`
* `ROW_NUMBER()`
* `LAG()`
* `PARTITION BY`
* Running totals
* Ranking within categories
* Ranking customers within segments
* Year-over-year comparisons

### Analysis included

* Top products within each category
* Top customers within each segment
* Product sales ranking
* Running total of sales
* Monthly ranking
* Year-over-year growth

The running total analysis showed how sales accumulated over the four-year period and reached **12,642,905** by the end of the dataset period.

This module helped me practice SQL techniques that are commonly used for analytical reporting.

---

## Module 8 — Business & Operational Analysis

The final module focused on business and operational factors that can affect profitability.

### Analysis included

* Discount vs profit
* Profit margin by shipping mode
* Sales by shipping mode
* Orders by shipping mode
* Profit by shipping mode
* Order priority analysis
* Average shipping cost
* High-discount loss-making orders

### Key findings

At **0% discount**, the dataset generated approximately:

* Sales: **6.99M**
* Profit: **1.77M**
* Profit margin: **25.32%**

At higher discount levels, profitability generally decreased.

For example:

* 20% discount → **9.78% profit margin**
* 30% discount → **-10.42%**
* 50% discount → **-48.94%**

Standard Class was the dominant shipping method:

* Sales: **7.58M**
* Orders: **15,154**
* Profit: approximately **890.6K**
* Average shipping cost: **19.97**

Same Day had the highest average shipping cost at approximately **42.94**.

The analysis also identified individual high-discount orders that resulted in significant losses.

---

# Overall Business Insights

After completing all eight modules, these were the main points I found:

### 1. Technology is the strongest category

Technology generated the highest sales and profit and also had the highest category profit margin.

### 2. Furniture needs attention

Furniture generated a large share of sales but its profit margin was much lower than Technology and Office Supplies.

### 3. Consumer is the largest customer segment

Consumer customers generated the highest sales and profit compared with Corporate and Home Office.

### 4. Sales do not always mean profitability

Some high-selling customers and products were still generating losses.

### 5. Regional performance varies significantly

Central and APAC were strong performers, while several states showed negative overall profit.

### 6. Business performance improved over time

Sales, profit, and order volume increased from 2011 through 2014.

### 7. Sales and profit have different monthly patterns

December had the highest sales, while November had the highest profit.

### 8. Technology contributes more profit than its sales share

Technology generated a larger percentage of total profit than its percentage of total sales.

### 9. Standard Class was the most widely used shipping method

It generated the highest sales and total profit while also having the lowest average shipping cost.

### 10. High discounts can create losses

The analysis showed a clear profitability problem with several heavily discounted orders.

---

# SQL Skills Practiced

During this project I practiced:

```text
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
DISTINCT
LIMIT
Aggregate Functions
CASE
JOINs
Subqueries
CTEs
Date Functions
EXTRACT
Window Functions
PARTITION BY
RANK()
ROW_NUMBER()
LAG()
Running Totals
Year-over-Year Analysis
Profit Margin Calculations
Conditional Filtering
```

---

# Screenshots

The `screenshots` folder contains the query results from the analysis.

There are **46 screenshots** covering:

* Overall performance
* Categories
* Markets
* Customers
* Regions
* Time analysis
* Profitability
* Advanced SQL
* Discounts
* Shipping
* Order priority

---

# Detailed Insights

More detailed findings from all eight modules are available here:

[View Detailed Insights](insights/insights.md)

---

# How to Use This Project

### 1. Download the repository

Clone or download this repository from GitHub.

### 2. Set up PostgreSQL

Create a PostgreSQL database and import the `superstore.csv` dataset.

### 3. Open the project in DBeaver

Open **DBeaver** and connect it to your PostgreSQL database.

DBeaver was used to write and execute the SQL queries in this project.

### 4. Open the SQL files

The SQL files are organized in the order in which I performed the analysis:

```text
01_data_cleaning.sql
02_data_exploration.sql
03_basic_analysis.sql
04_intermediate_analysis.sql
05_advanced_analysis.sql
06_business_analysis.sql
````

### 5. Run the queries

Open the required `.sql` file in DBeaver and execute the queries against the PostgreSQL database.

The query results can be compared with the screenshots available in the `screenshots` folder.

### 6. Read the insights

The business findings from the analysis are documented in:

[View Detailed Insights](insights/insights.md)


# What I Learned

This project helped me understand how SQL can be used beyond writing individual queries.

I practiced starting with a raw dataset, exploring its structure, cleaning the data, calculating business metrics, finding patterns, and then turning those results into business insights.

The most useful part for me was learning how techniques such as CTEs, window functions, ranking, and year-over-year calculations can be combined to answer more realistic business questions.

---

## Author

**Pranav Kularkar**

Electronics Engineering Student | Aspiring Data Analyst

Skills: **SQL • PostgreSQL • Python • Power BI • Excel**
