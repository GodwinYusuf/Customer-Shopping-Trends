 /** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/

SELECT 
    category, SUM(`Purchase Amount (USD)`) AS 'TotalAmount($)'
FROM
    shoppingtrends
GROUP BY category