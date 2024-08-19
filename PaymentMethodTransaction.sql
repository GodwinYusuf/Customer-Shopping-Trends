 /** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/
 
 
 -- Using the `union` to append two queried table togther to show the gender transaction of all payment method.
 
 
(SELECT 
    `payment method` AS PaymentMethod, COUNT(`payment method`) AS payment_frequency, gender,
    SUM(`purchase amount (USD)`) AS `TotalTransaction($)`
FROM
    shoppingtrends
  where gender = "male"  
GROUP BY PaymentMethod , gender
ORDER BY paymentmethod DESC)
union 
(SELECT 
    `payment method` AS PaymentMethod, COUNT(`payment method`) AS payment_frequency, gender,
    SUM(`purchase amount (USD)`) AS `TotalTransaction($)`
FROM
    shoppingtrends
  where gender = "female"  
GROUP BY PaymentMethod , gender
ORDER BY paymentmethod DESC);

################################################################### 

SELECT * FROM  shoppingtrends;

 --
 

