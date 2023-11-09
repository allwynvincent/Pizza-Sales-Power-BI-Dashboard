select * from pizza_sales

SELECT pizza_size,CAST( SUM(total_price) AS decimal(10,2) ) AS Total_Price, CAST(SUM(total_price)*100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
from pizza_sales
GROUP BY pizza_size
ORDER BY PCT DESC

SELECT pizza_size,CAST( SUM(total_price) AS decimal(10,2) ) AS Total_Price, CAST(SUM(total_price)*100 / 
(SELECT SUM(total_price) from pizza_sales WHERE DATEPART(QUARTER, order_date)=1) AS DECIMAL(10,2)) AS PCT
from pizza_sales
WHERE DATEPART(QUARTER, order_date)=1
GROUP BY pizza_size
ORDER BY PCT DESC



select * from pizza_sales



select TOP 5 pizza_name, sum(total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue DESC 


select TOP 5 pizza_name, sum(total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue  

select TOP 5 pizza_name, sum(quantity) AS Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc

select TOP 5 pizza_name, COUNT (DISTINCT order_id)  AS Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders desc

