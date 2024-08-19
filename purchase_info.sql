/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/


-- A Procedure to show customer purchasing detail by using customer_id 

DROP PROCEDURE if exists Purchase_info;

Delimiter $$
create procedure Purchase_info(in f_customer_id int)

begin

SELECT 
     `ï»¿Customer ID`
	 category,
    `item purchased`,
    `Review Rating`,
    `payment method`,
    `purchase amount (USD)`
   
FROM
    shoppingtrends
WHERE
    `ï»¿Customer ID` = f_customer_id;
 
 end $$
 
 Delimiter ;
 
 
 -- use the line of code below to call the procedure by using a customer_id from 1 to 3900
 
 call purchase_info(419);


select * from shoppingtrends;