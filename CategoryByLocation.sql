/** 
Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas
**/

select * from shoppingtrends;

#####################################################
-- The distribution of total item sold by location in the dataset.

SELECT 
    Location, COUNT(category) AS ItemSold
FROM
   shoppingtrends
GROUP BY location
ORDER BY 1 ;


##############################################################
-- Amount spent on items on each location.
SELECT 
    Location, SUM(`Purchase Amount (USD)`) AS 'TotalAmount($)'
FROM
    shoppingtrends
GROUP BY Location
ORDER BY Location
;




