/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/


###########################################################
-- Gender distribution
SELECT 
    Gender, COUNT(gender) AS D_gendr
FROM
    shoppingtrends
GROUP BY gender; 

###########################################################
-- Gender distribution by purhcase
SELECT 
    gender, SUM(`purchase amount (usd)`) AS 'TotalPurchase($)'
FROM
    shoppingtrends
    
GROUP BY gender;



#################################################################
-- Purchase items breakdown to both genders
(SELECT 
    `item purchased`, COUNT(`item purchased`) AS No_ItemPurchased,gender
FROM
    shoppingtrends
    where gender = "male" 
GROUP BY `item purchased`,gender
ORDER BY `item purchased` ) 

union all

(SELECT 
    `item purchased`, COUNT(`item purchased`) AS No_ItemPurchased,gender
FROM
    shoppingtrends
    where gender = "female" 
GROUP BY `item purchased`,gender
ORDER BY `item purchased` ) ;




