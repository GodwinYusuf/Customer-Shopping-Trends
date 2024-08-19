/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/

-- Total item purchase through the four seasons.

SELECT 
    season, SUM(`Purchase Amount (USD)`) AS `Total_Purchase_in_season($)`
FROM
    shoppingtrends
GROUP BY season
ORDER BY `Total_Purchase_in_season($)`  DESC;

#####################################################################

