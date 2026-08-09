# E-commerce Sales Analysis — Insights

## Project Overview

This project analyzes an e-commerce sales dataset using PostgreSQL to understand sales performance, customer behavior, product performance, regional trends, profitability, and operational factors.

The project begins with data cleaning and exploration, followed by progressively deeper business analysis using SQL.

---

# Module 1: Sales Performance

## Objective

The goal of this stage was to understand the overall performance of the business before analyzing individual products, customers, or regions.

## Key Findings

- Total Sales: **12,642,905**
- Total Profit: **1,467,456**
- Total Orders: **25,035**
- Average Sales per Order: **505.01**
- Average Profit per Order: **58.62**
- Highest individual sale: **22,638**
- Lowest individual sale: **0**

## Business Interpretation

The company generated more than $12.6 million in sales during the period covered by the dataset, with approximately $1.47 million in total profit.

The business handled more than 25,000 orders, showing a significant volume of activity across the four-year period.

However, total sales alone do not tell the complete story. A business can generate high revenue while still having profitability problems in certain products, customers, or regions.

This is why the later stages of the analysis focus on product performance, customer profitability, regional performance, and other factors that can explain where sales and profit are coming from.

## Key Takeaway

The overall business is generating substantial sales and positive profit, but the company-wide numbers are only the starting point. The next step is to understand which parts of the business are actually driving this performance.

---

# Module 2: Product Analysis

## Objective

After looking at the overall sales performance, the next step was to understand which categories and individual products were contributing to sales and profit.

The analysis compared sales and profit across categories, identified top-performing products, and looked at products that were generating losses.

## Key Findings

- Technology generated the highest sales at **4,744,691**, followed by Furniture at **4,110,884** and Office Supplies at **3,787,330**.
- Technology also generated the highest profit at **663,780.25**.
- Office Supplies generated **518,473.66** in profit, while Furniture generated **285,203.25** despite having the second-highest sales.
- The top-selling individual product was **Canon imageCLASS 2200 Advanced Copier**, with total sales of **61,600**.
- The analysis identified **3,031 loss-making products**.
- The largest product-level loss came from **Cubify CubeX 3D Printer Double Head Print**, with a total loss of approximately **8,879.97**.
- The highest-quantity product was **Binney & Smith Sketch Pad, Blue**, with **97 units sold**.

## Business Interpretation

Technology is currently the strongest category in the dataset because it leads both sales and profit. This means the category is not simply generating high revenue; it is also contributing strongly to profitability.

Furniture presents a different picture. Although it generated the second-highest sales among the three categories, its profit was considerably lower than Technology and Office Supplies.

This shows why looking only at sales can be misleading when evaluating category performance.

The product-level analysis also highlights an area that needs further investigation. A significant number of products are loss-making. These losses could be related to discounts, shipping costs, product pricing, or regional differences.

Loss-making products should not automatically be removed from the product range. Some products may still be strategically important or profitable in particular situations.

## Key Takeaway

Technology is the strongest overall category, while Furniture needs closer attention because its sales contribution is much stronger than its profit contribution. Product-level losses also provide useful areas for further investigation.

---

# Module 3: Customer Analysis

## Objective

The customer analysis was carried out to understand which customers contribute the most to sales and profit, how frequently customers place orders, and whether customers generating high sales are also profitable.

## Key Findings

- The highest-selling customer generated **25,042** in total sales.
- **Tamara Chand** was the most profitable customer, generating approximately **8,981.32** in total profit.
- **Dave Kipp** placed the highest number of orders, with **18 orders**.
- The **Consumer** segment generated the highest sales at **6,508,141**, followed by Corporate at **3,824,808** and Home Office at **2,309,956**.
- Consumer customers also generated the highest total profit at approximately **749,240.70**.
- Average sales per customer were approximately **2,594.48**.
- The analysis identified **1,058 customers with an overall negative profit**.
- **Sean Miller** generated **25,042** in sales but had an overall loss of approximately **1,980.74**.

## Business Interpretation

The customer analysis shows that the Consumer segment is the largest contributor to both sales and profit. This makes it an important customer group for the business.

The results also show that sales alone are not enough to judge customer value.

Sean Miller generated the highest sales in the analysis but was still unprofitable overall. On the other hand, Tamara Chand generated the highest profit without having the highest sales.

This difference highlights the importance of looking at profitability alongside revenue when evaluating customers.

The analysis also identified more than 1,000 customers with an overall negative profit. This raises questions about what is driving these losses.

Discounts, product choices, shipping costs, and regional differences could all play a role.

## Key Takeaway

The Consumer segment is the strongest customer segment, but customer sales and customer profitability do not always move together. High-revenue customers should therefore be evaluated based on profit as well as sales.

