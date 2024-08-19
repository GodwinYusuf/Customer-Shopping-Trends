/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/

-- Age group spending power.

SELECT 
    CASE
        
        WHEN
           age >= 18
                AND age <= 28
        THEN
            '18-28'
        WHEN
            age > 28
                AND age <= 38
        THEN
            '28-38'
        WHEN
            age > 38
                AND age <= 48
        THEN
            '38-48'
       WHEN
            age > 48
                AND age <= 58
        THEN
            '58-68'
		ELSE '68-78'
    END AS `AgeGroup`,sum(`purchase amount (USD)`) as `TotalAmount($)`
FROM
    shoppingtrends
   group by `AgeGroup`  
   order by `AgeGroup` 
   
 ;

