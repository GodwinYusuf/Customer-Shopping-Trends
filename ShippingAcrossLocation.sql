/** Author :    Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/

-- Location shipping type break down

SELECT 
   `shipping type`, COUNT(`shipping type`) AS count_shipped, location
FROM
    shoppingtrends
GROUP BY location , `shipping type`
ORDER BY location, `Shipping Type` DESC;


################################################################

-- Season shipping type breakdown.

SELECT 
    season, `shipping type`, COUNT(`shipping type`) AS City_shipped
  from  shoppingtrends
GROUP BY `shipping type` , season
ORDER BY City_shipped, season DESC;


###########################################################################
-- total item shipped all season.

SELECT 
    season, count(`shipping type`) AS No_shipment
FROM
    shoppingtrends
GROUP BY season
order by count(`shipping type`) desc;

##########################################################################

-- Break down of total items shipped through every season
SELECT 
    season, `shipping type`, COUNT(`shipping type`) AS C_shipped
  from  shoppingtrends
GROUP BY `shipping type` , season
ORDER BY season;

