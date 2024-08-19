/** 
Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas
**/

-- The total number of item sold by Category
SELECT 
    Category, COUNT(category) AS Salescount
FROM
    shoppingtrends
GROUP BY category 
ORDER BY count(category) desc;

####################################################


-- item purchase breakdown
SELECT 
    `item purchased`, COUNT(`item purchased`) AS No_ItemPurchased, sum(`purchase amount (USD)`) as `TotalCostPurchased($)`
FROM
    shoppingtrends
GROUP BY `item purchased`
ORDER BY count(`item purchased`) desc;