/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source: https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/



-- A Stored procedure to call out the shipping type for any particular city selected

drop procedure if exists shippinginfo;

DELIMITER $$

CREATE PROCEDURE Shippinginfo(in L_location text)

BEGIN

With celtic as (SELECT 
    location, `shipping type`, COUNT(`shipping type`) AS shipped
FROM
    shoppingtrends
    where location  = L_location
GROUP BY 1 , 2) 

 select location, `shipping type`, shipped
 from celtic;

END$$

DELIMITER ;

  


-- To call the procedure see code below, Use, "cash", "online" or "others" to see total sale and item_type
 -- call Shippinginfo("kentucky");




    