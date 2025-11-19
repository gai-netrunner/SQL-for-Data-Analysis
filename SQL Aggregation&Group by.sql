USE ecommerce;

SELECT *
FROM salesdata;

-- count total orders
SELECT COUNT("Order ID") AS "Total Orders"
FROM salesdata;

-- unique customers
SELECT COUNT(DISTINCT `Customer ID`) AS "Unique Customers"
FROM salesdata;

-- total sales revenue
SELECT SUM(Sales) AS "Total Revenue"
FROM salesdata;

-- total profit
SELECT SUM(Profit) AS "Total Profit"
FROM salesdata;

-- the average sales amount per order
SELECT AVG(Sales) AS "Avg Sale per Order"
FROM salesdata;

-- smallest sale recorded
SELECT MIN(Sales) AS "Lowest Sale"
FROM salesdata;

-- largest sale we recorded
SELECT MAX(Sales) AS "Largest_Sales"
FROM salesdata;


-- GROUP BY - THE SEGEMENTATION

-- sales by region
SELECT Region, 
  SUM(Sales) AS "Total Sales"
FROM salesdata
GROUP BY Region
ORDER BY SUM(Sales) DESC;

-- Which product categories are most profitable?
SELECT Category,
  SUM(Profit) AS "Total Profit"
FROM salesdata
GROUP BY Category
ORDER BY  "Total Profit" DESC;
  
-- How many orders come from each customer type?
SELECT Segment,
  COUNT(*) AS Order_count
FROM salesdata
GROUP BY Segment
ORDER BY Order_count DESC;

SELECT Segment,
  COUNT(*) AS Order_count,
  AVG(Sales) AS Avg_order_value
FROM salesdata
GROUP BY Segment;


-- What's the sales performance by region AND category?
SELECT Region, Category,
  SUM(Sales) AS "Total Sales"
FROM salesdata
GROUP BY Region, Category
ORDER BY Region, SUM(Sales);


-- HAVING: FILTERING AFTER AGGREGATION

-- Which categories have total profit above $50,000?
SELECT Category,
  SUM(Profit) AS Total_Profit
FROM salesdata
GROUP BY Category
HAVING Total_Profit>50000
ORDER BY Total_Profit DESC;

-- Which regions have fewer than 500 orders?
SELECT Region,
  COUNT(*) AS Order_count
FROM salesdata
GROUP BY Region
HAVING Order_count <500
ORDER BY Order_count DESC;

-- Are any categories losing money overall?
SELECT Category,
  SUM(Profit) AS Total_Profit
FROM salesdata
GROUP BY Category
HAVING Total_Profit <0
ORDER BY Total_Profit DESC;

-- Which customer segments have an average order value above $200?
SELECT Segment,
  AVG(Sales) AS Avg_order_value
FROM salesdata
GROUP BY Segment
HAVING Avg_order_value >200
ORDER BY Avg_order_value DESC;

-- Which product sub-categories in the West region are driving the most profit, and which ones should we be concerned about?"
SELECT `Sub-Category`,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  AVG(Profit) AS Avg_profit_per_order
FROM salesdata
WHERE Region= "West"
GROUP BY `Sub-Category`
HAVING Total_Profit > 1000
ORDER BY Total_Profit DESC;