---

# Module 4: Regional Analysis

## Objective

The regional analysis was performed to understand how sales and profit vary across different regions, markets, and states.

The aim was to identify the strongest-performing areas as well as locations where the business may need further attention.

## Key Findings

- The **Central** region generated the highest sales at **2,822,399** and also recorded the highest regional profit of **311,404.80**.
- **APAC** was the strongest market, generating **3,585,833** in sales and approximately **435,999.72** in profit.
- At the state level, **England** ranked first in both sales (**485,166**) and profit (**99,907.81**).
- **Central Asia** had the highest average sales per record at approximately **367.60**.
- The analysis identified **290 states with an overall negative profit**.
- **Istanbul** recorded the largest overall loss at approximately **29,033.71**, followed by **Lagos** at **25,922.52** and **Texas** at **25,729.39**.

## Business Interpretation

The regional analysis shows that performance varies considerably across different parts of the business.

Central is the strongest region in terms of both sales and profit, while APAC leads the markets in both measures.

At the state level, England leads both sales and profit, but the analysis also identifies many states with negative overall profit.

The loss-making state analysis is particularly useful because it highlights locations that may require further investigation.

However, the SQL results alone do not explain why these locations are unprofitable. Factors such as discounts, product mix, shipping costs, and sales volume need to be considered before making business recommendations.

## Key Takeaway

Geographical performance is not evenly distributed across the business. Strong markets such as APAC and regions such as Central contribute significantly to overall performance, while loss-making locations provide opportunities for deeper investigation.

---

# Module 5: Time Analysis

## Objective

The time-based analysis was used to understand how sales, profit, and order volume changed over the four-year period.

The analysis also looked at monthly performance and year-over-year growth to identify trends and possible seasonal patterns.

## Key Findings

- Annual sales increased from **2,259,511 in 2011** to **4,300,041 in 2014**.
- Annual profit increased from **248,940.60 in 2011** to **504,165.70 in 2014**.
- The number of orders increased from **4,440 in 2011** to **8,531 in 2014**.
- Sales growth was **18.50% in 2012**, **27.20% in 2013**, and approximately **26.25% in 2014**.
- Profit growth was **23.49% in 2012**, **32.37% in 2013**, and **23.89% in 2014**.
- December generated the highest monthly sales at **1,580,816**.
- November generated the highest monthly profit at **175,449.75**.
- December also had the highest number of orders, with **3,166 orders**.

## Business Interpretation

The time analysis shows consistent improvement in the business over the four-year period.

Sales, profit, and order volume all increased from 2011 through 2014. This indicates that revenue growth was accompanied by growth in profitability and customer activity.

The strongest year for sales growth was 2013, when sales increased by approximately 27.20% compared with the previous year.

Profit also had its strongest growth in 2013, increasing by 32.37%.

The monthly analysis reveals an interesting difference between sales and profit.

December generated the highest sales and the highest number of orders, while November generated the highest profit.

This means that the month with the greatest sales volume was not necessarily the most profitable month.

These patterns suggest that seasonality may have an effect on the business. Further analysis of discounts, product categories, and monthly profitability could help explain why sales and profit peak in different months.

## Key Takeaway

The business shows strong year-over-year growth, but monthly performance suggests that sales volume and profitability do not always peak at the same time. This could be useful when planning promotions, inventory, and pricing strategies.

---

# Module 6: Profitability & Contribution Analysis

## Objective

The profitability analysis was performed to understand how efficiently sales are converted into profit and to identify the categories, markets, and products that contribute most to the company's profitability.

## Key Findings

- The overall profit margin of the business was **11.61%**.
- **Technology** had the highest category profit margin at **13.99%**, followed closely by Office Supplies at **13.69%**.
- **Furniture** had a much lower profit margin of **6.94%**, despite contributing **32.52% of total sales**.
- **Canada** recorded the highest market profit margin at **26.62%**, although its total sales were relatively small compared with the larger markets.
- Technology contributed **37.53% of total sales** but generated **45.23% of total profit**.
- Office Supplies contributed **29.96% of sales** and **35.33% of profit**.
- Furniture contributed **32.52% of sales** but only **19.44% of total profit**.
- At the sub-category level, **Paper** had the highest profit margin at **24.23%**.
- **Tables** had a negative profit margin of **-8.47%**, indicating that the sub-category generated an overall loss.
- Several products generated relatively high sales while having profit margins below the overall business margin of **11.61%**.
- The **Lexmark MX611dhe Monochrome Laser Printer** generated **16,830** in sales but recorded a loss of approximately **4,589.97**, resulting in a profit margin of **-27.27%**.

