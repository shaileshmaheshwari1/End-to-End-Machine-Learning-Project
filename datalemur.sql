/*CVS Health is trying to better understand its pharmacy sales, and how well different products are selling. 
Each drug can only be produced by one manufacturer.
Que. 1:
Write a query to find out which manufacturer is associated with the drugs that were not profitable and how much money CVS lost on these drugs. */

SELECT 
  manufacturer, 
  count(drug) as drug_count, 
  abs(
    sum(total_sales - cogs)
  ) as total_loss 
FROM 
  pharmacy_sales 
where 
  total_sales - cogs <-1 
group by 
  manufacturer 
order by 
  total_loss desc 
/*
Que : 2
Write a query to find the top 3 most profitable drugs sold, and how much profit they made. 
Assume that there are no ties in the profits. Display the result from the highest to the lowest total profit.*/
Select 
  drug, 
  (total_sales - cogs) as total_profit 
from 
  pharmacy_sales 
order by 
  total_profit desc 
limit 
  3
