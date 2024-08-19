/**
 Author :     Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas
 **/

use balaji_fast_food;
  
SELECT 
    `item purchased`, SUM(`Purchase Amount (USD)`) as TotalAmount, 
    Rank() over (order by SUM(`Purchase Amount (USD)`)   DESC) AS Top_10
FROM
    shoppingtrends
 GROUP BY `item purchased`
 Limit 10; 
 
 