## Business Interpretation

The profitability analysis shows that sales volume alone does not provide a complete picture of business performance.

Technology generated the largest share of sales and an even larger share of total profit, indicating that the category is performing efficiently compared with the overall business.

Furniture presents a different situation. It contributed more than 32% of total sales but generated less than 20% of total profit.

Its 6.94% profit margin is also significantly below the overall business margin of 11.61%.

This suggests that Furniture may require closer investigation into pricing, discounts, shipping costs, or product-level profitability.

The market analysis also shows why percentage metrics should be considered together with sales volume.

Canada had the highest profit margin at 26.62%, but its total sales were only 66,932. Therefore, a high margin does not necessarily mean that a market is the largest contributor to overall profit.

At the product level, several high-sales products were found to have low or negative profit margins.

## Key Takeaway

Improving profitability should not simply focus on increasing sales. The company should also understand which categories, products, and markets convert sales into profit efficiently.

---

# Module 7: Advanced SQL Analysis

## Objective

The advanced analysis was used to move beyond simple aggregations and apply SQL techniques such as window functions, ranking, running totals, CTEs, and comparisons against averages.

The goal was to answer more detailed business questions using the same sales data.

## Key Findings

- The **Canon imageCLASS 2200 Advanced Copier** ranked first overall by product sales, with **61,600** in sales.
- The top-selling products were not the same across all categories, so category-level ranking provided a more useful comparison than looking only at the overall product ranking.
- The top customers varied across the Consumer, Corporate, and Home Office segments, showing that customer performance differs by segment.
- The running total of sales increased from **2,259,511 in 2011** to **12,642,905 by the end of 2014**.
- The running total of profit increased continuously as the yearly profits accumulated.
- December ranked first for monthly sales, while November ranked second.
- Sales increased every year when compared with the previous year, with the largest absolute increase occurring between **2013 and 2014**.
- Comparing individual customer sales with average customer sales helped identify customers whose revenue contribution was significantly above the typical customer level.

## Business Interpretation

The advanced analysis provided a more detailed view of the business by comparing products and customers within their respective groups instead of treating every record independently.

The ranking analysis showed that the strongest-selling products differ across categories.

This type of comparison can help the business understand which products are leading within each category and where individual products stand relative to their competitors.

The running-total analysis provides another useful view of cumulative business performance.

By the end of 2014, the business had accumulated more than $12.6 million in sales across the period analyzed.

The customer comparison analysis can be useful for identifying high-value customers. Customers whose sales are substantially above the average may represent important accounts that the business should understand and retain.

## SQL Techniques Used

- Common Table Expressions (CTEs)
- Window Functions
- `RANK()`
- `ROW_NUMBER()`
- `LAG()`
- Running totals
- `PARTITION BY`
- Aggregate functions
- Comparisons with averages

## Key Takeaway

Window functions and CTEs allowed the analysis to move beyond basic reporting and answer more detailed questions about rankings, growth, customer performance, and cumulative business results.

---

# Module 8: Business & Operational Analysis

## Objective

In this module, I looked at discounts, shipping methods, order priority, and shipping costs to understand how operational decisions are affecting sales and profitability.

---

## 1. Discount and Profitability

The discount analysis shows that profit margins generally decline as discount levels increase, although there are a few exceptions at individual discount levels.

At 0% discount, the dataset generated approximately **$6.99M** in sales and **$1.77M** in profit, giving a profit margin of about **25.32%**.

A 10% discount still produced a margin of around **16.40%**, while a 20% discount produced a margin of approximately **9.78%**.

At higher discount levels, profitability became much weaker. For example:

- 20.2% discount → **-3.67%** margin
- 30% discount → **-10.42%** margin
- 50% discount → **-48.94%** margin

There were some exceptions, such as the 25% discount level, which still produced a small positive margin.

### Business Takeaway

Discounts can help generate sales, but excessive discounts can quickly reduce or eliminate profit.

Discount levels should therefore be evaluated together with profit margin rather than sales alone.

---

## 2. Profit Margin by Ship Mode

Standard Class had the highest profit margin at approximately **11.75%**.

The other shipping methods were relatively close:

- Same Day: **11.42%**
- Second Class: **11.40%**
- First Class: **11.37%**

The difference between the highest and lowest margin is small.

### Business Takeaway

Shipping mode does not appear to be a major driver of overall profit margin in this dataset.

Standard Class performs slightly better, but the difference is not large enough by itself to suggest a major change in shipping strategy.

---

## 3. Sales and Orders by Ship Mode

Standard Class was clearly the dominant shipping method.

It generated approximately **$7.58M** in sales from **15,154 orders**.

Second Class generated approximately **$2.57M** from **5,119 orders**.

