/** Author :     	Godwin Yusuf
Date: 	     	22:55 17/11/2023
Title: 	     	Resturant Sales Report
Tool: 	     	SQL on Github 
Project Source:https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-datas **/

SELECT 
    distinct(`Review Rating`),
    CASE
        WHEN `review rating` <= 2.5 THEN 'Bad'
        WHEN
            `review rating` > 2.5
                AND `review rating` <= 3.0
        THEN
            ' Poor'
        WHEN
            `review rating` > 3.0
                AND `review rating` <= 3.5
        THEN
            ' Average'
        WHEN
            `review rating` > 3.5
                AND `review rating` <= 4.0
        THEN
            ' Good'
		WHEN
            `review rating` > 4.0
                AND `review rating` <= 4.5
        THEN
            ' Excellent'
        ELSE 'Great'
    END AS `New Review`
FROM
    shoppingtrends
    order by `Review Rating` desc;
    
 ######################################################   

-- Using the case statement to determine the number of subscribers and non-subscribers.


SELECT distinct `Subscription Status`,
    sum( case
        WHEN `subscription status` = 'no' THEN 1 
        else 1
    END) as  subscription_numbers
FROM
    shoppingtrends
    group by 1;

    
    
    