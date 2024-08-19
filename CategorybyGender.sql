/** 
Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source: https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-dataset
**/


-- Category distribution shows the total items both gender acquired. 

SELECT 
   Gender, Category, COUNT(category)AS SalesCount 
FROM
    shoppingtrends
GROUP BY category, gender
order by gender desc
;