First Class generated approximately **$1.83M** from **3,821 orders**.

Same Day had the lowest sales at approximately **$667K** from **1,347 orders**.

### Business Takeaway

Most of the business is handled through Standard Class.

This makes Standard Class an important area for operational efficiency because even a small improvement can affect a large portion of total orders.

---

## 4. Profit by Ship Mode

Standard Class generated the highest total profit at approximately **$890.6K**.

The remaining shipping methods generated:

- Second Class: approximately **$292.6K**
- First Class: approximately **$208.1K**
- Same Day: approximately **$76.2K**

The profit ranking is consistent with the sales ranking.

### Business Takeaway

Standard Class is the strongest shipping method in terms of overall contribution because it combines the highest sales volume with the highest total profit.

---

## 5. Sales and Orders by Order Priority

Medium-priority orders generated the highest sales at approximately **$7.28M** across **14,484 orders**.

High-priority orders generated approximately **$3.81M** from **7,767 orders**.

Critical orders generated approximately **$986K**, while Low-priority orders generated approximately **$568K**.

This shows that Medium and High priority orders account for most of the business activity.

### Business Takeaway

Operational planning should focus heavily on Medium and High priority orders because they represent the largest share of sales and order volume.

---

## 6. Profit by Order Priority

Medium-priority orders also generated the highest total profit at approximately **$864.2K**.

High-priority orders generated approximately **$420.4K**, followed by Critical and Low priority orders.

The profit ranking follows a similar pattern to the sales ranking.

### Business Takeaway

Medium-priority orders are the biggest contributor to both sales and profit. Maintaining efficient processing for this segment could have a meaningful impact on overall performance.

---

## 7. Shipping Cost vs Average Profit

There is a noticeable difference in average shipping costs between shipping methods.

Same Day had the highest average shipping cost at approximately **$42.94**, followed by First Class at **$41.05**.

Second Class averaged approximately **$30.47**, while Standard Class had the lowest average shipping cost at approximately **$19.97**.

Despite this difference in shipping cost, average profit was fairly similar:

- Same Day: **$28.20**
- First Class: **$27.73**
- Second Class: **$28.38**
- Standard Class: **$28.94**

Standard Class therefore had both the lowest average shipping cost and the highest average profit among the four methods.

### Business Takeaway

Standard Class appears to be the most cost-efficient shipping option in this dataset.

Premium shipping methods have substantially higher average shipping costs without producing a significantly higher average profit.

---

## 8. High-Discount Loss-Making Orders

I also identified orders where the discount was at least **20%** and the resulting profit was negative.

The results showed several examples of high-discount orders producing significant losses.

Some of the largest losses included:

- **Cubify CubeX 3D Printer Double Head Print** — approximately **-$6,600** profit at 70% discount
- **Motorola Smart Phone, Cordless** — approximately **-$4,088** profit at 60% discount
- **Cubify CubeX 3D Printer Triple Head Print** — approximately **-$3,840** profit at 50% discount
- **GBC DocuBind 3400 Electric Binding System** — approximately **-$3,701** profit at 80% discount
- **Lexmark MX611dhe Monochrome Laser Printer** — approximately **-$3,400** profit at 70% discount

These examples show how very high discounts can create substantial losses on individual orders.

### Business Takeaway

Products receiving very high discounts should be reviewed before applying similar discounts in the future.

The business could consider setting discount limits based on product profitability so that heavily discounted products do not create unnecessary losses.

---

# Overall Business Takeaways

1. **Technology is the strongest overall category**, leading both sales and profit.

2. **Furniture needs closer attention** because it contributes a large share of sales but a much smaller share of profit.

3. **Consumer is the strongest customer segment**, contributing the highest sales and profit.

4. **Customer sales and customer profitability do not always move together.** High-revenue customers can still generate losses.

5. **Central is the strongest region**, while APAC is the strongest market based on both sales and profit.

6. **The business showed strong year-over-year growth** from 2011 through 2014, with sales, profit, and order volume all increasing.

7. **December generated the highest sales and order volume**, while November generated the highest monthly profit.

8. **Technology contributes a larger share of profit than its share of sales**, indicating stronger profitability compared with the overall business.

9. **Standard Class is the strongest shipping option overall**, with the highest sales, highest total profit, lowest average shipping cost, and slightly highest profit margin.

10. **Medium-priority orders are the largest business segment**, contributing the most sales and profit.

11. **Higher discounts generally reduce profit margins**, and several heavily discounted orders resulted in significant losses.

12. **The main business opportunity is to balance sales growth with profitability.** Increasing sales through discounts or premium services is useful only when the additional revenue still produces acceptable profit.