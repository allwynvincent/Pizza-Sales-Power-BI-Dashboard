

SELECT SUM(total_price) AS Total_Revenue from pizza_sales


SELECT * FROM pizza_sales

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value FROM pizza_sales


SELECT SUM(quantity) as Total_Pizza_Sold from pizza_sales

SELECT COUNT(DISTINCT order_id) AS Total_Orders from pizza_sales

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizza_Per_Order from pizza_sales



SELECT DATENAME(DW, order_date) AS ORDER_DAY, COUNT(DISTINCT order_id) AS NUM_OF_ORDERS
from pizza_sales
GROUP BY DATENAME(DW, order_date)



SELECT DATENAME(MONTH, order_date) AS ORDER_MONTH, COUNT(DISTINCT order_id) AS NUM_OF_ORDERS
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)



SELECT pizza_category, SUM(total_price)*100 / (SELECT SUM(total_price) from pizza_sales) AS PCT
from pizza_sales
GROUP BY pizza_category




